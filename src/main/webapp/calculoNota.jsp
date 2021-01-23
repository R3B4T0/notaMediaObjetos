<%-- 
    Document   : calculoNota
    Created on : 23-ene-2021, 20:21:42
    Author     : David Rebato
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="miNotaMedia" class="clases.NotaMedia" />
        <% String nombre = request.getParameter("nombre");
           float nota1 = Float.parseFloat(request.getParameter("nota1")); 
           float nota2 = Float.parseFloat(request.getParameter("nota2"));
           float nota3 = Float.parseFloat(request.getParameter("nota3"));
        %>
        <jsp:setProperty name="miNotaMedia" property="nombre" value="<%=nombre%>" />
        <jsp:setProperty name="miNotaMedia" property="nota1" value="<%=nota1%>" />
        <jsp:setProperty name="miNotaMedia" property="nota2" value="<%=nota2%>" />
        <jsp:setProperty name="miNotaMedia" property="nota3" value="<%=nota3%>" />
        <h1>Nota media de <jsp:getProperty name="miNotaMedia" property="nombre" /></h1>
        <h2>Tu nota media es de: <jsp:getProperty name="miNotaMedia" property="notaMedia" /></h2>
        <h2 style="color: <jsp:getProperty name="miNotaMedia" property="color" />"><jsp:getProperty name="miNotaMedia" property="aprobado" /></h2>
    </body>
</html>
