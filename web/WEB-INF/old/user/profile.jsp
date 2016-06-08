<%@ page import="model.User" %>
<%@ page import="model.Preference" %><%--
  Created by IntelliJ IDEA.
  User: suiken
  Date: 07/06/16
  Time: 22:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile</title>
</head>
<body>
    <%
        User user = (User) request.getAttribute("user");
        Preference preference = (Preference) request.getAttribute("preference");
    %>
    <form method="POST" action="profile">
        <label>Login</label><input name="login" type="text" value="<%= user.getLogin() %>"/><br/>
        <label>Prénom</label><input name="firstName" type="text" value="<%= user.getFirstName() %>"/><br/>
        <label>Nom de famille</label><input name="lastName" type="text" value="<%= user.getLastName() %>"/><br/>
        <label>Adresse</label><input name="address" type="text" value="<%= user.getAddress() %>"/><br/>
        <label>Ville</label><input name="city" type="text" value="<%= user.getCity() %>"/><br/>
        <label>État</label><input name="state" type="text" value="<%= user.getState() %>"/><br/>
        <br/>
        <label>Cigarette</label><input name="smoke" type="checkbox" <% if(preference.isSmoke()) out.println("checked"); %>/><br/>
        <label>Téléphone</label><input name="phone" type="checkbox" <% if(preference.isPhone()) out.println("checked"); %>/><br/>
        <label>Email</label><input name="email" type="checkbox" <% if(preference.isEmail()) out.println("checked"); %>/><br/>
        <label>Climatisation</label><input name="aircon" type="checkbox" <% if(preference.isAircon()) out.println("checked"); %>/><br/>
        <label>Animal</label><input name="animal" type="checkbox" <% if(preference.isAnimal()) out.println("checked"); %>/><br/>
        <label>Valise</label><input name="suitcase" type="checkbox" <% if(preference.isSuitcase()) out.println("checked"); %>/><br/>
        <label>Vélo</label><input name="bicycle" type="checkbox" <% if(preference.isBicycle()) out.println("checked"); %>/><br/>
        <label>Ski</label><input name="ski" type="checkbox" <% if(preference.isSki()) out.println("checked"); %>/><br/>
        <input type="submit" value="Mettre à jour" />
    </form>
</body>
</html>
