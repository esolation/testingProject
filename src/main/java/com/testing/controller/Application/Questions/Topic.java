package com.testing.controller.Application.Questions;

import com.testing.controller.Application.Subjects.Subject;

import javax.persistence.*;

@Entity
@Table(name = "topics")
public class Topic {

    public Topic(){}

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String topicName;

    @ManyToOne
    @JoinColumn(name="subject_id")
    private Subject subject;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTopicName() {
        return topicName;
    }

    public void setTopicName(String topicName) {
        this.topicName = topicName;
    }

    public Subject getSubject() {
        return subject;
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }
}
