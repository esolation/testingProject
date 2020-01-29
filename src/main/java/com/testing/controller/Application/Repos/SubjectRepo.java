package com.testing.controller.Application.Repos;

import com.testing.controller.Application.Subjects.Subject;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;

@Component
public interface SubjectRepo extends CrudRepository<Subject,Long> {
    public Subject findSubjectBySubjectname(String name);
    public Subject findSubjectById(int ID);
}
