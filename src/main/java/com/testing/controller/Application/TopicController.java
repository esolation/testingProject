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

import java.util.*;

@Controller
@RequestMapping("/subject")
public class TopicController {
    @Autowired
    TopicRepo topicRepo;
    @Autowired
    AnswersRepo answersRepo;
    public static List<Answer> save_ans;
    @GetMapping("{subject_id}")
    public String showTopics(@AuthenticationPrincipal User user, @PathVariable long  subject_id, Model model){
        model.addAttribute("user",user);
        model.addAttribute("topics", topicRepo.findTopicsBySubject_Id(subject_id));
        return "test_topics";
    }
    @GetMapping("{subject_id}/{topic_id}")
    public String testing(@PathVariable long subject_id, @PathVariable long topic_id, Model model){
        //Set<Answer> ans = answersRepo.findAnswersByTopic_TopicName(topic);
        List<Answer> ans;
        ans = answersRepo.findAnswersByTopic_Id(topic_id);

        if(ans !=null){
            Collections.shuffle(ans);
            save_ans = ans;
            model.addAttribute("answers",ans);}
        else
            return "test_main";
        return "testing";
    }
}
