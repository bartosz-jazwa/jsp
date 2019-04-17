<%@ page import="java.util.Random" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: jazwa
  Date: 2019-03-16
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Losowanie</title>

</head>
<body>
<%Random random = new Random();%>
<ol>
<%
    for (int i = 0; i <5; i++) {%>
    <li>Wylosowano <%=random.nextInt(1000)%></li>
    <%}%>

</ol>

</body>
</html>
