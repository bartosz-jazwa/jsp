<%--
  Created by IntelliJ IDEA.
  User: jazwa
  Date: 2019-03-16
  Time: 13:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="error.jsp" %>
<html>
<head>
    <title>String</title>
</head>
<body>
<form action="StringServlet" method="post">
    <p>Podaj imie</p> <br>
    <input type="text" name="przetworz_string"/><br>

    <input type="radio" name="todo" value="reverse" checked = "checked"> Reverse<br>
    <input type="radio" name="todo" value="upper"> Upper<br>
    <input type="radio" name="todo" value="lower"> Lower<br>
    <input type="radio" name="todo" value="random"> Create random word<br>
    <input type="submit" value="go!"><br>
</form>

<form action="EmailServlet" method="post">
    My e-mail: <input type="text" name="email_address"/><br>
    Subject: <input type="text" name="email_subject"/><br>
    Message: <input type="text" name="email_message"/><br>

    <input type="submit" value="send email">
</form>


</body>
</html>
