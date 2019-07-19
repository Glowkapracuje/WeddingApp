package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.coderslab.repository.GuestRepository;
import pl.coderslab.repository.OrganizerRepository;
import pl.coderslab.repository.WeddingRepository;

@Controller
@RequestMapping("/wedding")
public class WeddingController {

    // Wire by constructor
    OrganizerRepository organizerRepository;
    WeddingRepository weddingRepository;
    GuestRepository guestRepository;

    @Autowired
    public WeddingController(OrganizerRepository organizerRepository,
                               WeddingRepository weddingRepository,
                               GuestRepository guestRepository) {
        this.organizerRepository = organizerRepository;
        this.weddingRepository = weddingRepository;
        this.guestRepository = guestRepository;
    }

    // SHOW DETAILS
    @GetMapping("/details")
    public String showDetails(@RequestParam Long id, Model model) {
        model.addAttribute("weddingDetails", weddingRepository.getFirstById(id));
        return "wedding/weddingDetails";
    }

}
