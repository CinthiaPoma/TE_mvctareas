<%@page import="java.util.ArrayList"%>
<%@page import="com.emergente.modelo.Tareas"%>
<%
    ArrayList<Tareas> lista=(ArrayList<Tareas>) session.getAttribute("listatar");
 %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>LISTA DE TAREAS </h1>
        <a href="MainController?lis=nuevo">Nuevo Registro</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Tarea</th>
                <th>Prioridad</th>
                <th>Completado</th>
                <th></th>
                <th></th>
                
            </tr>
            <%
                if(lista !=null){
                    for(Tareas item : lista){
                %>
             <tr>
                <th><%= item.getId()%></th>
                <th><%= item.getTareas()%></th>
                <th><%= item.getPrioridad()%></th>
              <td><input type="checkbox" disabled <%=item.getCompletado().equals("concluido")?"checked" : " "%>></td>
                <th><a href="MainController?lis=editar&id=<%= item.getId()%>">Editar</a></th>
                <th><a href="MainController?lis=eliminar&id=<%= item.getId()%>"
                       onclick="return confirm('Esta seguro de eliminar el registro ?');">Eliminar</a></th>
                
            </tr>
            <%
                   }
               }
                %>
            
        </table>
    </body>
</html>
