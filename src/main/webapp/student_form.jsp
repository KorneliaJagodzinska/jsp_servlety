<%--
  Created by IntelliJ IDEA.
  User: korneliajagodzinska
  Date: 05/09/2020
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Student Form</title>
</head>
<body>
<jsp:include page="navigator.jsp"/>
<form action="${pageContext.request.contextPath}/student/form" method="post">
    <%--first name input type text--%>
    <label for="inputName">First name:</label> <input id="inputName" type="text" name="firstNameValue"><br/>
    <%--last name input type text--%>
    <label for="inputLast">Last name:</label> <input id="inputLast" type="text" name="lastNameValue"><br/>
    <%--birth date input type date--%>
    <label for="inputBirth">Birth date:</label> <input id="inputBirth" type="date" name="birthDateValue"><br/>
    <%--special input type checkbox--%>
    <label for="inputSpecial">Special:</label> <input id="inputSpecial" type="checkbox" name="specialValue"><br/>
    <%--ects input type number step=0.01--%>
    <label for="inputECTS">ECTS:</label> <input id="inputECTS" type="number" min="0" step="0.01" name="ectsValue"><br/>
    <input type="submit">
</form>
</body>
</html>
