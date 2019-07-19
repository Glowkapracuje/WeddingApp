package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.entity.Guest;
import pl.coderslab.entity.Organizer;
import pl.coderslab.repository.GuestRepository;
import pl.coderslab.repository.OrganizerRepository;
import pl.coderslab.repository.WeddingRepository;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
@RequestMapping("/login")
//@SessionAttributes({"success","organizer"})
public class LoginController {

    // Wire by constructor
    private OrganizerRepository organizerRepository;
    private WeddingRepository weddingRepository;
    private GuestRepository guestRepository;

    @Autowired
    public LoginController(OrganizerRepository organizerRepository,
                           WeddingRepository weddingRepository,
                           GuestRepository guestRepository) {
        this.organizerRepository = organizerRepository;
        this.weddingRepository = weddingRepository;
        this.guestRepository = guestRepository;
    }

    ///////////////////////////////////////////////////////////////
    // GET for register organizer
    @GetMapping("/registerOrganizer")
    public String registerForm(Model model) {
        model.addAttribute("organizer", new Organizer());
        return "login/registerOrganizer";
    }

    // POST for register organizer
    @PostMapping("/registerOrganizer")
    public String postRegisterForm(@Valid Organizer organizer,
                                   BindingResult bindingResult,
                                   @RequestParam String confirmPassword) {
        // if error show register form again
        if (bindingResult.hasErrors()) {
            return "login/registerOrganizer";
        }
        // if confrim password does not equal show message and back to form
        if (!organizer.getPassword().equals(confirmPassword)) {
            bindingResult.addError(new FieldError("organizer", "password", "password not confirmed"));
            return "login/registerOrganizer";
        }
        // prevent double email
        if (organizerRepository.getFirstByEmail(organizer.getEmail()) != null) {
            bindingResult.addError(new FieldError("organizer", "email", "we've got that email in our database"));
            return "login/registerOrganizer";
        }
        // ALL THINGS GONE RIGHT - save new organizer and go to login
        organizerRepository.save(organizer);
        return "redirect:/login/login";
    }

    ///////////////////////////////////////////////////////////////
    // GET for login
    @GetMapping("/login")
    public String loginForm() {
        return "login/login";
    }

    // POST for login
    @PostMapping("/login")
    public String postLoginForm(@RequestParam String email,
                                @RequestParam String password,
                                Model model,
                                HttpServletRequest request,
                                HttpSession session) {
        session.invalidate();
        // use success variable to display error message in form
        boolean success = true;
        // validate while typing data
        if (email == null ||
                password == null ||
                email.trim().equals("") ||
                password.trim().equals("")) {
            success = false;
        }
        // validate if email already used
        Organizer existingOrganizer = null;
        Guest existingGuest = null;
        if (success) {
            existingOrganizer = organizerRepository.getFirstByEmail(email);
            existingGuest = guestRepository.getFirstByEmail(email);
            if ((existingOrganizer == null || !existingOrganizer.getPassword().equals(password))
                    && (existingGuest == null || !existingGuest.getPassword().equals(password))) {
                success = false;
            }
        }

        // finally send succes variable to form
        model.addAttribute("success", success);
        // if validate gone wrong back to login form and send bad news
        if (!success) {
            model.addAttribute("success", false);
            return "login/login";
        }
        // ALL GONE RIGHT - save in session user attributes to use them later
        session = request.getSession();

        session.setAttribute("email", email);

        if (existingOrganizer != null) {
            session.setAttribute("name", existingOrganizer.getOrganizerName());
            session.setAttribute("id", existingOrganizer.getId());
            session.setAttribute("organizer", existingOrganizer);
        } else if (existingGuest != null) {
            session.setAttribute("name", existingGuest.getGuestName());
            session.setAttribute("id", existingGuest.getId());
            session.setAttribute("guest", existingGuest);
        }


        return "redirect:/home/choiceAfterLogin";
    }

    ///////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////
    // GET for register guest
    @GetMapping("/registerGuest")
    public String registerFormGuest(Model model) {
        model.addAttribute("guest", new Guest());
        return "login/registerGuest";
    }

    // POST for register guest
    @PostMapping("/registerGuest")
    public String postRegisterFormGuest(@Valid Guest guest,
                                        BindingResult bindingResult,
                                        @RequestParam String confirmPassword) {
        // if error show register form again
        if (bindingResult.hasErrors()) {
            return "login/registerGuest";
        }
        // if confrim password does not equal show message and back to form
        if (!guest.getPassword().equals(confirmPassword)) {
            bindingResult.addError(new FieldError("guest", "password", "password not confirmed"));
            return "login/registerGuest";
        }
        // prevent double email
        if (guestRepository.getFirstByEmail(guest.getEmail()) != null) {
            bindingResult.addError(new FieldError("guest", "email", "we've got that email in our database"));
            return "login/registerGuest";
        }
        // ALL THINGS GONE RIGHT - save new organizer and go to login
        guestRepository.save(guest);
        return "redirect:/login/login";
    }

    ///////////////////////////////////////////////////////////////
    // GET logut
    @GetMapping("/logout")
    public String logout(HttpSession session, Model model) {
        session.invalidate();
        return "redirect:/";
    }


}
