<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
        <div class="classicRectangle">
            <div>
<%--                <span>Your role is <c:out value="${organizer['class'].simpleName}"/>--%>
<%--                    <c:out value="${guest['class'].simpleName}"/> so you can--%>
<%--                </span>--%>
    <h2>Weddings List</h2>
<%--                <c:choose>--%>
<%--                    <c:when test="${fn:contains(pageContext.request.requestURI, 'weddingList')}">--%>
<%--                        <h2>Your Weddings List</h2>--%>
<%--                    </c:when>--%>
<%--                    <c:otherwise>--%>
<%--                        <h2>All Weddings List</h2>--%>
<%--                    </c:otherwise>--%>
<%--                </c:choose>--%>
            </div>
            <div class="classicClean">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Address</th>
                        <th scope="col">Date</th>
                        <%--            <th scope="col">---</th>--%>
                        <th scope="col">Organizer</th>
                        <th scope="col">Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="wedding" items="${weddingList}">
                        <tr>
                            <th scope="row"><c:out value="${wedding.id}"/></th>
                            <td><c:out value="${wedding.address}"/></td>
                            <td><c:out value="${wedding.date}"/></td>
                                <%--                <td><c:out value="${wedding.place.title}"/></td>--%>
                            <td><c:out value="${wedding.organizer.organizerName}"/></td>
                            <td>
                                <c:if test="${organizer.id == wedding.organizer.id}">
                                    <button class="btn btn-warning btn-sm"
                                            onclick="javascript:document.location.href='/organizer/addWedding?id=${wedding.id}'">
                                        UPDATE
                                    </button>
                                    <button class="btn btn-danger btn-sm"
                                            onclick="javascript:document.location.href='/organizer/deleteWedding?id=${wedding.id}'">
                                        REMOVE
                                    </button>
                                </c:if>
                                <button class="btn btn-primary btn-sm"
                                        onclick="javascript:document.location.href='/wedding/details?id=${wedding.id}'">
                                    DETAILS
                                </button>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>



<%--    <table class="table table-hover">--%>
<%--        <thead>--%>
<%--        <tr>--%>
<%--            <th scope="col">#</th>--%>
<%--            <th scope="col">Address</th>--%>
<%--            <th scope="col">Date</th>--%>
<%--            &lt;%&ndash;            <th scope="col">---</th>&ndash;%&gt;--%>
<%--            <th scope="col">Organizer</th>--%>
<%--            <th scope="col">Actions</th>--%>
<%--        </tr>--%>
<%--        </thead>--%>
<%--        <tbody>--%>
<%--        <c:forEach var="wedding" items="${weddingList}">--%>
<%--            <tr>--%>
<%--                <th scope="row"><c:out value="${wedding.id}"/></th>--%>
<%--                <td><c:out value="${wedding.address}"/></td>--%>
<%--                <td><c:out value="${wedding.date}"/></td>--%>
<%--                    &lt;%&ndash;                <td><c:out value="${wedding.place.title}"/></td>&ndash;%&gt;--%>
<%--                <td><c:out value="${wedding.organizer.organizerName}"/></td>--%>
<%--                <td>--%>
<%--                    <c:if test="${organizer.id == wedding.organizer.id}">--%>
<%--                        <button class="btn btn-secondary btn-sm"--%>
<%--                                onclick="javascript:document.location.href='/organizer/addWedding?id=${wedding.id}'">--%>
<%--                            UPDATE--%>
<%--                        </button>--%>
<%--                        <button class="btn btn-danger btn-sm"--%>
<%--                                onclick="javascript:document.location.href='/organizer/deleteWedding?id=${wedding.id}'">--%>
<%--                            REMOVE--%>
<%--                        </button>--%>
<%--                    </c:if>--%>
<%--                    <button class="btn btn-danger btn-sm"--%>
<%--                            onclick="javascript:document.location.href='/wedding/details?id=${wedding.id}'">--%>
<%--                        DETAILS--%>
<%--                    </button>--%>

<%--                </td>--%>


<%--                    &lt;%&ndash;                <td>&ndash;%&gt;--%>


<%--                    &lt;%&ndash;                    <c:choose>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                        <c:when test="${userSession.id == currentId}">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                            <button class="btn btn-secondary btn-sm"&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                                    onclick="javascript:document.location.href='/organizer/addWedding?id=${wedding.id}'">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                                Update&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                            </button>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                            <button class="btn btn-danger btn-sm"&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                                    onclick="javascript:document.location.href='/organizer/deleteWedding?id=${wedding.id}'">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                                Remove&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                            </button>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                        </c:when>&ndash;%&gt;--%>

<%--                    &lt;%&ndash;                        <c:otherwise>&ndash;%&gt;--%>

<%--                    &lt;%&ndash;                        </c:otherwise>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                    </c:choose>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                    <button class="btn btn-Info btn-sm"&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                            onclick="javascript:document.location.href='/wedding/details?id=${wedding.id}'">&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                        Details&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                    </button>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;                </td>&ndash;%&gt;--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--        </tbody>--%>
<%--    </table>--%>

<%--    <div>--%>
<%--        <button class="btn btn-outline-success my-2 my-sm-0"--%>
<%--                onclick="javascript:document.location.href='/home/fullWeddingList'">--%>
<%--            EXPLORE LIST OF ALL WEDDINGS--%>
<%--        </button>--%>

<%--        <c:if test="${not empty organizer.id}">--%>
<%--            <button class="btn btn-outline-success my-2 my-sm-0"--%>
<%--                    onclick="javascript:document.location.href='/organizer/addWedding'">--%>
<%--                ADD NEW WEDDING--%>
<%--            </button>--%>
<%--        </c:if>--%>
<%--    </div>--%>



</div>
<%----------------------------------------------------------------------------%>
<%--FOOTER--%>
<%@include file="../parts/footer.jspf" %>
<%--FOOTER--%>
</body>
</html>
