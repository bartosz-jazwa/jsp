<%--
  Created by IntelliJ IDEA.
  User: jazwa
  Date: 2019-03-16
  Time: 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>wrong name</title>
</head>
<body>
<%
    String imie = request.getParameter("klucz_imienia");
%>
<p>bledne imie <%=imie%></p>
</body>
</html>
