<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
<body>
<h2>Hello World!</h2>

<% String s = "Witaj na stronie"; %>
<p><%=s %></p>
<% s = "Zegnaj"; %>
<p><%=s %></p>

<% List<Integer> liczby = new ArrayList<>();
liczby.add(2000);
liczby.add(3000);
liczby.add(4000);
%>

<% for (int i = 0; i < liczby.size(); i++) {%>
    <p><%=liczby.get(i)%></p>
<%} %>
</body>
</html>
