package com.testing.controller.Application.Repos;
import com.testing.controller.Application.User.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;

@Component
public interface UsersRepos extends JpaRepository<User, Long> {
    User findUserByUsername(String username);
    User findUserById(int id);
    User findUserByPersonalNumber(int num);

}
