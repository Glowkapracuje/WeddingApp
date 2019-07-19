package pl.coderslab.entity;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.List;

@Entity
public class Organizer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @Size(min = 3,max = 60)
    private String organizerName;

    @NotBlank
    @Email
    @Column(unique = true)
    @Size(min = 3,max = 60)
    private String email;

    @NotBlank
    @Size(min = 3,max = 60)
    private String password;

    private String role;

    // relations

    @OneToMany(mappedBy = "organizer")
    private List<Wedding> weddingList;

    // constr

    public Organizer(){}

//    public Organizer(String organizerName, String email, String password, String role, List<Wedding> weddingList) {
//        this.organizerName = organizerName;
//        this.email = email;
//        this.password = password;
//        this.role = role;
//        this.weddingList = weddingList;
//    }

    // gestset



    public Long getId() {
        return id;
    }

    public Organizer setId(Long id) {
        this.id = id;
        return this;
    }

    public String getOrganizerName() {
        return organizerName;
    }

    public Organizer setOrganizerName(String organizerName) {
        this.organizerName = organizerName;
        return this;
    }

    public String getEmail() {
        return email;
    }

    public Organizer setEmail(String email) {
        this.email = email;
        return this;
    }

    public String getPassword() {
        return password;
    }

    public Organizer setPassword(String password) {
        this.password = password;
        return this;
    }

    public String getRole() {
        return role;
    }

    public Organizer setRole(String role) {
        this.role = role;
        return this;
    }

    public List<Wedding> getWeddingList() {
        return weddingList;
    }

    public Organizer setWeddingList(List<Wedding> weddingList) {
        this.weddingList = weddingList;
        return this;
    }

    //


//    @Override
//    public String toString() {
//        return "Organizer{" +
//                "id=" + id +
//                ", organizerName='" + organizerName + '\'' +
//                ", email='" + email + '\'' +
//                ", password='" + password + '\'' +
//                ", role='" + role + '\'' +
//                ", weddingList=" + weddingList +
//                '}';
//    }
}
