<%@include file="components/header.jsp"%>
<jsp:useBean id="studBean" class="com.example.registrationauca.beans.StudentBean" scope="request" />
<main class="page contact-us-page">
    <section class="clean-block clean-form dark">
        <div class="container">
            <div class="block-heading">
                <h2 class="text-info">Admission</h2>
                <p>Register today and start acquiring life changing knowledge ever in history</p>
                <span class="form-label text-success" id="success-msg">${success}</span>
            </div>
            <form method="post" action="registerStudent.jsp">
                <div class="row mb-3">
                    <div class="mb-3 col-xl">
                        <label class="form-label" for="fname">Firstname</label>
                        <input class="form-control" type="text" id="fname" name="firstName" value="${studBean.firstName}" required>
                    </div>
                    <div class="mb-3 col-xl">
                        <label class="form-label" for="lname">Lastname</label>
                        <input class="form-control" type="text" id="lname" name="lastName" value="${studBean.lastName}" required>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="mb-3 col-xl">
                        <label class="form-label" for="phone">Phone</label>
                        <input class="form-control" type="text" id="phone" name="studentPhone" value="${studBean.studentPhone}" required>
                    </div>
                    <div class="mb-3 col-xl">
                        <label class="form-label" for="email">Email</label>
                        <input class="form-control" type="email" id="email" name="studentEmail" value="${studBean.studentEmail}" required>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="mb-3 col-xl">
                        <label class="form-label" for="pOneFullname">Parent 1 fullname</label>
                        <input class="form-control" type="text" id="pOneFullname" name="parentOneFullname" value="${studBean.parentOneFullname}">
                    </div>
                    <div class="mb-3 col-xl">
                        <label class="form-label" for="pTwoFullname">Parent 2 fullname</label>
                        <input class="form-control" type="text" id="pTwoFullname" name="parentTwoFullname" value="${studBean.parentTwoFullname}">
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="mb-3 col-xl">
                        <label class="form-label" for="pOnePhone">Parent 1 Phone</label>
                        <input class="form-control" type="tel" id="pOnePhone" name="parentOnePhone" value="${studBean.parentOnePhone}" required>
                    </div>
                    <div class="mb-3 col-xl">
                        <label class="form-label" for="pTwoPhone">Parent 2 Phone</label>
                        <input class="form-control" type="tel" id="pTwoPhone" name="parentTwoPhone" value="${studBean.parentTwoPhone}" required>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="mb-3 col-xl">
                        <label class="form-label" for="origin">Origin</label>
                        <select class="form-control" id="origin" name="origin">
                            <option value="${studBean.origin}">Select country</option>
                        </select>
                    </div>
                    <div class="mb-3 col-xl">
                        <label class="form-label" for="grade">Grade</label>
                        <input class="form-control" type="number" id="grade" name="grade" value="${studBean.grade}" required>
                    </div>
                </div>

<%--                <div class="row mb-3">--%>
<%--                    <div class="mb-3 col-xl">--%>
<%--                        <label class="form-label" for="studentPassportPicture">Passport Picture</label>--%>
<%--                        <input type="file" class="form-control" name="studentPassportPicture" id="studentPassportPicture" required />--%>
<%--                    </div>--%>
<%--                    <div class="mb-3 col-xl">--%>
<%--                        <label class="form-label" for="certificate">Certificate (Diploma)</label>--%>
<%--                        <input type="file" class="form-control" id="certificate" name="certificate" required />--%>
<%--                    </div>--%>
<%--                </div>--%>

                <div class="mb-3">
                    <button class="btn btn-primary" type="submit" id="register">Send Admission</button>
                    <span class="form-label text-danger" id="error-msg">${error}</span>
                </div>
            </form>

        </div>
    </section>
</main>
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
</script>
<%@include file="components/footer.jsp"%>