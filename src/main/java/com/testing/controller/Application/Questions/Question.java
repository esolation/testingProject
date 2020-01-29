//package com.testing.controller.Application.Questions;
//
//
//
//import com.testing.controller.Application.Answers.Answer;
//import com.testing.controller.Application.Subjects.Subject;
//import org.hibernate.annotations.LazyCollection;
//import org.hibernate.annotations.LazyCollectionOption;
//import org.springframework.beans.factory.annotation.Autowired;
//
//import javax.persistence.*;
//import java.util.ArrayList;
//import java.util.Collection;
//
//@Entity
//@Table(name="questions")
//public class Question {
//
//    @Id
//    @GeneratedValue(strategy = GenerationType.AUTO)
//    private Long id;
//    private String question;
//
//
//
//
//    public Topic getTopic() {
//        return topic;
//    }
//
//    public void setTopic(Topic topic) {
//        this.topic = topic;
//    }
//
//    public Question(){}
//
//    public Long getId() {
//        return id;
//    }
//
//    public void setId(Long id) {
//        this.id = id;
//    }
//
//    public String getQuestion(){
//        return question;
//    }
//
//    public void setQuestion(String s){
//        this.question = s;
//    }
//}
