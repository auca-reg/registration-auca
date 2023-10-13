<%@include file="components/header.jsp"%>
<jsp:useBean id="userBean" class="com.example.registrationauca.beans.UserBean" scope="request" />
<main class="page contact-us-page">
    <section class="clean-block clean-form dark">
        <div class="container">
            <div class="block-heading">
                <h2 class="text-info">Login</h2>
                <p>Enter your login credentials</p>
                <span class="form-label text-success" id="success-msg">${success}</span>
            </div>
            <form method="post" action="loginUser.jsp">
                <div class="mb-3">
                    <label class="form-label" for="email">Email</label>
                    <input class="form-control" type="email" id="email" name="email" value="${userBean.email}">
                </div>
                <div class="mb-3">
                    <label class="form-label" for="password">Password</label>
                    <input class="form-control" type="password" id="password" name="password" value="${userBean.password}">
                </div>
                <div class="mb-3">
                    <input class="btn btn-primary" type="submit" value="login" />
                    <span class="form-label text-danger" id="error-msg">${error}</span>
                </div>
            </form>
        </div>
    </section>
</main>
<%@include file="components/footer.jsp"%>