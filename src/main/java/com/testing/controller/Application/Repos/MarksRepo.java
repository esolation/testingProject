package com.testing.controller.Application.Repos;

import com.testing.controller.Application.marks.Mark;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface MarksRepo extends CrudRepository<Mark,Long> {
    List<Mark> findMarksByUserName_Username(String s);
    List<Mark> findMarksByUserName_Id(int id);
}
