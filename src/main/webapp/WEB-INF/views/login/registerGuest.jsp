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


    <div class="loginRegisterContainer">
        <div class="form-group">

            <div class="form-row">
                <h2>Register</h2>
            </div>

            <form:form modelAttribute="guest" method="post">

                <div class="form-row">
                    <div><form:errors path="guestName" cssClass="error"/></div>
                    <div><form:errors path="email" cssClass="error"/></div>
                    <div><form:errors path="password" cssClass="error"/></div>
                </div>

                <div class="form-row">
                    Name: <form:input path="guestName"
                                      cssClass="form-control"
                                      placeholder="Guest name.."
                                      aria-describedby="nameHelp"/>
                    <small id="nameHelp" class="form-text text-muted">
                        Type here your name.
                    </small>
                </div>


                <div class="form-row">
                    Email: <form:input path="email"
                                       cssClass="form-control"
                                       placeholder="Email.."
                                       aria-describedby="emailHelp"/>
                    <small id="emailHelp" class="form-text text-muted">
                        Type here your email.
                    </small>
                </div>

                <div class="form-row">
                    Password: <form:input path="password"
                                          cssClass="form-control"
                                          placeholder="Password.."
                                          aria-describedby="passwordHelp"/>
                    <small id="passwordHelp" class="form-text text-muted">
                        Type here password.
                    </small>
                </div>

                <div class="form-row">
                    Confirm password: <input type="password"
                                             name="confirmPassword"
                                             class="form-control"
                                             placeholder="Password again.."
                                             aria-describedby="confirmHelp"/>
                    <small id="confirmHelp" class="form-text text-muted">
                        Re-type here password.
                    </small>
                </div>


                <div class="form-row">
                    <hr style="width: 50%; border: 1px dot-dash">
                </div>


                <div class="form-row">
                    <input type="submit" value="SAVE" class="btn btn-primary" style="width: 100%">
                </div>
                <div class="form-row">
                    <a href="../" class="goBack"><small> <<< Go back?</small></a>
                </div>

            </form:form>
        </div>

    </div>


</div>
<%----------------------------------------------------------------------------%>
<%--FOOTER--%>
<%@include file="../parts/footer.jspf" %>
<%--FOOTER--%>
</body>
</html>
