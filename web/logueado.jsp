<%-- 
    Document   : logueado
    Created on : 4/07/2021, 01:17:48 PM
    Author     : serio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body onload="alerta('${mensaje}');">
        <h1>Ya eres cliente de Librerias ACME</h1>
    </body>
    <script type="text/javascript">
        function alerta(mensaje) {
            if(mensaje!=""){
                alert(mensaje);
            }
        }
    </script>
</html>
