<%--
  Created by IntelliJ IDEA.
  User: korneliajagodzinska
  Date: 05/09/2020
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<ul>
    <li>
        <a href="${pageContext.request.contextPath}/">Home</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/student/form">Student form</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/student">Student list</a>
    </li>
</ul>
