<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--    HEADER--%>
    <%@include file="../parts/header.jspf" %>
    <%--    HEADER--%>
    <title>Title</title>
</head>
<body>
<%----------------------------------------------------------------------------%>
<div class="container">


    <div class="classicContainer row">
        <div class="classicHalf helloImg2">

        </div>

        <div class="classicHalf">
            <div class="form-group" style="margin-left: 50px;">

                <div class="form-row">
                    <h2>Add New Wedding</h2>
                </div>

                <form:form method="post" modelAttribute="wedding">

                    <%--                <div class="form-row">--%>
                    <%--                    <div><form:errors path="guestName" cssClass="error"/></div>--%>
                    <%--                    <div><form:errors path="email" cssClass="error"/></div>--%>
                    <%--                    <div><form:errors path="password" cssClass="error"/></div>--%>
                    <%--                </div>--%>

                    <div class="form-row">
                        Bride Name: <form:input path="bride"
                                                cssClass="form-control"
                                                placeholder="Bride name.."
                                                aria-describedby="brideHelp"/>
                        <small id="brideHelp" class="form-text text-muted">
                            Type here Bride name.
                        </small>
                        <div><form:errors path="bride" cssClass="error"/></div>
                    </div>

                    <div class="form-row">
                        Bridegroom Name: <form:input path="bridegroom"
                                                     cssClass="form-control"
                                                     placeholder="Bridegroom name.."
                                                     aria-describedby="bridegroomHelp"/>
                        <small id="bridegroomHelp" class="form-text text-muted">
                            Type here bridegroom name.
                        </small>
                        <div><form:errors path="bridegroom" cssClass="error"/></div>
                    </div>

                    <div class="form-row">
                        Party Adress: <form:input path="address"
                                                  cssClass="form-control"
                                                  placeholder="address.."
                                                  aria-describedby="addressdHelp"/>
                        <small id="addressHelp" class="form-text text-muted">
                            Type here party address.
                        </small>
                        <div><form:errors path="address" cssClass="error"/></div>
                    </div>

                    <div class="form-row">
                        Music Type: <form:input path="music"
                                                cssClass="form-control"
                                                placeholder="music.."
                                                aria-describedby="musicHelp"/>
                        <small id="musicHelp" class="form-text text-muted">
                            Type here music type.
                        </small>
                        <div><form:errors path="music" cssClass="error"/></div>
                    </div>

                    <div class="form-row">
                        Date: <form:input type="date" path="date"
                                          cssClass="form-control"
                                          placeholder="date.."
                                          aria-describedby="dateHelp"/>
                        <small id="addressHelp" class="form-text text-muted">
                            Type here date.
                        </small>
                        <div><form:errors path="date" cssClass="error"/></div>
                    </div>


                    <div class="form-row">
                        <hr style="width: 50%; border: 1px dot-dash">
                    </div>


                    <div class="form-row">
                        <input type="submit" value="SAVE" class="btn btn-primary" style="width: 100%">
                    </div>
                    <div class="form-row">
                        <a href="../" class="goBack">
                            <small> <<< Go back?</small>
                        </a>
                    </div>


                </form:form>
            </div>
        </div>

    </div>


    <%--    <div class="loginRegisterContainer">--%>
    <%--        <div class="form-group">--%>

    <%--            <div class="form-row">--%>
    <%--                <h2>Add New Wedding</h2>--%>
    <%--            </div>--%>

    <%--            <form:form method="post" modelAttribute="wedding">--%>

    <%--                &lt;%&ndash;                <div class="form-row">&ndash;%&gt;--%>
    <%--                &lt;%&ndash;                    <div><form:errors path="guestName" cssClass="error"/></div>&ndash;%&gt;--%>
    <%--                &lt;%&ndash;                    <div><form:errors path="email" cssClass="error"/></div>&ndash;%&gt;--%>
    <%--                &lt;%&ndash;                    <div><form:errors path="password" cssClass="error"/></div>&ndash;%&gt;--%>
    <%--                &lt;%&ndash;                </div>&ndash;%&gt;--%>

    <%--                <div class="form-row">--%>
    <%--                    Bride Name: <form:input path="bride"--%>
    <%--                                            cssClass="form-control"--%>
    <%--                                            placeholder="Bride name.."--%>
    <%--                                            aria-describedby="brideHelp"/>--%>
    <%--                    <small id="brideHelp" class="form-text text-muted">--%>
    <%--                        Type here Bride name.--%>
    <%--                    </small>--%>
    <%--                    <div><form:errors path="bride" cssClass="error"/></div>--%>
    <%--                </div>--%>

    <%--                <div class="form-row">--%>
    <%--                    Bridegroom Name: <form:input path="bridegroom"--%>
    <%--                                                 cssClass="form-control"--%>
    <%--                                                 placeholder="Bridegroom name.."--%>
    <%--                                                 aria-describedby="bridegroomHelp"/>--%>
    <%--                    <small id="bridegroomHelp" class="form-text text-muted">--%>
    <%--                        Type here bridegroom name.--%>
    <%--                    </small>--%>
    <%--                    <div><form:errors path="bridegroom" cssClass="error"/></div>--%>
    <%--                </div>--%>

    <%--                <div class="form-row">--%>
    <%--                    Party Adress: <form:input path="address"--%>
    <%--                                              cssClass="form-control"--%>
    <%--                                              placeholder="address.."--%>
    <%--                                              aria-describedby="addressdHelp"/>--%>
    <%--                    <small id="addressHelp" class="form-text text-muted">--%>
    <%--                        Type here party address.--%>
    <%--                    </small>--%>
    <%--                    <div><form:errors path="address" cssClass="error"/></div>--%>
    <%--                </div>--%>

    <%--                <div class="form-row">--%>
    <%--                    Music Type: <form:input path="music"--%>
    <%--                                            cssClass="form-control"--%>
    <%--                                            placeholder="music.."--%>
    <%--                                            aria-describedby="musicHelp"/>--%>
    <%--                    <small id="musicHelp" class="form-text text-muted">--%>
    <%--                        Type here music type.--%>
    <%--                    </small>--%>
    <%--                    <div><form:errors path="music" cssClass="error"/></div>--%>
    <%--                </div>--%>

    <%--                <div class="form-row">--%>
    <%--                    Date: <form:input type="date" path="date"--%>
    <%--                                      cssClass="form-control"--%>
    <%--                                      placeholder="date.."--%>
    <%--                                      aria-describedby="dateHelp"/>--%>
    <%--                    <small id="addressHelp" class="form-text text-muted">--%>
    <%--                        Type here date.--%>
    <%--                    </small>--%>
    <%--                    <div><form:errors path="date" cssClass="error"/></div>--%>
    <%--                </div>--%>


    <%--                <div class="form-row">--%>
    <%--                    <hr style="width: 50%; border: 1px dot-dash">--%>
    <%--                </div>--%>


    <%--                <div class="form-row">--%>
    <%--                    <input type="submit" value="SAVE" class="btn btn-primary" style="width: 100%">--%>
    <%--                </div>--%>
    <%--                <div class="form-row">--%>
    <%--                    <a href="../" class="goBack">--%>
    <%--                        <small> <<< Go back?</small>--%>
    <%--                    </a>--%>
    <%--                </div>--%>


    <%--            </form:form>--%>
    <%--        </div>--%>

    <%--    </div>--%>


    <%-----------------------------------------------------%>
    <%--    <div class="container register-form">--%>
    <%--        <div class="form-group">--%>
    <%--            <form:form method="post" modelAttribute="wedding">--%>
    <%--            <div class="note" style="font-size: 150%">--%>
    <%--                <p>Add a new event or update existing</p>--%>
    <%--            </div>--%>

    <%--&lt;%&ndash;            <div class="form-content">&ndash;%&gt;--%>
    <%--            <div>--%>
    <%--                <div class="row">--%>
    <%--                    <div class="col-md-12">--%>
    <%--                    <form:errors path="bride"/>--%>
    <%--                        <form:errors path="bridegroom"/>--%>
    <%--                        <form:errors path="address"/>--%>
    <%--                        <form:errors path="date"/>--%>

    <%--                    </div>--%>
    <%--                </div>--%>
    <%--                <div class="row">--%>
    <%--                    <div class="col-md-6">--%>
    <%--                        <form:input path="bride"--%>
    <%--                                             class="form-control"--%>
    <%--                                             placeholder="Bride Name.."--%>
    <%--                                             value=""/>--%>
    <%--                    </div>--%>
    <%--                    <div class="col-md-6">--%>
    <%--                        <form:input path="bridegroom"--%>
    <%--                                             class="form-control"--%>
    <%--                                             placeholder="Bridegroom Name.."--%>
    <%--                                             value=""/>--%>
    <%--                    </div>--%>
    <%--                </div>--%>
    <%--                <div class="row">--%>
    <%--                    <div class="col-md-6">--%>
    <%--                        <form:input path="address"--%>
    <%--                                             class="form-control"--%>
    <%--                                             placeholder="Titile, City.."--%>
    <%--                                             value=""/>--%>
    <%--                    </div>--%>
    <%--                    <div class="col-md-6">--%>
    <%--                        <form:input type="date" path="date"--%>
    <%--                                          class="form-control"--%>
    <%--                                          value=""/>--%>
    <%--                    </div>--%>

    <%--                </div>--%>

    <%--            </div>--%>
    <%--            <br>--%>
    <%--            <div style="text-align: center; margin:auto">--%>
    <%--                <input type="submit" class="btn btn-primary btn-sm btn-block" value="SAVE"/>--%>
    <%--            </div>--%>
    <%--            <br>--%>
    <%--            <div style="text-align: center; margin:auto">--%>
    <%--                <button class="btn btn-secondary btn-sm"--%>
    <%--                        onclick="javascript:document.location.href='/wedding/all'">--%>
    <%--                    SEE ALL WEDDINGS--%>
    <%--                </button>--%>
    <%--            </div>--%>
    <%--        </div>--%>


    <%--        </form:form>--%>
    <%--    </div>--%>
    <%--</div>--%>


</div>
<%----------------------------------------------------------------------------%>
<%--FOOTER--%>
<%@include file="../parts/footer.jspf" %>
<%--FOOTER--%>
</body>
</html>
