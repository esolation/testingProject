package com.testing.controller.Application;

import com.testing.controller.Application.Repos.UsersRepos;
import com.testing.controller.Application.User.Role;
import com.testing.controller.Application.User.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Collections;

@Controller
public class RegisterController {

    @Autowired
    private UsersRepos usersRepos;
    @GetMapping("/registration")
    public String register(Model model){
        model.addAttribute("message","Заполните поля");
        return "register";
    }
    @PostMapping("/registration")
    public String register(User user, Model model){
        User userFromDB = usersRepos.findUserByUsername(user.getUsername());

        if (userFromDB != null) {
            model.addAttribute("message","User already exist!");
            return "register";
        }
        user.setActive(true);
        user.setRoles(Collections.singleton(Role.ADMIN));
        usersRepos.save(user);

        return "redirect:/login";
    }
}
