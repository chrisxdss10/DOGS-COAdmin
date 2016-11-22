
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
          

          <ul class="nav nav-tabs">
            <li class="active"><a href="#agregar" data-toggle="tab">Agregar Centro</a></li>
            <li><a href="#eliminar" data-toggle="tab">Eliminar Centro</a></li>
            <li><a href="#consultar" data-toggle="tab">Consultar Centros</a></li>
          </ul>
          
            
            <div class="tab-content">
                <div class="tab-pane active" id="agregar">
                    <h3>Registrar Centro</h3>
                    <form action="menuAdmin.jsp" class="form-horizontal" method="post">
                      <div class="form-group">
                          <h4 class="text-center">Datos generales</h4><br> 
                            <label for="NombreC" class="col-xs-12 col-sm-12 col-md-1 col-md-offset-1 col-lg-1 col-lg-offset-1 control-label"> Nombre Centro</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                          <input type="text" class="form-control" name="nomC" id="nomC" placeholder="Centro">
                        </div>
                            <label for="TelefonoC" class="col-xs-12 col-sm-12 col-md-1 col-lg-1 control-label">Teléfono</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="tel" id="tel" placeholder="Teléfono">
                        </div>
                      </div>
                      <div class="form-group">
                            <label for="Correo" class="col-xs-12 col-sm-12 col-md-1 col-md-offset-1 col-lg-1 col-lg-offset-1 control-label">Correo</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="correo" id="correo" placeholder="Correo">
                        </div>
                            <label for="usuario" class="col-xs-12 col-sm-12 col-md-1 col-lg-1 control-label">Usuario</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="usuario" id="usuario" placeholder="Usuario">
                        </div>
                      </div>
                      <div class="form-group">
                            <label for="Contraseña" class="col-xs-12 col-sm-12 col-md-2 col-lg-2 control-label">Contraseña</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="contrax" id="contrax" placeholder="Contraseña">
                        </div>
                            <label for="Repetir" class="col-xs-12 col-sm-12 col-md-1 col-lg-1 control-label">Confirmar</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="conf" id="conf" placeholder="Confirmar Contraseña">
                        </div>
                      </div>
                        
                      <div id="con" class="form-group error"> 
                            <p>Las contraseñas no coinciden</p>
                      </div>
                        
                      <div class="form-group">
                          <h4 class="text-center">Dirección</h4> <br>
                          <label for="calle" class="col-xs-12 col-sm-12 col-md-2 col-lg-2 control-label">Calle</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="calle" id="calle" placeholder="Calle">
                        </div>
                            <label for="Numint" class="col-xs-12 col-sm-12 col-md-1 col-lg-1 control-label">Número Interior</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="numint" id="conf" placeholder="Num. Int.">
                        </div>
                      </div>
                        
                      <div class="form-group">
                          <label for="Numext" class="col-xs-12 col-sm-12 col-md-2 col-lg-2 control-label">Número Exterior</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="numext" id="numext" placeholder="Núm. Ext.">
                        </div>
                            <label for="cp" class="col-xs-12 col-sm-12 col-md-1 col-lg-1 control-label">Código Postal</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="cp" id="cp" placeholder="C.P.">
                        </div>
                      </div>
                        
                      <div class="form-group">
                          <label for="colonia" class="col-xs-12 col-sm-12 col-md-2 col-lg-2 control-label">Colonia</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="colonia" id="colonia" placeholder="Colonia">
                        </div>
                            <label for="delegacion" class="col-xs-12 col-sm-12 col-md-1 col-lg-1 control-label">Delegación</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="delegacion" id="delegacion" placeholder="Delegación">
                        </div>
                            
                      </div>
                        
                      <div class="form-group">
                          <label for="estado" class="col-xs-12 col-sm-12 col-md-2 col-lg-2 control-label">Estado</label>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <input type="text" class="form-control" name="estado" id="estado" placeholder="Estado">
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
                        </div>
                    </form>
                </div>
                

                <div class="tab-pane" id="eliminar">
                    <h1>JEJEJEJEJE</h1>  
                </div>
                <div class="tab-pane" id="consultar">
                    
                </div>
            </div>
        </div>
    </body>
</html>
