<%@include file="components/header.jsp"%>
<jsp:useBean id="userBean" class="com.example.registrationauca.beans.UserBean" scope="request" />
<main class="page contact-us-page">
    <section class="clean-block clean-form dark">
        <div class="container">
            <div class="block-heading">
                <h2 class="text-info">Signup</h2>
                <p>Register today and start acquiring life changing knowledge ever in history</p>
                <span class="form-label text-success" id="success-msg">${success}</span>
            </div>
            <form method="post" action="SignupUser.jsp">
                <div class="row mb-3">
                    <div class="mb-3 col-xl">
                        <label class="form-label" for="email">Email</label>
                        <input class="form-control" type="text" id="email" name="email" value="${userBean.email}" required>
                    </div>
                    <div class="mb-3 col-xl">
                        <label class="form-label" for="password">Password</label>
                        <input class="form-control" type="password" id="password" name="password" value="${userBean.password}" required>
                    </div>
                </div>
                <div>
                    <button class="btn btn-primary" type="submit" id="register">Signup</button>
                    <span class="form-label text-danger" id="error-msg">${error}</span>
                </div>
            </form>
        </div>
    </section>
</main>
<%@include file="components/footer.jsp"%>