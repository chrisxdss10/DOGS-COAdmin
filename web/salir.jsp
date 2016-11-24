<%-- 
    Document   : salir.jsp
    Created on : 23-nov-2016, 19:18:53
    Author     : chistopher
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
                    HttpSession sesion = request.getSession();
                    String usuario = (String)sesion.getAttribute("Admin");
                    sesion.invalidate();
                         
                    response.sendRedirect("admin.jsp");
                }
            catch(Exception e)
                        {
                            out.println(e.getLocalizedMessage());
                            e.printStackTrace();
                            out.print("Adios");
                        }    
              
        
        
        %>
    </body>
</html>
