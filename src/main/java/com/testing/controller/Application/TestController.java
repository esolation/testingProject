package com.testing.controller.Application;

import com.testing.controller.Application.Answers.Answer;

import com.testing.controller.Application.Questions.Topic;
import com.testing.controller.Application.Repos.AnswersRepo;

import com.testing.controller.Application.Repos.MarksRepo;
import com.testing.controller.Application.Repos.SubjectRepo;
import com.testing.controller.Application.Repos.TopicRepo;
import com.testing.controller.Application.Subjects.Subject;

import com.testing.controller.Application.User.User;
import com.testing.controller.Application.marks.Mark;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.*;

@Controller
public class TestController {


    @Autowired
    AnswersRepo answersRepo;
    @Autowired
    SubjectRepo subjectRepo;
    @Autowired
    TopicRepo topicRepo;
    @Autowired
    MarksRepo marksRepo;

    private String answer = "null";
    private short count=0;
    private int mark;
    private List<Short> question = new ArrayList<>();
    private String HttpTopic;
    @GetMapping("/testing")
    public String test(Model model) {
        Iterable<Subject> subj = subjectRepo.findAll();

        model.addAttribute("subjects", subj);
        return "test_main";
    }

    @GetMapping("checktest")
    public String check(Model model){
       // model.mergeAttributes(uA);
        model.addAttribute("mark",mark);

        return "checktest";
    }

    @PostMapping("checktest")
    public String checktest(@RequestParam(name="answer") String answer, @RequestParam(name="topic") String topic, @AuthenticationPrincipal User user, Model model){
        Mark markForStudent = new Mark();
        //if(!numb_of_question.isEmpty())numb_of_question.clear();
        question.clear();
        mark=0;
        count=0;
        Iterable<Answer> ans = answersRepo.findAnswersByTopic_TopicName(topic);
        String[] userAnswers = answer.split(",");

        for(Answer answer1: ans){
            if(Arrays.asList(userAnswers).contains(answer1.getTrueAnswer())) {


                mark+=5;
            }
            else {


            }


        }
        markForStudent.setMark((short)mark);
        markForStudent.setTopicName(topic);
        markForStudent.setUserName(user);
        marksRepo.save(markForStudent);
        model.addAttribute("mark",mark);

        //model.addAttribute("answers",ans); - правильные ответы
        model.addAttribute("usersAnswer", userAnswers);

        model.addAttribute("answers",TopicController.save_ans);
        return "checktest";
    }
    @GetMapping("/createquestion")
    public String getCreatequestin(Model model)
    {
        Iterable<Answer> ans = answersRepo.findAll();
        Iterable<Subject> subj = subjectRepo.findAll();
        model.addAttribute("quest",ans);
        model.addAttribute("subject",subj);
        return "test_add";
    }
    @PostMapping("/createquestion")
    public String create(@RequestParam(name="question",required = true)String question,
                         @RequestParam(name="false0",required = true)String false0,
                         @RequestParam(name="false1",required = true)String false1,
                         @RequestParam(name="false2",required = true)String false2,
                         @RequestParam(name="current",required = true)String current,
                         @RequestParam(name="subject",required = false)String oldSubject,
                         @RequestParam(name="topic") String topic,
                         @RequestParam(name="newSubject",required = false)String newSubject, Model model){
         String sbj;
         if(oldSubject.equals("Не выбрано"))
             sbj = newSubject;
         else
             sbj = oldSubject;
        Subject subj = subjectRepo.findSubjectBySubjectname(sbj);
        Answer ans = answersRepo.findAnswerByQuestion(question);

        Topic top = topicRepo.findTopicByTopicName(topic);

        if(subj == null){

            subj = new Subject();
            subj.setSubjectname(sbj);

        }
        if(top==null){
            top = new Topic();
            top.setTopicName(topic);
        }
        if(ans == null) {
            ans = new Answer();
            ans.setQuestion(question);
        }






        List<String> f = new ArrayList<>();
        f.add(false0);
        f.add(false1);
        f.add(false2);
        f.add(current);
       // Collections.shuffle(f); - сортировка перед сохраниением
        ans.setAllAnswers(f);
        ans.setTrueAnswer(current);
        ans.setTopic(top);
        top.setSubject(subj);
        subjectRepo.save(subj);
        topicRepo.save(top);
        answersRepo.save(ans);
       Iterable<Answer> quest = answersRepo.findAnswersByTopic_TopicName(topic);
        model.addAttribute("quest",quest);
        model.addAttribute("oldSubject",oldSubject);
        model.addAttribute("topic",topic);

        return "test_add" ;
    }
}
