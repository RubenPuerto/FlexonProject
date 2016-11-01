<%-- 
    Document   : welcome
    Created on : Oct 31, 2016, 10:15:39 PM
    Author     : RubenP
--%>

<%@page import="javax.faces.bean.SessionScoped"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <%
        
    String RolUser = (String)request.getSession().getAttribute("Rol_User");
        
    %>
    <body>
        <h3>Welcome ${sessionScope.UserName}</h3>
        <h3>Welcome ${sessionScope.Rol_User}</h3>
        <h3>Rol del usuario es <%=RolUser %></h3>
        <a href="Validar">Salir</a>
    </body>
</html>
