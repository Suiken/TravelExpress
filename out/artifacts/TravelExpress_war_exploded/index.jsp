<%--
  Created by IntelliJ IDEA.
  User: suiken
  Date: 25/05/16
  Time: 23:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Travel Express - Log In</title>
    </head>
    <body>
        <form method="POST" action="/checklogin">
            Identifiant <input name="login" type="text" /><br/>
            Mot de passe <input name="password" type="password" /><br/>
            <input type="submit" value="Valider" />
        </form>
    </body>
</html>
