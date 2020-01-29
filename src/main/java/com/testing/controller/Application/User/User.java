package com.testing.controller.Application.User;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.util.Collection;
import java.util.Set;

@Entity
@Table(name = "user")
public class User implements UserDetails, Cloneable {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer id;

    private String username;

    private String password;

    private boolean active;
    private String FIO;
    private String eMail;
    private String phoneNumber;
    private String course;
    private int numberOfGroup;
    private String passport_ser;
    private int passport_num;
    private int personalNumber;
    private String adress;
    private int numberOfSchool;
    private String studyClass;

//    public User(String username, String password, boolean active, String FIO, String eMail, String phoneNumber, String course, int numberOfGroup, String passport_ser, int passport_num, int personalNumber, String adress, int numberOfSchool, String studyClass, Set<Role> roles) {
//        this.username = username;
//        this.password = password;
//        this.active = active;
//        this.FIO = FIO;
//        this.eMail = eMail;
//        this.phoneNumber = phoneNumber;
//        this.course = course;
//        this.numberOfGroup = numberOfGroup;
//        this.passport_ser = passport_ser;
//        this.passport_num = passport_num;
//        this.personalNumber = personalNumber;
//        this.adress = adress;
//        this.numberOfSchool = numberOfSchool;
//        this.studyClass = studyClass;
//        this.roles = roles;
//    }

    public String geteMail() {
        return eMail;
    }

    public void seteMail(String eMail) {
        this.eMail = eMail;
    }

    public String getFIO() {
        return FIO;
    }

    public void setFIO(String FIO) {
        this.FIO = FIO;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public int getNumberOfGroup() {
        return numberOfGroup;
    }

    public void setNumberOfGroup(int numberOfGroup) {
        this.numberOfGroup = numberOfGroup;
    }

    public String getPassport_ser() {
        return passport_ser;
    }

    public void setPassport_ser(String passport_ser) {
        this.passport_ser = passport_ser;
    }

    public int getPassport_num() {
        return passport_num;
    }

    public void setPassport_num(int passport_num) {
        this.passport_num = passport_num;
    }

    public int getPersonalNumber() {
        return personalNumber;
    }

    public void setPersonalNumber(int personalNumber) {
        this.personalNumber = personalNumber;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public int getNumberOfSchool() {
        return numberOfSchool;
    }

    public void setNumberOfSchool(int numberOfSchool) {
        this.numberOfSchool = numberOfSchool;
    }

    public String getStudyClass() {
        return studyClass;
    }

    public void setStudyClass(String studyClass) {
        this.studyClass = studyClass;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    @ElementCollection(targetClass = Role.class, fetch = FetchType.EAGER)
    @CollectionTable(name ="user_role", joinColumns = @JoinColumn(name = "user_id"))
    @Enumerated(EnumType.STRING)
    private Set<Role> roles;



    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return getRoles();
    }

    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return username;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return isActive();
    }
    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }



    public void setUsername(String name) {
        this.username = name;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public User(){}

    public User(String name, String pass){
        this.username = name;
        this.password = pass;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        User users = (User) o;

        return id.equals(users.id);

    }

    @Override
    public int hashCode() {
        return id.hashCode();
    }

    public static String md5Apache(String st) {
        String md5Hex = DigestUtils.md5Hex(st);

        return md5Hex;
    }
}

