<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!doctype html>
<html lang="es-419">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Nomina</title>
  </head>

  <body>
    <h1>RESULTADOS DE NOMINA:</h1>

    <h3>DATOS PERSONALES</h3>
    <p><b>Nombre y Apellidos:</b> <%= request.getParameter("nombres") %> <%= request.getParameter("apellidos") %></p>
    <p><b>Numero de documento:</b> <%= request.getParameter("documento") %></p>
    <p><b>Dias trabajados:</b> <%= request.getParameter("diasTrabajados") %></p>
    <p><b>Sueldo mensual:</b> <%= request.getParameter("sueldoMensual") %></p><br>

    <h3>DEVENGOS</h3>

    <p><b>Sueldo a pagar:</b> <%= request.getAttribute("sueldoPorDias") %></p>
    <p><b>Subsidio de transporte:</b>  <%  %></p>
    <p><b>Subtotal de devengos:</b> <%  %></p><br>

    <h3>DESCUENTOS</h3>
    <p><b>Salud:</b> <%  %></p>
    <p><b>Pension:</b> <%  %></p>
    <p><b>ARL:</b> <%  %></p>
    <p><b>Subtotal de descuentos:</b> <%  %></p><br>
  </body>
</html>


