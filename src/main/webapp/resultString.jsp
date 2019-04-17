<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: jazwa
  Date: 2019-03-16
  Time: 13:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="error.jsp" %>
<html>
<head>
    <title>result</title>
</head>
<body>
<%
    String result = (String) request.getAttribute("result");

%>
<p><%=result%></p>
</body>
</html>
