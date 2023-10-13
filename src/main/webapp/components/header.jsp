<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home - AUCA</title>
    <link rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i&amp;display=swap">
    <link rel="stylesheet" href="static/fonts/simple-line-icons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.11.1/baguetteBox.min.css">
    <!-- Embed the Google Translate code snippet here -->
    <script type="text/javascript">
        function googleTranslateElementInit() {
            new google.translate.TranslateElement({
                pageLanguage: 'en',
                includedLanguages: 'en,fr,rw',
                layout: google.translate.TranslateElement.InlineLayout.SIMPLE
            }, 'google_translate_element');
        }
    </script>
    <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
    <link rel="stylesheet" href="static/css/vanilla-zoom.min.css">
    <style>
        #google_translate_element {
            /* Your custom CSS styles */
            position: fixed;
            top: 10px;
            right: 10px;
            /* etc. */
        }
    </style>
</head>
<body>
<nav class="navbar navbar-light navbar-expand-lg fixed-top bg-white clean-navbar">
    <div class="container"><a class="navbar-brand logo" href="#">AUCA</a><button data-bs-toggle="collapse"
                                                                                 class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle
                    navigation</span><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navcol-1">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link active" href="index.jsp">Home</a></li>
                <% if (request.getAttribute("email") == null) { %>
                <li class="nav-item"><a class="nav-link" href="Signup.jsp">Signup</a></li>
                <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                <%} else {%>
                <li class="nav-item"><a class="nav-link" href="Logout.jsp">Logout</a></li>
                <%}%>
            </ul>
        </div>
        <div id="google_translate_element"></div>
    </div>
</nav>