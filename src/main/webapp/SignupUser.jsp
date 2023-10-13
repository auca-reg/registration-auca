<%@page import="com.example.registrationauca.model.User"%>
<%@page import="com.example.registrationauca.service.UserService"%>
<%@page import="com.example.registrationauca.service.UserServiceInterface" %>
<jsp:useBean id="studBean" class="com.example.registrationauca.beans.UserBean" scope="request" />
<%
    try {
        User user = new User();

        user.setEmail(request.getParameter("email"));
        user.setPassword(request.getParameter("password"));

        UserServiceInterface usr = new UserService();
        usr.saveUser(user);
        request.setAttribute("success", "Account successfully created, You can login now");
        request.getRequestDispatcher("login.jsp").forward(request, response);
    } catch (Exception ex) {
        ex.printStackTrace();  // Log the error
        request.setAttribute("error", "There's missing inputs");
        request.getRequestDispatcher("Signup.jsp").forward(request, response);
    }
%>