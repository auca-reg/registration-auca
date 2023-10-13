<%@include file="components/header.jsp"%>
<jsp:useBean id="userBean" class="com.example.registrationauca.beans.UserBean" scope="request" />
<main class="page contact-us-page">
    <section class="clean-block clean-form dark">
        <div class="container">
            <div class="block-heading">
                <h2 class="text-info">Admin Panel</h2>
                <span class="form-label text-success" id="success-msg">${success}</span>
            </div>
            <div class="card mt-4 mb-4">
                <div class="card-body">
                    Admin Home
                </div>
            </div>
        </div>
    </section>
</main>
<%@include file="components/footer.jsp"%>