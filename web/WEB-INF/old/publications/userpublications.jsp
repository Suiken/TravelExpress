<%@ page import="model.Publication" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: suiken
  Date: 06/06/16
  Time: 23:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        ArrayList<Publication> publications = (ArrayList<Publication>) request.getAttribute("publications");
        for(Publication publication : publications){
    %>
            <%= publication.getContent() %><br/>
    <%
        }
    %>
</body>
</html>
