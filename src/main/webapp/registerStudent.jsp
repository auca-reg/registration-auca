<%@page import="com.example.registrationauca.model.Student"%>
<%@page import="com.example.registrationauca.service.StudentService"%>
<%@page import="com.example.registrationauca.service.StudentServiceInterface" %>
<%@ page import="java.nio.file.Paths" %>
<%@ page import="java.io.File" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.OutputStream" %>
<%@ page import="java.io.FileOutputStream" %>
<%@ page import="java.util.Properties" %>
<%@ page import="javax.mail.internet.MimeMessage" %>
<%@ page import="javax.mail.internet.InternetAddress" %>
<%@ page import="javax.mail.*" %>
<jsp:useBean id="studBean" class="com.example.registrationauca.beans.StudentBean" scope="request" />
<%
    try {
        Student student = new Student();

        student.setFirstName(request.getParameter("firstName"));
        student.setLastName(request.getParameter("lastName"));
        student.setStudentPhone(request.getParameter("studentPhone"));
        student.setStudentEmail(request.getParameter("studentEmail"));
        student.setParentOneFullname(request.getParameter("parentOneFullname"));
        student.setParentTwoFullname(request.getParameter("parentTwoFullname"));
        student.setParentOnePhone(request.getParameter("parentOnePhone"));
        student.setParentTwoPhone(request.getParameter("parentTwoPhone"));
        student.setOrigin(request.getParameter("origin"));
        student.setGrade(request.getParameter("grade"));

        // Define where the file will be saved
//        String basePath = request.getServletContext().getRealPath("/") + "uploads";
//        File outputDir = new File(basePath);
//        if (!outputDir.exists()) {
//            outputDir.mkdirs();
//        }

        // Get studentPassportPicture as a Part object
//        Part studentPassportPictureFilePart = request.getPart("studentPassportPicture");
//
//        if (studentPassportPictureFilePart != null && studentPassportPictureFilePart.getSize() > 0) {
//            String studentPassportPictureFileName = Paths.get(studentPassportPictureFilePart.getSubmittedFileName()).getFileName().toString();
//            student.setStudentPassportPicture(studentPassportPictureFileName);
//
//            // -- save the files in uploads folder
//            File outputstudentPassportPicture = new File(outputDir, studentPassportPictureFileName);
//
//            // Save the file
//            try (InputStream fileContent = studentPassportPictureFilePart.getInputStream();
//                 OutputStream os = new FileOutputStream(outputstudentPassportPicture)) {
//
//                byte[] buffer = new byte[1024];
//                int bytesRead;
//                while ((bytesRead = fileContent.read(buffer)) != -1) {
//                    os.write(buffer, 0, bytesRead);
//                }
//            }
//        } else {
//            student.setCertificate("defaultPPicture.png");
//            request.setAttribute("message", "No files given");
//        }

        // Get certificate as a Part object
//        Part certificateFilePart = request.getPart("certificate");
//
//        if (certificateFilePart != null && certificateFilePart.getSize() > 0) {
//            String certificatePictureFileName = Paths.get(certificateFilePart.getSubmittedFileName()).getFileName().toString();
//            student.setCertificate(certificatePictureFileName);
//
//            // -- save the files in uploads folder
//            File outputCertificate = new File(outputDir, certificatePictureFileName);
//
//            // Save the file
//            try (InputStream fileContent = certificateFilePart.getInputStream();
//                 OutputStream os = new FileOutputStream(outputCertificate)) {
//
//                byte[] buffer = new byte[1024];
//                int bytesRead;
//                while ((bytesRead = fileContent.read(buffer)) != -1) {
//                    os.write(buffer, 0, bytesRead);
//                }
//            }
//        } else {
//            student.setCertificate("defaultCert.png");
//            request.setAttribute("message", "No files given");
//        }
        StudentServiceInterface stud = new StudentService();
        stud.saveStudent(student);

        // send confirmation email
        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");

        Session emailSession = Session.getInstance(properties, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("mugishathierry65@gmail.com", "lgyoovytcftgwmns");
            }
        });

        try {
            Message message = new MimeMessage(emailSession);
            message.setFrom(new InternetAddress("mugishathierry65@gmail.com"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(student.getStudentEmail()));
            message.setSubject("Admission confirmation");

            // For simple text mail
            message.setContent("<h1>Hello, this is an admission confirmation email!</h1><p>We will get back to you soon</p><p>Have good days!</p>", "text/html");

            // Send message
            Transport.send(message);

            System.out.println("Email Sent Successfully!!");
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
        request.setAttribute("success", "Admission successfully sent! \n Check your email to see admission confirmation email.");

        request.getRequestDispatcher("register.jsp").forward(request, response);
    } catch (Exception ex) {
        ex.printStackTrace();  // Log the error
        request.setAttribute("error", ex);
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }
%>