<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--    HEADER--%>
    <%@include file="../parts/header.jspf" %>
    <%--    HEADER--%>
    <title>Title</title>
</head>
<body class="fullPicture4">
<%----------------------------------------------------------------------------%>
<div class="container">

    <div class="classicContainer row">
        <div class="classicRectangle">
            <div class="classicTitle">
                <span style="font-size: 50px;">
                    <c:out value="${weddingDetails.bride}"/>&nbsp;&&nbsp;<c:out value="${weddingDetails.bridegroom}"/>
                </span>
                <br>
                <span>are getting married!</span>
            </div>
            <div class="classicBoldText">
                <span>Meet them at <c:out value="${weddingDetails.date}"/></span>
            </div>
        </div>

        <div class="classicRectangle">
            <div>
                <iframe width="100%" height="300" id="gmap_canvas" src="https://maps.google.com/maps?q=${weddingDetails.address}&t=&z=9&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="yes" marginheight="0" marginwidth="0"></iframe>
            </div>
        </div>

        <div class="classicRectangle">
            <div class="classicTitle">
                <span>Be prepare for</span>
                <br>
                <span style="font-size: 50px;">
                    <c:out value="${weddingDetails.music}"/>&nbsp;bounce!
                </span>
            </div>
        </div>

    </div>


    <div>
        Bride <c:out value="${weddingDetails.bride}"/> & Bridegroom <c:out value="${weddingDetails.bridegroom}"/>
    </div>

    <div>
        <c:out value="${weddingDetails.id}"/><br>
        <c:out value="${weddingDetails.date}"/><br>
        <c:out value="${weddingDetails.address}"/><br>
    </div>


</div>
<%----------------------------------------------------------------------------%>
<%--FOOTER--%>
<%@include file="../parts/footer.jspf" %>
<%--FOOTER--%>
</body>
</html>
