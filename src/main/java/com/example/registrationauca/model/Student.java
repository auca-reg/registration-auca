package com.example.registrationauca.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int student_id;
    private String firstName;
    private String lastName;
    private String studentPhone;
    private String studentEmail;
    private String parentOneFullname;
    private String parentTwoFullname;
    private String parentOnePhone;
    private String parentTwoPhone;
    private String origin;
    private String grade;
//    private String studentPassportPicture;
//    private String certificate;

    public Student() {
    }

    public Student(String firstName, String lastName, String studentPhone, String studentEmail, String parentOneFullname, String parentTwoFullname, String parentOnePhone, String parentTwoPhone, String origin, String grade) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.studentPhone = studentPhone;
        this.studentEmail = studentEmail;
        this.parentOneFullname = parentOneFullname;
        this.parentTwoFullname = parentTwoFullname;
        this.parentOnePhone = parentOnePhone;
        this.parentTwoPhone = parentTwoPhone;
        this.origin = origin;
        this.grade = grade;
    }

    public int getStudent_id() {
        return student_id;
    }

    public void setStudent_id(int student_id) {
        this.student_id = student_id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getStudentPhone() {
        return studentPhone;
    }

    public void setStudentPhone(String studentPhone) {
        this.studentPhone = studentPhone;
    }

    public String getStudentEmail() {
        return studentEmail;
    }

    public void setStudentEmail(String studentEmail) {
        this.studentEmail = studentEmail;
    }

    public String getParentOneFullname() {
        return parentOneFullname;
    }

    public void setParentOneFullname(String parentOneFullname) {
        this.parentOneFullname = parentOneFullname;
    }

    public String getParentTwoFullname() {
        return parentTwoFullname;
    }

    public void setParentTwoFullname(String parentTwoFullname) {
        this.parentTwoFullname = parentTwoFullname;
    }

    public String getParentOnePhone() {
        return parentOnePhone;
    }

    public void setParentOnePhone(String parentOnePhone) {
        this.parentOnePhone = parentOnePhone;
    }

    public String getParentTwoPhone() {
        return parentTwoPhone;
    }

    public void setParentTwoPhone(String parentTwoPhone) {
        this.parentTwoPhone = parentTwoPhone;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }
}
