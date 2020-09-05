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

<%
    out.print("<table>");
    // stwórz tabliczkę mnożenia (tabela)
    // rozmiar tabliczki mnożenia to 10 x 10
    // każda komórka w tabeli powinna zawierać jeden wynik mnożenia
    // tabela powinna być stylizowana i mieć obramowanie
    for (int i = 1; i <= 10; i++) {
        out.print("<tr>"); // table row
        for (int j = 1; j <= 10; j++) {
            out.print("<td>");
            out.print(i*j);
            out.print("</td>");
        }
        out.print("</tr>");
    }
    out.print("</table>");
%>
</body>
</html>
