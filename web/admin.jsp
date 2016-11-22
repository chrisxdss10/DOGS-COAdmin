
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.*, java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
 <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Administrador</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
        
    </head>
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        
        <nav class="navbar navbar-default nav-app">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" style="color:black;"> <span class="icon-paw"></span>Administrador</a>
                </div>
            </div>
        </nav>
        
        <div class="container">
            <h2>Bienvenido</h2>
            <br>
            <form name="form" action="admin.jsp" method="post">
                <div c id="cuadro">
                    <label >Clave de Acceso:</label>
                    <input type="password" placeholder="Clave de Acceso" class="form-control" autocomplete="off" name="clave" id="clave">
                    <label id="texto" style="color: red; visibility: hidden;">Clave Incorrecta</label>
                </div>
                <input type="submit" class="btn" value="Ingresar" id="mybtn" name="mybtn">
            </form>
        </div>
        
        <%
            if (request.getParameter("mybtn") != null ){
            String clav;
            clav = request.getParameter("clave");
            
            BD.cAdmin ad= new BD.cAdmin(clav);

                 if(ad.getOpc()==1){
                    
                    out.println("<meta http-equiv='refresh' content='.0000001;URL=http://localhost:8080/Dogs/menuAdmin.jsp'/>");
                 }
                 else
                 {
                     out.println("<script> document.getElementById('cuadro').className = 'form-group has-error';</script>");
                     out.println("<script> document.getElementById('texto').style.visibility='visible';</script>");
                     out.println("<script> document.getElementById('clave').value='"+ad.getMiMensaje()+"';</script>");
                     
                 }
                   
            }
                 
            
        %>
        
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>
        <script src="js/vendor/bootstrap.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
