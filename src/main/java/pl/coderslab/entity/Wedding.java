package pl.coderslab.entity;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;
import java.util.List;

@Entity
public class Wedding {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @Size(min = 3,max = 60)
    private String music;

    @NotBlank
    @Size(min = 3,max = 60)
    private String bridegroom;

    @NotBlank
    @Size(min = 3,max = 60)
    private String bride;

    @NotBlank
    @Size(min = 3,max = 60)
    private String address;

//    @NotBlank
//    @Size(min = 3,max = 60)
//    private String ceremonyAddress;

    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @NotNull
    private Date date;

    // relations

    @ManyToOne
    private Organizer organizer;

    @ManyToMany
    private List<Guest> guestList;

//    private String musicStyle;

//    private Integer guestNumber

    // constr

    public Wedding (){}

    // gestset


    public String getMusic() {
        return music;
    }

    public Wedding setMusic(String music) {
        this.music = music;
        return this;
    }

    public Long getId() {
        return id;
    }

    public Wedding setId(Long id) {
        this.id = id;
        return this;
    }

    public String getBridegroom() {
        return bridegroom;
    }

    public Wedding setBridegroom(String bridegroom) {
        this.bridegroom = bridegroom;
        return this;
    }

    public String getBride() {
        return bride;
    }

    public Wedding setBride(String bride) {
        this.bride = bride;
        return this;
    }

    public String getAddress() {
        return address;
    }

    public Wedding setAddress(String address) {
        this.address = address;
        return this;
    }

    public Date getDate() {
        return date;
    }

    public Wedding setDate(Date date) {
        this.date = date;
        return this;
    }

    public Organizer getOrganizer() {
        return organizer;
    }

    public Wedding setOrganizer(Organizer organizer) {
        this.organizer = organizer;
        return this;
    }

    public List<Guest> getGuestList() {
        return guestList;
    }

    public Wedding setGuestList(List<Guest> guestList) {
        this.guestList = guestList;
        return this;
    }
}
