package org.codevscovid19.stayhappyathome.service;

import org.codevscovid19.stayhappyathome.entity.Post;
import org.springframework.context.annotation.Bean;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class PostService {
    public ResponseEntity<List<Post>> getPostsForUser() {
        return null;
    }
}
