package com.testing.controller.Application.Repos;

import com.testing.controller.Application.Questions.Topic;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;

import java.util.Set;

@Component
public interface TopicRepo extends CrudRepository<Topic,Long> {
    Set<Topic> findTopicsBySubject_Subjectname(String subjectName);
    Set<Topic> findTopicsByTopicName(String topicName);
    Topic findTopicByTopicName(String s);
    Set<Topic> findTopicsBySubject_Id(long ID);
}
