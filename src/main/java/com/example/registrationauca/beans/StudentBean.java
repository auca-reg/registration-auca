package com.example.registrationauca.beans;

import java.io.Serializable;

public class StudentBean implements Serializable {
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

    public StudentBean() {
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
