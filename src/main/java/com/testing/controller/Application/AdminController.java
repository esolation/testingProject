package com.testing.controller.Application;

import com.testing.controller.Application.Answers.Answer;
import com.testing.controller.Application.Repos.*;
import com.testing.controller.Application.User.User;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/admin")
@PreAuthorize("hasAuthority('ADMIN')")
public class AdminController {
    @Autowired
    private AnswersRepo answersRepo;
    @Autowired
    private UsersRepos usersRepos;
    @Autowired
    private TopicRepo topicRepo;
    @Autowired
    SubjectRepo subjectRepo;
    @Autowired
    MarksRepo marksRepo;



    @GetMapping
    public String showAdminPage(@AuthenticationPrincipal User user,Model model){
        model.addAttribute("topics", topicRepo.findAll());
        model.addAttribute("subjects",subjectRepo.findAll());
        model.addAttribute("user",user);
        return "admin";
    }
    @GetMapping("{topic}")
    public String showQuestions(@AuthenticationPrincipal User user,@PathVariable long topic, Model model){
        model.addAttribute("questions",answersRepo.findAnswersByTopic_Id(topic));
        model.addAttribute("user",user);
        return "admin_tests";
    }
    @PostMapping("{topic}")
    public String createQuestion(@AuthenticationPrincipal User user,@PathVariable String topic, Model model){
        model.addAttribute("topic",topic);
        model.addAttribute("user",user);
        model.addAttribute("quest",answersRepo.findAll());
        model.addAttribute("subject",subjectRepo.findAll());
        return "test_add";
    }
    @GetMapping("{topic}/{question}")
    public String changeTest(@AuthenticationPrincipal User user,@PathVariable long question, Model model){
        Answer ans = answersRepo.findAnswerById(question);
        model.addAttribute("qCh", ans);
        model.addAttribute("user",user);
       // answersRepo.delete(ans);

        return "test_change";
    }

    @GetMapping("users")
    public String getUsers(@AuthenticationPrincipal User user, Model model){
        model.addAttribute("user",user);
        model.addAttribute("users",usersRepos.findAll());
        return "student_control";
    }

    @GetMapping("users/{user}")
    public String getUserForChange(@PathVariable String user, Model model){
       User usr =  usersRepos.findUserByUsername(user);
       model.addAttribute("usr",usr);

      // usersRepos.delete(usr);
        return "user_add";
    }
    @PostMapping("users/{usr}")
    public String changeUser(@PathVariable String usr, User user,Model model){
        User f = usersRepos.findUserByPersonalNumber(user.getPersonalNumber());
        usersRepos.delete(user);
        f.setAdress(user.getAdress());
        f.setCourse(user.getCourse());
        f.seteMail(user.geteMail());
        f.setFIO(user.getFIO());
        f.setNumberOfGroup(user.getNumberOfGroup());
        f.setNumberOfSchool(user.getNumberOfSchool());
        f.setPassport_num(user.getPassport_num());
        f.setPassport_ser(user.getPassport_ser());
        f.setPersonalNumber(user.getPersonalNumber());
        f.setPhoneNumber(user.getPhoneNumber());
        f.setStudyClass(user.getStudyClass());
        usersRepos.save(f);

        return "redirect:/admin/users";
    }

    @GetMapping("users/saveusers/save")
    public String saveUsers() throws IOException {
        int count =1;
        Workbook wb = new HSSFWorkbook();
        Sheet sheet = wb.createSheet("Список пользователей");
        List<User> usr = usersRepos.findAll();
        for( User usr1:usr){
            Row row = sheet.createRow(count);
            Cell fio = row.createCell(1);
            Cell phoneNumber = row.createCell(4);
            Cell email = row.createCell(9);
            Cell course = row.createCell(12);
            fio.setCellValue("Фио: "+usr1.getFIO());
            phoneNumber.setCellValue("Номер телефона: " + usr1.getPhoneNumber());
            email.setCellValue("Email: " + usr1.geteMail());
            course.setCellValue("Курс: "+usr1.getCourse());
            count +=3;
        }
        FileOutputStream fos = new FileOutputStream("D:/Excel/users.xls");
        wb.write(fos);
        fos.close();

        return "redirect:/admin/users";
    }
    @GetMapping("/users/view_user/{user}")
    public String viewUser(@PathVariable int user, Model model){
        model.addAttribute("user",usersRepos.findUserById(user));
        model.addAttribute("marks", marksRepo.findMarksByUserName_Id(user));
        return "userView";
    }

}