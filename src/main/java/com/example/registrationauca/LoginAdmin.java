package com.example.registrationauca;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/login")
public class LoginAdmin extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if(email.equalsIgnoreCase("admin@me.com") && password.equals("123")) {
            HttpSession session = request.getSession();
            session.setAttribute("email", email);
            request.getRequestDispatcher("admin.jsp").forward(request, response);
        } else {
            request.setAttribute("error", "Account's Invalid");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
