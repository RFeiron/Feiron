package ua.com.feiron.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.com.feiron.domain.Contact;
import ua.com.feiron.repository.ContactRepository;

import java.util.List;

@Controller
public class ContactController {
    private ContactRepository contactRepository;

    @Autowired
    public ContactController(ContactRepository contactRepository){
        this.contactRepository = contactRepository;
    }

    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public String getContact(Model model){
        List<Contact> contact = this.contactRepository.resultAll();
        model.addAttribute("contact", contact);

        return "contact";
    }

    @RequestMapping(value = "addContact", method = RequestMethod.GET)
//    @PreAuthorize("isAuthenticated()")
    public String addContact(Model model){
        model.addAttribute("contact", new Contact());
        return "addContact";
    }

    @RequestMapping(value = "addContact", method = RequestMethod.POST)
    public String addProduct(@ModelAttribute("contact") Contact contact, BindingResult bindingResult){
//        this.pnValidator.validate(pn, bindingResult);
//        if (bindingResult.hasErrors()){
//            return "addProduct";
//        }

        this.contactRepository.addContact(contact);
        return "redirect:/contact";
    }

    @RequestMapping(value = "deleteContact/{id}", method = RequestMethod.GET)
    public String deleteContact(@PathVariable Integer id){

        this.contactRepository.deleteContact(id);
        return "redirect:/contact";
    }
}
