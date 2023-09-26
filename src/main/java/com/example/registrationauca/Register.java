package com.example.registrationauca;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "register", value = "/register")
public class Register extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String pOneFullname = request.getParameter("pOneFullname");
        String pTwoFullname = request.getParameter("pTwoFullname");
        String pOnePhone = request.getParameter("pOnePhone");
        String pTwoPhone = request.getParameter("pTwoPhone");
        String origin = request.getParameter("origin");
        String grade = request.getParameter("grade");

        // -- passwords
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");


        if (fname == null || lname == null || phone == null || email == null || pOneFullname == null ||
                pTwoFullname == null || pOnePhone == null || pTwoPhone == null || origin == null || grade == null) {
            request.setAttribute("error", "Some Inputs are empty, Please fill all the form.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } else {
            if (password == confirmPassword) {
                request.setAttribute("error", "Password don't match.");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            } else {
                request.setAttribute("fname", fname);
                request.setAttribute("lname", lname);
                request.setAttribute("phone", phone);
                request.setAttribute("email", email);
                request.setAttribute("pOneFullname", pOneFullname);
                request.setAttribute("pTwoFullname", pTwoFullname);
                request.setAttribute("pOnePhone", pOnePhone);
                request.setAttribute("pTwoPhone", pTwoPhone);
                request.setAttribute("origin", origin);
                request.setAttribute("grade", grade);
                request.getRequestDispatcher("userinfo.jsp").forward(request, response);
            }
        }
    }
}
