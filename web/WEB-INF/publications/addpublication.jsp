<%--
  Created by IntelliJ IDEA.
  User: suiken
  Date: 06/06/16
  Time: 23:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Créer une publication</title>
</head>
<body>
    <form method="POST" action="/addpublication">
        <label>Description</label><input name="content" type="text"/>
        <label>Nombre de places</label><input name="nbPlaces" type="number"/>
        <label>Date du trajet</label><input name="runDate" type="date"/>
        <label>Fréquence</label><input name="frequency" type="number"/>
        <label>Ville de départ</label><input name="departure" type="text"/>
        <label>Ville d'arrivée</label><input name="arrival" type="text"/>
    </form>
</body>
</html>
