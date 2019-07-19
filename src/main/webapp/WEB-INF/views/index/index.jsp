<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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


    <title>LANDING PAGE</title>
</head>
<body>
<%----------------------------------------------------------------------------%>
<div class="container">

    <div class="classicContainer row">
        <div class="classicHalf helloImg">
        </div>
        <div class="classicHalf">
            <div class="classicTitle">
                <span>We create </span><br>
                <span style="font-size: 50px;">Wedding Websites</span>
            </div>

            <div class="classicBoldText">
                <span>Register as Organizer and share with your friends <br>your Wedding Website</span>
            </div>

            <div class="classicClean">
                <button class="btn btn-primary"
                        onclick="javascript:document.location.href='/login/registerOrganizer'">
                    REGISTER AS ORGANIZER
                </button>
            </div>


            <div class="classicText">
                <span>Register as Guest and see Weddings details</span>
            </div>

            <div class="classicClean">
                <button class="btn btn-outline-secondary"
                        onclick="javascript:document.location.href='/login/registerGuest'">
                    REGISTER AS GUEST
                </button>
            </div>

            <hr style="width: 50%; border: 1px dot-dash">


            <div class="classicText">
                <span>If you've got account just login</span>
                &nbsp;
                <button class="btn btn-light"
                        onclick="javascript:document.location.href='/login/login'">
                    LOGIN
                </button>
            </div>


        </div>
    </div>


    <%--    <div class="classicContainerHello">--%>
    <%--        <div class="row">--%>
    <%--        <div class="classicEmpty"></div>--%>

    <%--        <div class="classicTitleBig" style="color: white">We create wedding websites</div>--%>
    <%--        </div>--%>

    <%--        <div class="row">--%>
    <%--        <div class="classicBoldText"  style="color: white">Register as Organizer and share with your friends your Wedding Website</div>--%>
    <%--        </div>--%>
    <%--        <div>--%>
    <%--            <button class="btn btn-outline-primary"--%>
    <%--                onclick="javascript:document.location.href='/login/registerOrganizer'">--%>
    <%--            REGISTER AS ORGANIZER--%>
    <%--        </button>--%>
    <%--        </div>--%>
    <%--        <br>--%>

    <%--        <div class="classicBoldText" style="color: white;">Register as Guest to see Wedding details.</div>--%>
    <%--        <br>--%>
    <%--        <button class="btn btn-outline-secondary"--%>
    <%--            onclick="javascript:document.location.href='/login/registerGuest'">--%>
    <%--            REGISTER AS GUEST--%>
    <%--        </button>--%>
    <%--        <br>--%>

    <%--        <div class="classicEmpty"></div>--%>
    <%--    </div>--%>


    <%--<div class="classicContainer row">--%>
    <%--    <div class="classicHalf helloImg">--%>
    <%--    </div>--%>
    <%--    <div class="classicHalf">--%>
    <%--        <div class="classicEmpty"></div>--%>
    <%--        <div class="classicTitle">--%>
    <%--            <p>Hello h3</p>--%>
    <%--        </div>--%>
    <%--        <div class="classicBoldText">--%>
    <%--            <p>blaka h4</p>--%>
    <%--        </div>--%>
    <%--        <div class="classicText">--%>
    <%--            <p>blaka h5</p>--%>
    <%--        </div>--%>
    <%--        <div class="classicEmpty"></div>--%>
    <%--    </div>--%>

    <%--</div>--%>

    <%--    <div class="classicContainer row">--%>
    <%--        <div class="classicRectangle helloImg">--%>
    <%--        </div>--%>
    <%--        <div class="classicRectangle">--%>
    <%--            <div class="classicEmpty"></div>--%>
    <%--            <div class="classicTitle">--%>
    <%--                <p>Hello h3</p>--%>
    <%--            </div>--%>
    <%--            <div class="classicBoldText">--%>
    <%--                <p>blaka h4</p>--%>
    <%--            </div>--%>
    <%--            <div class="classicText">--%>
    <%--                <p>blaka h5</p>--%>
    <%--            </div>--%>
    <%--        </div>--%>

    <%--    </div>--%>

    <%--    <div class="row">--%>

    <%--        <div class="classicContainerHalf">--%>
    <%--        <div class="classicRectangle helloImg">--%>
    <%--        </div>--%>
    <%--        <div class="classicRectangle">--%>
    <%--            <div class="classicEmpty"></div>--%>
    <%--            <div class="classicTitle">--%>
    <%--                <p>Hello h3</p>--%>
    <%--            </div>--%>
    <%--            <div class="classicBoldText">--%>
    <%--                <p>blaka h4</p>--%>
    <%--            </div>--%>
    <%--            <div class="classicText">--%>
    <%--                <p>blaka h5</p>--%>
    <%--            </div>--%>
    <%--        </div>--%>
    <%--        </div>--%>

    <%--        <div class="classicContainerHalf">--%>
    <%--            <div class="classicRectangle helloImg">--%>
    <%--            </div>--%>
    <%--            <div class="classicRectangle">--%>
    <%--                <div class="classicEmpty"></div>--%>
    <%--                <div class="classicTitle">--%>
    <%--                    <p>Hello h3</p>--%>
    <%--                </div>--%>
    <%--                <div class="classicBoldText">--%>
    <%--                    <p>blaka h4</p>--%>
    <%--                </div>--%>
    <%--                <div class="classicText">--%>
    <%--                    <p>blaka h5</p>--%>
    <%--                </div>--%>
    <%--            </div>--%>
    <%--        </div>--%>

    <%--    </div>--%>


</div>
<%----------------------------------------------------------------------------%>
<%--FOOTER--%>
<%@include file="../parts/footer.jspf" %>
<%--FOOTER--%>
</body>
</html>
