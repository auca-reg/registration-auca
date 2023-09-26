
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Login - AUCA</title>
    <link rel="stylesheet" href="static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i&amp;display=swap">
    <link rel="stylesheet" href="static/fonts/simple-line-icons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.11.1/baguetteBox.min.css">
    <link rel="stylesheet" href="static/css/vanilla-zoom.min.css">
</head>
<body>
<nav class="navbar navbar-light navbar-expand-lg fixed-top bg-white clean-navbar">
    <div class="container"><a class="navbar-brand logo" href="#">AUCA</a><button data-bs-toggle="collapse"
                                                                                 class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle
                    navigation</span><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navcol-1">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="register.jsp">Register</a></li>
                <li class="nav-item"><a class="nav-link active" href="login.jsp">Login</a></li>
            </ul>
        </div>
    </div>
</nav>
<main class="page contact-us-page">
    <section class="clean-block clean-form dark">
        <div class="container">
            <div class="block-heading">
                <p>Entered Info</p>
            </div>
            <div>
                <div class="row mb-3">
                    <div class="mb-3 col-xl">
                        <label class="form-label">Firstname</label>
                        <p>${fname}</p>
                    </div>
                    <div class="mb-3 col-xl">
                        <label class="form-label">Lastname</label>
                        <p>${lname}</p>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="mb-3 col-xl">
                        <label class="form-label">Phone</label>
                        <p>${phone}</p>
                    </div>
                    <div class="mb-3 col-xl">
                        <label class="form-label">Email</label>
                        <p>${email}</p>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="mb-3 col-xl">
                        <label class="form-label">Parent 1 fullname</label>
                        <p>${pOneFullname}</p>
                    </div>
                    <div class="mb-3 col-xl">
                        <label class="form-label">Parent 2 fullname</label>
                        <p>${pTwoFullname}</p>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="mb-3 col-xl">
                        <label class="form-label">Parent 1 Phone</label>
                        <p>${pOnePhone}</p>
                    </div>
                    <div class="mb-3 col-xl">
                        <label class="form-label">Parent 2 Phone</label>
                        <p>${pTwoPhone}</p>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="mb-3 col-xl">
                        <label class="form-label">Origin</label>
                        <p>${origin}</p>
                    </div>
                    <div class="mb-3 col-xl">
                        <label class="form-label">Grade</label>
                        <p>${grade}</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.11.1/baguetteBox.min.js"></script>
<script src="assets/js/vanilla-zoom.js"></script>
<script src="assets/js/theme.js"></script>
</body>
</html>
