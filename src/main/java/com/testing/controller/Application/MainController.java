package com.testing.controller.Application;

import com.testing.controller.Application.Repos.MarksRepo;
import com.testing.controller.Application.Repos.SubjectRepo;
import com.testing.controller.Application.Repos.UsersRepos;
import com.testing.controller.Application.Subjects.Subject;
import com.testing.controller.Application.User.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {


    @Autowired
    private SubjectRepo subjectRepo;
    @Autowired
    private UsersRepos usersRepos;
    @Autowired
    private MarksRepo marksRepo;


    @GetMapping("/")
    public String index(@AuthenticationPrincipal User user, Model model){

        Iterable<Subject> subj = subjectRepo.findAll();
        model.addAttribute("user",user);
        model.addAttribute("subjects", subj);
        return "test_main";
    }
    @GetMapping("my_info")
    public String getMyInfo(@AuthenticationPrincipal User user,Model model){
        model.addAttribute("user",usersRepos.findUserByUsername(user.getUsername()));
        return "my_info";
    }
    @GetMapping("my_stat")
    public String getMyStat(@AuthenticationPrincipal User user, Model model){
        model.addAttribute("marks",marksRepo.findMarksByUserName_Username(user.getUsername()));
        model.addAttribute("user",user);
        return "my_stat";
    }

    }

