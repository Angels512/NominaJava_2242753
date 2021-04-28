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
        <h1>Calcular Nomina</h1><br/>

        <form action="NominaServlet" method="post">
            <label for="nombres">Nombres:</label>
            <input type="text" name="nombres" id="nombres" placeholder="Ingrese sus nombres" minlength="2" maxlength="30" pattern="[A-Za-z ]{2-30}" autofocus required><br>

            <label for="apellidos">Apellidos:</label>
            <input type="text" name="apellidos" id="apellidos" placeholder="Ingrese sus apellidos" minlength="2" maxlength="30" pattern="[A-Za-z ]{2-30}" required><br>

            <label for="documento">Documento:</label>
            <input type="text" name="documento" id="documento" placeholder="Ingrese su numero de documento" minlength="7" maxlength="10" pattern="[1-9]{7-10}" required><br>

            <label for="diasTrabajados">Dias trabajados:</label>
            <input type="text" name="diasTrabajados" id="diasTrabajados" placeholder="Ingrese la cantidad de dias trabajados" minlength="1" maxlength="3" pattern="[1-9]{1-3}" required><br>

            <label for="sueldoMensual">Sueldo mensual:</label>
            <input type="text" name="sueldoMensual" id="sueldoMensual" placeholder="Ingrese su sueldo mensual" minlength="1" maxlength="9" pattern="[1-9]{1-9}" required><br><br>

            <input type="submit" id="submit" name="submit" value="Calcular">
        </form>
    </body>
</html>