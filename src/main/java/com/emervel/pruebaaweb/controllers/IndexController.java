package com.emervel.pruebaaweb.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.emervel.pruebaaweb.domain.SignupForm;
 
@Controller
public class IndexController {
 
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public ModelAndView index() {
        return new ModelAndView("index", "signupForm", new SignupForm());
    }
 
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String create(Model model, SignupForm signupForm, BindingResult result, RedirectAttributes redirectAttributes) {
 
        if (result.hasErrors()) {
            return "index";
        }
 
        return "show";
     
    }
 
    @RequestMapping(value = "/security-error", method = RequestMethod.GET)
    public String securityError(RedirectAttributes redirectAttributes) {
        redirectAttributes.addFlashAttribute("page_error", "You do have have permission to do that!");
        return "redirect:/";
    }
 
}