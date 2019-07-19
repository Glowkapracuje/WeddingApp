package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.coderslab.repository.GuestRepository;
import pl.coderslab.repository.OrganizerRepository;
import pl.coderslab.repository.WeddingRepository;

@Controller
public class HomeController {

    // Wire by constructor
    OrganizerRepository organizerRepository;
    WeddingRepository weddingRepository;
    GuestRepository guestRepository;

    @Autowired
    public HomeController(OrganizerRepository organizerRepository,
                               WeddingRepository weddingRepository,
                               GuestRepository guestRepository) {
        this.organizerRepository = organizerRepository;
        this.weddingRepository = weddingRepository;
        this.guestRepository = guestRepository;
    }

    ///////////////////////////////////////////////////////////////

    @GetMapping("/**")
    public String displayIndexJsp() {
        return "index/index";
    }

    @GetMapping("/home/choiceAfterLogin")
    public String displayChoicePage(){
        return "choiceAfterLogin/choiceAfterLogin";
    }


    // ALL WEDDING LIST
    @GetMapping("/home/fullWeddingList")
    public String fullWeddingList(Model model){
        model.addAttribute("weddingList", weddingRepository.findAll());
        return "wedding/weddingList";
    }

}
