<%-- 
    Document   : eliminar
    Created on : 28-nov-2016, 0:01:11
    Author     : chistopher
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar</title>
    </head>
    <body>
        <%
            String centro=request.getParameter("nomCentro");
          
                String mensaje, name;
                try{
                    BD.Conexion con= new BD.Conexion();
                    con.conectar();
                    ResultSet rs;
                    rs=con.consulta("call BorrarCentro('"+centro+"');");
                    if(rs.next())
                    {
                        mensaje=rs.getString("msj");
                        out.println("<script>alert('"+mensaje+"');</script>");
                        out.println("<meta http-equiv='refresh' content='.0000001;URL=http://localhost:8080/Dogs/menuAdmin.jsp'/>");
                    }
                }
                catch(SQLException error){
                    out.print(error.toString());
                }
                                    
                                    
                                    
               
                                
        %>
    </body>
</html>
