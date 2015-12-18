<%@ tag description="Template Tag" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<!doctype>
<html>
<head>
    <link href="<c:url value="/resources/c/main.css"/>" rel="stylesheet">
    <script src ="<c:url value="/resources/js/ProfnastilUtils.js"/> "></script>
    <%--<script src ="${pageContext.request.contextPath}/resources/js/bookUtils.js"></script>--%>
    <%--  <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" >--%>

    <title>Feiron</title>
    <div class="login-link-container">

    </div>

</head>
<body>
<div class = "content">
    <h1><a href="/"><img src="/resources/img/logo-1.jpg" width="200" height="100"></a></h1>
    <jsp:doBody/>
</div>

</body>
</html>
