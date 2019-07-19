package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.entity.Organizer;
import pl.coderslab.entity.Wedding;
import pl.coderslab.repository.GuestRepository;
import pl.coderslab.repository.OrganizerRepository;
import pl.coderslab.repository.WeddingRepository;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/organizer")
//@SessionAttributes("organizer")
public class OrganizerController {

    // Wire by constructor
    OrganizerRepository organizerRepository;
    WeddingRepository weddingRepository;
    GuestRepository guestRepository;

    @Autowired
    public OrganizerController(OrganizerRepository organizerRepository,
                               WeddingRepository weddingRepository,
                               GuestRepository guestRepository) {
        this.organizerRepository = organizerRepository;
        this.weddingRepository = weddingRepository;
        this.guestRepository = guestRepository;
    }

    ///////////////////////////////////////////////////////////////
    // GET for adding wedding form - ADD AND UPDATE
    @GetMapping("/addWedding")
    public String addWeddingForm(Model model,
                                 @RequestParam(required = false) Long id) {
        if (id == null) {
            model.addAttribute("wedding", new Wedding());
        } else {
            model.addAttribute("wedding", weddingRepository.getFirstById(id));
        }
        return "wedding/addWeddingForm";
    }

    // POST for adding wedding form
    @PostMapping("/addWedding")
    public String postAddWeddingForm(@ModelAttribute @Valid Wedding wedding,
                                     BindingResult bindingResult,
                                     HttpSession session) {
        if (bindingResult.hasErrors()) {
            return "wedding/addWeddingForm";
        }

        Long id = (Long) session.getAttribute("id");
        Organizer organizer = organizerRepository.getOne(id);
        wedding.setOrganizer(organizer);
        weddingRepository.save(wedding);

        return "redirect:weddingList";
    }
    ///////////////////////////////////////////////////////////////
    // MODEL ATTR for personal list
//    @ModelAttribute("organizerWeddingList")
//    public List<Wedding> organizerWeddingList(){
//        return weddingRepository.findAllByOrganizerId(id)
//    }
    // WEDDING LIST BY ORGANIZER ID
    @GetMapping("weddingList")
    public String weddingListByOrganizer(Model model,
                                           HttpSession session){
        Long id = (Long)session.getAttribute("id");
        model.addAttribute("weddingList", weddingRepository.findAllByOrganizerId(id));
        return "wedding/weddingList";
    }

    ///////////////////////////////////////////////////////////////
    // DELETE WEDDING BY ID
    @GetMapping("/deleteWedding")
    public String deleteWedding(@RequestParam Long id){
        weddingRepository.delete(id);
        return "redirect:weddingList";
    }





//    // model attr for list
//    @ModelAttribute("weddingList")
//    public List<Wedding> getWeddings() {
//        return weddingRepository.findAllByOrderByDate();
//    }


}
