<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.LocalTime" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: jazwa
  Date: 2019-03-16
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Godzina wejscia</title>
</head>
<body>
<%LocalTime now = LocalTime.now();%>
<p>Wszedles na strone o <%=now.getHour()%>:<%=now.getMinute()%>:<%=now.getSecond()%></p>

<%
    Map<String,String[]> params = request.getParameterMap();
    for (String p:params.keySet()) {
        String[] values = params.get(p);%>
        <p><%=p%>:
        <%for (String v:values) {%>
            <%=v%>
        <%}%>
        </p>
    <%}%>

<%response.setIntHeader("Refresh",5);%>
</body>
</html>
