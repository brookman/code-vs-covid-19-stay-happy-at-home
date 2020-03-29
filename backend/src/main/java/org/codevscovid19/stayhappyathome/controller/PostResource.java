package org.codevscovid19.stayhappyathome.controller;

import org.codevscovid19.stayhappyathome.dto.PostDto;
import org.codevscovid19.stayhappyathome.dto.PostReactionDto;
import org.codevscovid19.stayhappyathome.dto.ReactionSummaryDto;
import org.codevscovid19.stayhappyathome.entity.Post;
import org.codevscovid19.stayhappyathome.entity.PostReaction;
import org.codevscovid19.stayhappyathome.entity.TargetFeeling;
import org.codevscovid19.stayhappyathome.entity.User;
import org.codevscovid19.stayhappyathome.login.HansNotFoundException;
import org.codevscovid19.stayhappyathome.repository.PostReactionRepository;
import org.codevscovid19.stayhappyathome.repository.PostRepository;
import org.codevscovid19.stayhappyathome.repository.TargetFeelingRepository;
import org.codevscovid19.stayhappyathome.repository.UserRepository;
import org.codevscovid19.stayhappyathome.service.PhotoService;
import org.codevscovid19.stayhappyathome.service.PostService;
import org.codevscovid19.stayhappyathome.service.ReactionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.net.URL;
import java.util.Optional;
import java.util.Set;

import static org.codevscovid19.stayhappyathome.login.Contants.USER_ID_HEADER_NAME;

@RestController
@RequestMapping("/api/v1/post")
public class PostResource {

  private final PostRepository postRepository;
  private final UserRepository userRepository;
  private final PostService postService;
  private final PostReactionRepository postReactionRepository;
  private final TargetFeelingRepository targetFeelingRepository;
  private final PhotoService photoService;
  private final ReactionService reactionService;

  @Autowired
  public PostResource(PostRepository postRepository, PostReactionRepository postReactionRepository, UserRepository userRepository,
                      PostService postService, PhotoService photoService, TargetFeelingRepository targetFeelingRepository,
                      ReactionService reactionService) {
    this.postRepository = postRepository;
    this.userRepository = userRepository;
    this.postService = postService;
    this.postReactionRepository = postReactionRepository;
    this.targetFeelingRepository = targetFeelingRepository;
    this.photoService = photoService;
    this.reactionService = reactionService;
  }

  @GetMapping(path = "", produces = "application/json")
  public ResponseEntity<Set<Post>> getPosts(@RequestHeader(name = USER_ID_HEADER_NAME) String userId) {
    User user = userRepository.findById(userId).orElseThrow(() -> new HansNotFoundException("User", userId));

    return ResponseEntity.ok(postService.getPostsForUser(user));
  }

  @PostMapping(path = "", produces = "application/json", consumes = "application/json")
  public ResponseEntity<Post> createPost(@RequestHeader(name = USER_ID_HEADER_NAME) String userId,
                                         @RequestBody PostDto postDto) throws IOException {
    User user = userRepository.findById(userId).orElseThrow(() -> new HansNotFoundException("User", userId));
    Post post = new Post(postDto.getTitle(), postDto.getDescription(), postDto.getLink(), user, postDto.getRequiredTime());

    postDto.getTargetFeelings().forEach(targetFeeling -> targetFeelingRepository.save(new TargetFeeling(post, targetFeeling.getEmotion())));

    Post newPost = postRepository.save(post);

    URL photoUrl = photoService.writeBytesToStorage("post-" + newPost.getId(), postDto.getPicture(), postDto.getPhotoContentType());
    newPost.updatePhoto(photoUrl, postDto.getPhotoContentType());
    postRepository.save(newPost);
    return ResponseEntity.ok(newPost);
  }

  @GetMapping(path = "/{id}", produces = "application/json")
  public ResponseEntity<Post> getPost(@PathVariable("id") Long id) {
    Optional<Post> post = postRepository.findById(id);
    return post.map(ResponseEntity::ok)
      .orElseGet(() -> ResponseEntity.status(HttpStatus.NOT_FOUND).build());
  }

  @PostMapping(path = "/{postId}/reaction", produces = "application/json", consumes = "application/json")
  public ResponseEntity<PostReaction> createPostReaction(@RequestHeader(name = USER_ID_HEADER_NAME) String userId,
                                                         @PathVariable("postId") Long postId,
                                                         @RequestBody PostReactionDto reactionDto) {
    Post post = postRepository.findById(postId).orElseThrow(() -> new HansNotFoundException("Post", postId));
    User user = userRepository.findById(userId).orElseThrow(() -> new HansNotFoundException("User", userId));

    PostReaction postReaction = new PostReaction(user, reactionDto.getEmoji());
    postReaction.setPost(post);
    PostReaction newPostReaction = postReactionRepository.save(postReaction);
    post.addReaction(newPostReaction);
    postRepository.save(post);
    return ResponseEntity.ok(newPostReaction);
  }

  @GetMapping(path = "/{postId}/reactions")
  public ResponseEntity<ReactionSummaryDto> getReactionSummary(@PathVariable("postId") Long postId) {
    ReactionSummaryDto reactionSummary = reactionService.getReactionSummaryForPost(postId);
    return ResponseEntity.ok(reactionSummary);
  }

}
