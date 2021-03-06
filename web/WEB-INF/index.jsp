<%@ page import="model.Publication" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dao.PublicationsDAO" %>
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
        <%
            if(request.getSession().getAttribute("login") != null){
                out.println("hello" + request.getSession().getAttribute("login") + "<br/>");
        %>
            <a href="disconnect">Déconnexion</a><br/>

            <a href="addpublication">Créer une publication</a><br/>

            <a href="userpublications">Voir ses publications</a><br/>

            <a href="profile">Voir son profil</a> <br/>

        <%
                for(Publication publication: PublicationsDAO.getPublications()){
        %>
                    <%= publication.getContent() %><br/>
        <%
                }

            }else{
        %>
            <form method="POST" action="/checklogin">
                Identifiant <input name="login" type="text" /><br/>
                Mot de passe <input name="password" type="password" /><br/>
                <input type="submit" value="Valider" />
            </form>
        <%
            }
        %>
    </body>
</html>
