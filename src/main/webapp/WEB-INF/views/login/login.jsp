<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--    HEADER--%>
    <%--    <%@include file="../parts/header.jspf" %>--%>
    <%--    HEADER--%>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <style>
        <%@include file="../../../resources/css/style.css" %>
    </style>
    <%--BOOTSTRAP--%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link href="https://fonts.googleapis.com/css?family=DM+Serif+Display|Lato&display=swap" rel="stylesheet">
    <%-----------------------------------------------------------------------%>


    <title>REGISTER GUEST PAGE</title>
</head>
<body class="fullPicture">
<%----------------------------------------------------------------------------%>
<div class="container">


    <%--    <h2>Login</h2>--%>
    <%--    <c:if test="${success == false}">--%>
    <%--        <p>Login failed. Email or password is incorrect.</p>--%>
    <%--    </c:if>--%>
    <%--    <form action="/login/login" method="post">--%>
    <%--        Email: <input type="email" name="email" required/><br><br>--%>
    <%--        Password: <input type="password" name="password" required/><br><br>--%>
    <%--        <input type="submit" value="LOGIN"/>--%>
    <%--    </form>--%>


    <div class="loginRegisterContainer">
        <div class="form-group">

            <div class="form-row">
                <h2>Login</h2>
            </div>
            <div class="form-row">
                <c:if test="${success == false}">
                    <div class="error">Login failed. Email or password is incorrect.</div>
                </c:if>
            </div>
            <form action="/login/login" method="post">
                <div class="form-row">
                    Email: <input type="email"
                                  name="email"
                                  required
                                  class="form-control"
                                  placeholder="Email.."
                                  aria-describedby="emailHelp"/>
                    <small id="emailHelp" class="form-text text-muted">
                        Type here your email.
                    </small>
                </div>
                <div class="form-row">
                    Password: <input type="password"
                                     name="password"
                                     required
                                     class="form-control"
                                     placeholder="Password.."
                                     aria-describedby="passwordHelp"/>
                    <small id="passwordHelp" class="form-text text-muted">
                        Type here password.
                    </small>
                </div>
                <div class="form-row">
                    <hr style="width: 50%; border: 1px dot-dash">
                </div>
                <div class="form-row">
                    <input type="submit" value="LOGIN" class="btn btn-primary" style="width: 100%">
                </div>
            </form>

        </div>
    </div>


</div>
<%----------------------------------------------------------------------------%>
<%--FOOTER--%>
<%@include file="../parts/footer.jspf" %>
<%--FOOTER--%>
</body>
</html>




