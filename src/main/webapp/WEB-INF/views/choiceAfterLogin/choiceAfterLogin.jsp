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


    <%--    <button class="btn btn-outline-success my-2 my-sm-0"--%>
    <%--            onclick="javascript:document.location.href='/organizer/addWedding'">--%>
    <%--        ADD NEW WEDDING--%>
    <%--    </button>--%>
<%--    <button class="btn btn-outline-success my-2 my-sm-0"--%>
<%--            onclick="javascript:document.location.href='/home/fullWeddingList'">--%>
<%--        EXPLORE LIST OF ALL WEDDINGS--%>
<%--    </button>--%>

<%--    <c:if test="${not empty organizer.id}">--%>
<%--        <button class="btn btn-outline-success my-2 my-sm-0"--%>
<%--                onclick="javascript:document.location.href='/organizer/addWedding'">--%>
<%--            ADD NEW WEDDING--%>
<%--        </button>--%>
<%--    </c:if>--%>


    <div class="loginRegisterContainer">
        <div class="classicRectangle">
            <div class="classicTitle">
                <span>Hello&nbsp;
                    <c:out value="${organizer.organizerName}"/>
                    <c:out value="${guest.guestName}"/>
                </span>
            </div>

            <div class="classicBoldText">
                <span>Your role is <c:out value="${organizer['class'].simpleName}"/>
                    <c:out value="${guest['class'].simpleName}"/> so you can
                </span>
            </div>

            <c:if test="${not empty organizer.id}">
                <div class="classicClean">
                    <button class="btn btn-primary"
                            onclick="javascript:document.location.href='/organizer/addWedding'">
                        ADD NEW WEDDING
                    </button>
                </div>
            </c:if>

            <div class="classicClean">
                <button class="btn btn-primary"
                        onclick="javascript:document.location.href='/home/fullWeddingList'">
                    SEE ALL WEDDINGS LIST
                </button>
            </div>



            <div class="form-row">
                <hr style="width: 50%; border: 1px dot-dash">
            </div>

        </div>
    </div>


</div>
<%----------------------------------------------------------------------------%>
<%--FOOTER--%>
<%@include file="../parts/footer.jspf" %>
<%--FOOTER--%>
</body>
</html>
