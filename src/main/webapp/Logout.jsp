<jsp:useBean id="studBean" class="com.example.registrationauca.beans.UserBean" scope="request" />
<%
    try {
        request.getSession().removeAttribute("email");
    } catch (Exception ex) {
        ex.printStackTrace();  // Log the error
        request.setAttribute("error", ex);
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
%>