<%@page import="com.example.registrationauca.model.User"%>
<%@page import="com.example.registrationauca.service.UserService"%>
<%@page import="com.example.registrationauca.service.UserServiceInterface" %>
<jsp:useBean id="userBean" class="com.example.registrationauca.beans.UserBean" scope="request" />
<%
    try {
        User user = new User();

        user.setEmail(request.getParameter("email"));
        user.setPassword(request.getParameter("password"));

        UserServiceInterface userService = new UserService();
        String password = userService.getPasswordByEmail(user.getEmail());

        if (password != null && password.equals(user.getPassword())) {
            if (user.getEmail().equals("admin@me.com")) {
                request.setAttribute("email", "admin@me.com");
                request.getRequestDispatcher("Admin.jsp").forward(request, response);
            } else {
                request.setAttribute("email", user.getEmail());
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("error", "Incorrect email or password");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    } catch (Exception ex) {
        ex.printStackTrace();  // Log the error
        request.setAttribute("error", ex);
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
%>