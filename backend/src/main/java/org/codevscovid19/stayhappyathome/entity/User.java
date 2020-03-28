package org.codevscovid19.stayhappyathome.entity;

import javax.persistence.*;

import java.util.Arrays;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "USERS")
public class User {
  @Id
  private String id;

  @Column(name = "name")
  private String name;

  private byte[] photo;

  @OneToMany(cascade = CascadeType.ALL)
  private List<FeelingRecord> feelingRecords;

  private User() {
    // for Jackson
  }

  public User(String id, String name, byte[] photo) {
    this.id = id;
    this.name = name;
    this.photo = photo;
  }

  public String getId() {
    return id;
  }

  public String getName() {
    return name;
  }

  public List<FeelingRecord> getFeelingRecords() {
    return feelingRecords;
  }

  public byte[] getPhoto() {
    return photo;
  }

  public void addFeelings(FeelingRecord feelingRecord) {
    feelingRecords.add(feelingRecord);
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    User user = (User) o;
    return Objects.equals(id, user.id) &&
      Objects.equals(name, user.name) &&
      Arrays.equals(photo, user.photo);
  }

  @Override
  public int hashCode() {
    int result = Objects.hash(id, name);
    result = 31 * result + Arrays.hashCode(photo);
    return result;
  }

  @Override
  public String toString() {
    return "User{" +
      "id='" + id + '\'' +
      ", name='" + name + '\'' +
      ", feelingRecords=" + feelingRecords +
      '}';
  }
}
