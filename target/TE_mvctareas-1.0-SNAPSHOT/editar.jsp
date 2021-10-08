<%@page import="com.emergente.modelo.Tareas"%>
<%
    Tareas item = (Tareas) request.getAttribute("miTareas");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%= (item.getId() == 0) ? "Nuevo registro":"Editar registro" %></h1>
        <form action="MainController" method="post">
            <input type="hidden" name="id" value="<%= item.getId() %>"/>
            <table>
                <tr>
                    <td>Tarea</td>
                    <td><input type="text" name="tarea" value="<%= item.getTareas() %>"/> </td>
                </tr>
                <tr>
                    
                    <td>Prioridad</td>
                    <td>
                        <select name="prioridad"  value="<%= item.getPrioridad() %>">
                            <option value="seleccione una "></option>
                            <option value=" Alto">Alto</option>  
                            <option value=" Medio">Medio</option> 
                            <option value=" Bajo">Bajo</option> 
                        </select>
                    </td>
                 </tr>
                 <tr>
                    <td>Completado</td>
                    <td>
                         <select name="completado"  value="<%= item.getCompletado() %>">
                            <option value="seleccione una "></option>
                            <option value="concluido">Concluido</option>  
                            <option value=" pendiente">Pendiente</option> 
                            
                        </select>
                            
                  </td>
                </tr>
                <tr>
                    <td></td>
                    <td> <input type="submit" value="Enviar"></td>
                </tr>
            </table>
            
        </form>
    </body>
</html>
