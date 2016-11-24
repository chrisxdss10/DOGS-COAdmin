<%-- 
    Document   : RegistrarC
    Created on : 23-nov-2016, 23:07:15
    Author     : chistopher
--%>

<%@page import="java.io.FileInputStream"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            //Prametros
            int id;
            String nom,email,tel,user,contra;
            String calle,numint,numext,cp,colonia,delegacion,estado;
            String descripcion;
            
            try{
                BD.Conexion con= new BD.Conexion();
                con.conectar();
                ResultSet r1= con.consulta("");
            }
            catch(SQLException error){
                out.print(error.toString());
            }
            
        
        %>
    </body>
</html>
