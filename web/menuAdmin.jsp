
<%@page import="BD.Centro"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<!DOCTYPE html>
<html>
    <head>
         <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Administrador</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/miestilo.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        
        <nav class="navbar navbar-default nav-app">
            <div class="container">
                <div class="navbar-header  micolor">
                    <button class="navbar-toggle" data-toggle="collapse" data-target="#menu">
                        <span class="icon-bar app-icon"></span>
                        <span class="icon-bar app-icon"></span>
                        <span class="icon-bar app-icon"></span>
                    </button>
                    <a class="navbar-brand" style="color:black;"> <span class="icon-paw"></span>Administrador</a>
                </div>
                <div class="collapse navbar-collapse" id="menu">
                    <ul class="nav navbar-nav navbar-right">
                        
                        <li><a href="salir.jsp" style="color:black; font-size: 16px;"><span class="glyphicon glyphicon-off"></span>&nbsp;Salir</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        
        <div class="container">
          

          <ul class="nav nav-tabs">
            <li class="active"><a href="#agregar" data-toggle="tab">Agregar Centro</a></li>
            <li><a href="#eliminar" data-toggle="tab">Eliminar Centro</a></li>
            <li><a href="#consultar" data-toggle="tab">Consultar Centros</a></li>
          </ul>
          
            
            <div class="tab-content">
                <div class="tab-pane fade in active" id="agregar">
                    <h3>Registrar Centro</h3>
                    <form action="RegistrarC.jsp" class="form-horizontal" method="post">
                      <div class="form-group">
                          <h4 class="text-center">Datos generales</h4><br> 
                            <label for="NombreC" class="col-xs-12 col-sm-12 col-md-1 col-md-offset-1 col-lg-1 col-lg-offset-1 control-label"> Nombre Centro</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="nomC" id="nomC" placeholder="Centro" autocomplete="off" minlength='1' maxlength='30'title='Utilice menos de 30 caracteres' required>
                        </div>
                            <label for="TelefonoC" class="col-xs-12 col-sm-12 col-md-1 col-lg-1 control-label">Teléfono</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="tel" id="tel" placeholder="Teléfono" autocomplete="off" minlength='1' maxlength='20'title='Utilice menos de 20 caracteres' required>
                        </div>
                      </div>
                      <div class="form-group">
                            <label for="Correo" class="col-xs-12 col-sm-12 col-md-1 col-md-offset-1 col-lg-1 col-lg-offset-1 control-label">Correo</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="correo" id="correo" placeholder="Correo" autocomplete="off" minlength='1' maxlength='30'title='Utilice menos de 30 caracteres' required>
                        </div>
                            <label for="usuario" class="col-xs-12 col-sm-12 col-md-1 col-lg-1 control-label">Usuario</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="usuario" id="usuario" placeholder="Usuario" autocomplete="off" minlength='1' maxlength='30'title='Utilice menos de 30 caracteres' required>
                        </div>
                      </div>
                      <div class="form-group">
                            <label for="Contraseña" class="col-xs-12 col-sm-12 col-md-2 col-lg-2 control-label">Contraseña</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="contrax" id="contrax" placeholder="Contraseña" autocomplete="off" minlength='1' maxlength='30'title='Utilice menos de 30 caracteres' required>
                        </div>
                            <label for="Repetir" class="col-xs-12 col-sm-12 col-md-1 col-lg-1 control-label">Confirmar</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="conf" id="conf" placeholder="Confirmar Contraseña" autocomplete="off">
                        </div>
                      </div>
                        
                      <div id="con" class="form-group"> 
                          <label id="texto" style="color: red; visibility: hidden;">Las contraseñas no coinciden</label>
                      </div>
                        
                      <div class="form-group">
                          <h4 class="text-center">Dirección</h4> <br>
                          <label for="calle" class="col-xs-12 col-sm-12 col-md-2 col-lg-2 control-label">Calle</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="calle" id="calle" placeholder="Calle" autocomplete="off" minlength='1' maxlength='30'title='Utilice menos de 30 caracteres' required >
                        </div>
                            <label for="Numint" class="col-xs-12 col-sm-12 col-md-1 col-lg-1 control-label">Número Interior</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="numint" id="conf" placeholder="Num. Int." autocomplete="off" minlength='1' maxlength='4'title='Utilice menos de 4 caracteres' required>
                        </div>
                      </div>
                        
                      <div class="form-group">
                          <label for="Numext" class="col-xs-12 col-sm-12 col-md-2 col-lg-2 control-label">Número Exterior</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="numext" id="numext" placeholder="Núm. Ext." autocomplete="off" minlength='1' maxlength='4'title='Utilice menos de 4 caracteres' required>
                        </div>
                            <label for="cp" class="col-xs-12 col-sm-12 col-md-1 col-lg-1 control-label">Código Postal</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="cp" id="cp" placeholder="C.P." autocomplete="off" minlength='1' maxlength='5'title='Utilice menos de 5 caracteres' required>
                        </div>
                      </div>
                        
                      <div class="form-group">
                          <label for="colonia" class="col-xs-12 col-sm-12 col-md-2 col-lg-2 control-label">Colonia</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="colonia" id="colonia" placeholder="Colonia" autocomplete="off" minlength='1' maxlength='30'title='Utilice menos de 30 caracteres' required>
                        </div>
                            <label for="delegacion" class="col-xs-12 col-sm-12 col-md-1 col-lg-1 control-label">Delegación</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="delegacion" id="delegacion" placeholder="Delegación" autocomplete="off" minlength='1' maxlength='30'title='Utilice menos de 30 caracteres' required>
                        </div>
                            
                      </div>
                        
                      <div class="form-group">
                          <label for="estado" class="col-xs-12 col-sm-12 col-md-2 col-lg-2 control-label">Estado</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="estado" id="estado" placeholder="Estado" autocomplete="off" minlength='1' maxlength='30'title='Utilice menos de 30 caracteres' required>
                        </div>    
                      </div>
                        <br>
                      <div class="form-group">
                          <h4 class="text-center">Perfil</h4> <br>
                          <label for="descripcion" class="col-xs-12 col-sm-12 col-md-2 col-lg-2 control-label">Descripción</label>
                        <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                            <textarea class="form-control" name="comment" id="comment" placeholder="Descripción del centro"></textarea>
                        </div>
                      </div>
                       <div class="form-group">
                         <br>
                          <label for="Foto" class="col-xs-12 col-sm-12 col-md-2 col-lg-2 control-label">Foto</label>
                        <div class="col-xs-8 col-sm-8 col-md-4 col-lg-4">
                            <input type="file" name="picture" id="picture" accept="image/*">
                        </div> 
                      </div> 
                        <br>
                        <div class="col-xs-offset-5 col-lg-offset-5">
                            <input type='submit' name='RegistroC' id='RegistroC' class='btn btn-lg' value='Registrar' onClick='return validar(contrax, conf);'>
                            <br><br><br><br>
                        </div>
                    </form>
                </div>
                
                <div class="tab-pane fade" id="eliminar">
                    <h3>Eliminar información del Centro</h3>
                    <form action="eliminarAd.jsp" class="form-horizontal" method="post">
                        <div class="form-group">
                          <br> 
                            <label for="Centro" class="col-xs-12 col-sm-12 col-md-1 col-md-offset-1 col-lg-1 col-lg-offset-1 control-label"> Nombre Centro</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="nomCentro" id="nomCentro" placeholder="Centro" autocomplete="off">
                          <br>
                              <input type='submit' name='BorrarC' id='BorrarC' class='btn' value='Borrar'>                          
                        </div> 
                        </div>
    
                    </form>
                    <br>
                </div>
                
                <div class="tab-pane fade" id="consultar">
                    <h3>Consulta general</h3>
                    <form action="menuAdmin.jsp" class="form-horizontal" method="post">
                        
                    </form>
                    <br>
                    <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Nombre</th>
                                <th>Teléfono</th>
                                <th>Correo</th>
                                <th>Dirección</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                LinkedList<Centro> lista = BD.ConsultaCentro.getCentros();
                                for (int i=0;i<lista.size();i++)
                                {
                                    out.println("<tr>");
                                        out.println("<td>"+(i+1)+"</td>");
                                        out.println("<td>"+lista.get(i).getNombre()+"</td>");
                                        out.println("<td>"+lista.get(i).getTelefono()+"</td>");
                                        out.println("<td>"+lista.get(i).getCorreo()+"</td>");
                                        out.println("<td>"+lista.get(i).getDireccion()+"</td>");
                                    out.println("</tr>");
                                }
                            %>
                        </tbody>
                    </table>
                    </div>
                </div>
                

               
            </div>
            
        </div>
        <%
            
            
            HttpSession sesion = request.getSession();
            if(sesion.getAttribute("Admin") == null){
              String e="¿No eres administrador?";
              response.sendRedirect("upsyAd.html?e="+e+"");
            }
           
        %>
        
        
        
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>
        <script src="js/vendor/bootstrap.min.js"></script>
        <script src="js/main.js"></script>
        
    </body>
</html>
