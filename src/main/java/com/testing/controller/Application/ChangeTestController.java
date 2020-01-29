package com.testing.controller.Application;

import com.testing.controller.Application.Answers.Answer;
import com.testing.controller.Application.Repos.AnswersRepo;
import com.testing.controller.Application.Repos.TopicRepo;
import com.testing.controller.Application.User.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/createquestion")
public class ChangeTestController {
    @Autowired
    private AnswersRepo answersRepo;
    private TopicRepo topicRepo;

    @GetMapping("{testName}")
    public String changeTest(@AuthenticationPrincipal User user, @PathVariable String testName, Model model){
        Answer ans = answersRepo.findAnswerByQuestion(testName);
        model.addAttribute("qCh", ans);
        answersRepo.delete(ans);

      return "test_change";
    }
}
