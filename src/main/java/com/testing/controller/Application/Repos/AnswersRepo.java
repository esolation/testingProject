package com.testing.controller.Application.Repos;

import com.testing.controller.Application.Answers.Answer;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface AnswersRepo extends CrudRepository<Answer,Long> {
    List<Answer> findAnswersByTopic_TopicName(String topic);
    Answer findAnswerByQuestion(String question);
    Answer findAnswerById(long id);
    List<Answer> findAnswersByTopic_Id(long id);
}
