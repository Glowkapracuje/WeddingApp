package pl.coderslab.entity;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.List;

@Entity
public class Guest {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @Size(min = 3,max = 60)
    private String guestName;

    @Email
    @NotBlank
    @Size(min = 3,max = 60)
    private String email;

    @NotBlank
    @Size(min = 3,max = 60)
    private String password;

    private String role;

    // relations

    @ManyToMany(mappedBy = "guestList")
    private List<Wedding> weddingList;

    // constr

    public Guest(){}

    // gestset




    public Long getId() {
        return id;
    }

    public Guest setId(Long id) {
        this.id = id;
        return this;
    }

    public String getGuestName() {
        return guestName;
    }

    public Guest setGuestName(String guestName) {
        this.guestName = guestName;
        return this;
    }

    public String getEmail() {
        return email;
    }

    public Guest setEmail(String email) {
        this.email = email;
        return this;
    }

    public String getPassword() {
        return password;
    }

    public Guest setPassword(String password) {
        this.password = password;
        return this;
    }

    public String getRole() {
        return role;
    }

    public Guest setRole(String role) {
        this.role = role;
        return this;
    }

    public List<Wedding> getWeddingList() {
        return weddingList;
    }

    public Guest setWeddingList(List<Wedding> weddingList) {
        this.weddingList = weddingList;
        return this;
    }
}
