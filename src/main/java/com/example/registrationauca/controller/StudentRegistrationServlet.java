package com.example.registrationauca.controller;

import com.example.registrationauca.model.Student;
import com.example.registrationauca.service.StudentService;
import com.example.registrationauca.service.StudentServiceInterface;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.util.logging.Level;
import java.util.logging.Logger;

public class StudentRegistrationServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            System.out.println("Student Name: " + firstName + " " + lastName);
            String studentPhone = request.getParameter("studentPhone");
            String studentEmail = request.getParameter("studentEmail");
            String parentOneFullname = request.getParameter("parentOneFullname");
            String parentTwoFullname = request.getParameter("parentTwoFullname");
            String parentOnePhone = request.getParameter("parentOnePhone");
            String parentTwoPhone = request.getParameter("parentTwoPhone");
            String origin = request.getParameter("origin");
            String grade = request.getParameter("grade");
//            Part studentPassportPicture = request.getPart("studentPassportPicture");
//            Part certificate = request.getPart("certificate");

//            String studentPassportPictureFilename = Paths.get(studentPassportPicture.getSubmittedFileName()).getFileName().toString();
//            String certificateFilename = Paths.get(certificate.getSubmittedFileName()).getFileName().toString();
//
//            if ((studentPassportPicture != null && studentPassportPicture.getSize() > 0) && (certificate != null && certificate.getSize() > 0)) {
//                String studentPassportPictureFileName = Paths.get(studentPassportPicture.getSubmittedFileName()).getFileName().toString();
//                Student student = new Student(firstName, lastName, studentPhone, studentEmail, parentOneFullname, parentTwoFullname, parentOnePhone, parentTwoPhone, origin, grade, studentPassportPictureFilename, certificateFilename);
//                StudentServiceInterface studentService = new StudentService();
//                studentService.saveStudent(student);
//
//                out.println("Done");
//            } else {
//                Student student = new Student(firstName, lastName, studentPhone, studentEmail, parentOneFullname, parentTwoFullname, parentOnePhone, parentTwoPhone, origin, grade, "defaultPPicture.png", "defaultCert.png");
//                StudentServiceInterface studentService = new StudentService();
//                studentService.saveStudent(student);
//
//                out.println("Done");
//            }
            Student student = new Student(firstName, lastName, studentPhone, studentEmail, parentOneFullname, parentTwoFullname, parentOnePhone, parentTwoPhone, origin, grade);
            StudentServiceInterface studentService = new StudentService();
            studentService.saveStudent(student);
            request.setAttribute("success", "Admission successfully sent, we will get back to you soon.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(StudentRegistrationServlet.class.getName()).log(Level.SEVERE, null, ex);
            request.setAttribute("error", "Admission not sent, try again later.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
