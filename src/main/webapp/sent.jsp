<%--
  Created by IntelliJ IDEA.
  User: jazwa
  Date: 2019-03-16
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Message sent</title>
</head>
<body>
<%String recipent = (String) request.getAttribute("recipent");%>
<p>e-mail sent to <%=recipent%></p>
</body>
</html>
