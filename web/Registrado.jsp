<%-- 
    Document   : Registrado
    Created on : 04/07/2017, 16:45:13
    Author     : William-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Programación Avanzada! ESPE</h1>
        <h1>Alencastro-Guamán-Orta!</h1>
        <%
            String UsuarioIn="", RolIn="", NombreIn="";
            if(request.getParameter("usuario") != null) {
                UsuarioIn = request.getParameter("usuario");
            }
            if(request.getParameter("rol") != null) {
                RolIn = request.getParameter("rol");
            }
            if(request.getParameter("nombre") != null) {
                NombreIn = request.getParameter("nombre");
            }
        %>
        <jsp:useBean id="sesionActual" class="bean.sesion" scope="session"/>
        <jsp:setProperty name="sesionActual" property="usuario" value="<%=UsuarioIn%>"/>
        <jsp:setProperty name="sesionActual" property="rol" value="<%=RolIn%>"/>
        <jsp:setProperty name="sesionActual" property="nombre" value="<%=NombreIn%>"/>
        <table>
            <tr><td>Usuario: </td><td><jsp:getProperty name="sesionActual" property="usuario"/></td></tr>
            <tr><td>Rol: </td><td><jsp:getProperty name="sesionActual" property="rol"/></td></tr>
            <tr><td>Nombre: </td><td><jsp:getProperty name="sesionActual" property="nombre"/></td></tr>
        </table>
    </body>
</html>
