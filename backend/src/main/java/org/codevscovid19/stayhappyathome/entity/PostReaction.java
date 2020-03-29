package org.codevscovid19.stayhappyathome.entity;

import javax.persistence.*;

import java.util.Objects;

@Entity
@Table(name = "REACTIONS")
public class PostReaction {

  @Id
  @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "post_reaction_sequence_generator")
  @SequenceGenerator(name = "post_reaction_sequence_generator", sequenceName = "post_reaction_id_sequence")
  private Long id;

  @ManyToOne
  private User user;

  private PostReaction() {
    // for Jackson
  }

  public PostReaction(User user) {
    this.user = user;
  }

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public User getUser() {
    return user;
  }

  public void setUser(User user) {
    this.user = user;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    PostReaction that = (PostReaction) o;
    return Objects.equals(id, that.id) &&
      Objects.equals(user, that.user);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, user);
  }
}
