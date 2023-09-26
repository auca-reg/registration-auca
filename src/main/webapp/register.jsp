
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Register - AUCA</title>
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
                <li class="nav-item"><a class="nav-link active" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="register.jsp">Register</a></li>
                <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
            </ul>
        </div>
    </div>
</nav>
<main class="page contact-us-page">
    <section class="clean-block clean-form dark">
        <div class="container">
            <div class="block-heading">
                <h2 class="text-info">Register</h2>
                <p>Register today and start acquiring life changing knowledge ever in history</p>
            </div>
            <form method="post" action="register">
                <div class="row mb-3">
                    <div class="mb-3 col-xl">
                        <label class="form-label" for="fname">Firstname</label>
                        <input class="form-control" type="text" id="fname" name="fname" required>
                    </div>
                    <div class="mb-3 col-xl">
                        <label class="form-label" for="lname">Lastname</label>
                        <input class="form-control" type="text" id="lname" name="lname" required>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="mb-3 col-xl">
                        <label class="form-label" for="phone">Phone</label>
                        <input class="form-control" type="phone" id="phone" name="phone" required>
                    </div>
                    <div class="mb-3 col-xl">
                        <label class="form-label" for="email">Email</label>
                        <input class="form-control" type="email" id="email" name="email" required>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="mb-3 col-xl">
                        <label class="form-label" for="pOneFullname">Parent 1 fullname</label>
                        <input class="form-control" type="text" id="pOneFullname" name="pOneFullname">
                    </div>
                    <div class="mb-3 col-xl">
                        <label class="form-label" for="pTwoFullname">Parent 2 fullname</label>
                        <input class="form-control" type="text" id="pTwoFullname" name="pTwoFullname">
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="mb-3 col-xl">
                        <label class="form-label" for="pOnePhone">Parent 1 Phone</label>
                        <input class="form-control" type="tel" id="pOnePhone" name="pOnePhone" required>
                    </div>
                    <div class="mb-3 col-xl">
                        <label class="form-label" for="pTwoPhone">Parent 2 Phone</label>
                        <input class="form-control" type="tel" id="pTwoPhone" name="pTwoPhone" required>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="mb-3 col-xl">
                        <label class="form-label" for="origin">Origin</label>
                        <select class="form-control" id="origin" name="origin" required>
                            <option value="n/a">Select country</option>
                        </select>
                    </div>
                    <div class="mb-3 col-xl">
                        <label class="form-label" for="grade">Grade</label>
                        <input class="form-control" type="number" id="grade" name="grade" required>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="mb-3 col-xl">
                        <label class="form-label" for="email">Password</label>
                        <input class="form-control" type="password" id="password" name="password" required>
                    </div>
                    <div class="mb-3 col-xl">
                        <label class="form-label" for="email">Confirm password</label>
                        <input class="form-control" type="password" id="confirmPassword" name="confirmPassword" required>
                    </div>
                    <span class="form-label text-danger" id="error-msg">${error}</span>
                </div>

                <div>
                    <button class="btn btn-primary" type="submit" id="register">Register</button>
                </div>
            </form>
        </div>
    </section>
</main>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.11.1/baguetteBox.min.js"></script>
<script src="assets/js/vanilla-zoom.js"></script>
<script src="assets/js/theme.js"></script>
<script>
    fetch('https://restcountries.com/v2/all')
        .then(response => response.json())
        .then(data => {
            // Get the select element
            var selectElement = document.getElementById("origin");

            // Populate the select with options
            data.forEach(function (country) {
                var option = document.createElement("option");
                option.value = country.name;
                option.text = country.name;
                selectElement.appendChild(option);
            });
        })
        .catch(error => {
            console.log("Error fetching countries data:", error);
        });

    // ====================
    // const form = document.getElementsByTagName("form");
    // const registerBtn = document.getElementById("register");
    // const password = document.getElementById("password");
    // const confirmPassword = document.getElementById("confirmPassword");
    // const ErrorMesg = document.getElementById("error-msg");
    //
    // const submitForm = () => {
    //     let pwd1 = registerBtn.type = "text";
    //     let pwd2 = registerBtn.type = "text";
    //
    //     if (pwd1 != pwd2) {
    //         ErrorMesg.innerText = "Password do not match";
    //         return false;
    //     }
    //     return true;
    // }
</script>
</body>
</html>
