<%--
  Created by IntelliJ IDEA.
  User: suiken
  Date: 28/05/16
  Time: 23:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign In</title>
</head>
<body>
    <form method="POST" action="/checksignin">
        Login <input name="login" type="text" /> <br/>
        Password <input name="password" type="password" /> <br/>
        Last Name <input name="last_name" type="text" /> <br/>
        First Name <input name="first_name" type="text" /> <br/>
        Address <input name="address" type="text" /> <br/>
        City <input name="city" type="text" /> <br/>
        State <input name="state" type="text" /> <br/>
        Email <input name="email" type="text" /> <br/>
        <input type="submit" value="Valider" />
    </form>
</body>
</html>
