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
        <title>Registro</title>
    </head>
    <body>
        <%
            
            //Prametros
            int id;
            String nom,email,tel,user,contra;
            String calle,numint,numext,cp,colonia,delegacion,estado;
            String descripcion;
            
            nom=request.getParameter("nomC");
            email=request.getParameter("correo");
            tel=request.getParameter("tel");
            user=request.getParameter("usuario");
            contra=request.getParameter("contrax");
            calle=request.getParameter("calle");
            numint=request.getParameter("numint");
            numext=request.getParameter("numext");
            cp=request.getParameter("cp");
            colonia=request.getParameter("colonia");
            delegacion=request.getParameter("delegacion");
            estado=request.getParameter("estado");
            descripcion=request.getParameter("comment");
            
            try{
                BD.Conexion con= new BD.Conexion();
                con.conectar();
                ResultSet r1= con.consulta("call addCentro('"+0+"','"+nom+"','"+user+"','"+contra+"','"
                +descripcion+"','"+tel+"','"+email+"','"+calle+"','"+numint+"','"+numext+"','"+cp+"','"+colonia+"','"+delegacion+"','"+estado+"');");
                
                if(r1.next())
                {
                    String mensaje=r1.getString("msj");
                
                    out.println("<script>alert('"+mensaje+"')</script>");
                    out.println("<meta http-equiv='refresh' content='.0000001;URL=http://localhost:8080/Dogs/menuAdmin.jsp'/>");
                }
                  
            }
            catch(SQLException error){
                out.print(error.toString());
            }
                
            

            
        
        %>
    </body>
</html>
