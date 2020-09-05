<%--
  Created by IntelliJ IDEA.
  User: korneliajagodzinska
  Date: 05/09/2020
  Time: 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

<form action="" method="get">
    <label for="colInput">Ilość kolumn:</label> <input id="colInput" type="number" min="1" step="1" name="colNumber">
    <input type="submit">
</form>
<hr> <%--linia horyzontalna--%>
<%
    String colNumberString = request.getParameter("colNumber");
    int colNumber;
    if(colNumberString == null){
        colNumber = 10; // domyślna wartość
    }else{
        colNumber = Integer.parseInt(colNumberString);
    }
    out.print("<table>");
    // stwórz tabliczkę mnożenia (tabela)
    // rozmiar tabliczki mnożenia to 10 x 10
    // każda komórka w tabeli powinna zawierać jeden wynik mnożenia
    // tabela powinna być stylizowana i mieć obramowanie
    for (int i = 1; i <= 10; i++) {
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
