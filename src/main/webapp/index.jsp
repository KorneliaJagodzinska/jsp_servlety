<%@ page import="webappdemo.database.HibernateUtil" %><%--
  Created by IntelliJ IDEA.
  User: korneliajagodzinska
  Date: 05/09/2020
  Time: 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Index Page</title>
    <style>
        table, td, tr{
            border: 1px solid #000;
            padding: 2px;
        }
    </style>
</head>
<body>
<jsp:include page="navigator.jsp"/>

<form action="${pageContext.request.contextPath}/" method="get">
    <label for="colInput">Ilość kolumn:</label> <input id="colInput" type="number" min="1" step="1" name="colNumber">
    <label for="rowInput">Ilość kolumn:</label> <input id="rowInput" type="number" min="1" step="1" name="rowNumber">
    <input type="submit">
</form>
<hr> <%--linia horyzontalna--%>
<%
    HibernateUtil.getSessionFactory(); //spowoduje załadowanie bazy
    String colNumberString = request.getParameter("colNumber");
    int colNumber;
    if(colNumberString == null){
        colNumber = 10; // domyślna wartość
    }else{
        colNumber = Integer.parseInt(colNumberString);
    }
    String rowNumberString = request.getParameter("rowNumber");
    int rowNumber;
    if(rowNumberString == null){
        rowNumber = 10; // domyślna wartość
    }else{
        rowNumber = Integer.parseInt(rowNumberString);
    }
    out.print("<table>");
    // stwórz tabliczkę mnożenia (tabela)
    // rozmiar tabliczki mnożenia to 10 x 10
    // każda komórka w tabeli powinna zawierać jeden wynik mnożenia
    // tabela powinna być stylizowana i mieć obramowanie
    for (int i = 1; i <= rowNumber; i++) {
        out.print("<tr>"); // table row
        for (int col = 1; col <= colNumber; col++) {
            out.print("<td>");
            out.print(i*col);
            out.print("</td>");
        }
        out.print("</tr>");
    }
    out.print("</table>");
%>


<%
    out.print("<table>");
    // stwórz tabliczkę mnożenia (tabela)
    // rozmiar tabliczki mnożenia to 10 x 10
    // każda komórka w tabeli powinna zawierać jeden wynik mnożenia
    // tabela powinna być stylizowana i mieć obramowanie
    for (int i = 1; i <= 10; i++) {
        out.print("<tr>"); // table row
        for (int col = 1; col <= 10; col++) {
            out.print("<td>");
            out.print(i*col);
            out.print("</td>");
        }
        out.print("</tr>");
    }
    out.print("</table>");
%>
</body>
</html>
