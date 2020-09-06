<%--
  Created by IntelliJ IDEA.
  User: korneliajagodzinska
  Date: 06/09/2020
  Time: 12:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Student Details</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>
<jsp:include page="navigator.jsp"/>
<div class ="details-container">
    <div class="details-section">
        Lewa
    </div>
    <div class="details-section">
        Prawa
    </div>
</div>

</body>
</html>
