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
        <h1>LEWA</h1>
        <ul>
            <li>Id: ${requestScope.student.id}</li>
            <li>Imię: ${requestScope.student.firstName}</li>
            <li>Nazwisko:${requestScope.student.lastName}</li>
            <li>Wiek:${requestScope.student.age}</li>
            <li>Special:${requestScope.student.special}</li>
            <li>ESCT:${requestScope.student.ects}</li>
        </ul>
    </div>
    <div class="details-section">
        <h2>Oceny studenta:</h2>
        <div class="grade-container">
            <div class="grade-table-header">
                <div class="grade-table-header-cell">
                    Id
                </div>
                <div class="grade-table-header-cell">
                    Value
                </div>
                <div class="grade-table-header-cell">
                    Subject
                </div>
                <div class="grade-table-header-cell">
                    Datetime
                </div>
                <div class="grade-table-header-cell">
                    Actions
                </div>
            </div>
            <c:forEach items="${requestScope.student.grades}" var="ocena">
                <div class="grade-table-row">
                    <div class="grade-table-cell">
                            ${ocena.id}
                    </div>
                    <div class="grade-table-cell">
                            ${ocena.value}
                    </div>
                    <div class="grade-table-cell">
                            ${ocena.subject}
                    </div>
                    <div class="grade-table-cell">
                            ${ocena.dateTimeCreated}
                    </div>
                    <div class="grade-table-cell">
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

</body>
</html>
