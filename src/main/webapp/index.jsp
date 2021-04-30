<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="es-419">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>Nomina</title>
    </head>

    <body class="container-sm">
        <header>
            <br><h1>Calcular Nomina</h1><br/>
        </header>

        <section>
            <form action="NominaServlet" method="post">
                <label for="nombres">Nombres:</label><br>
                <input type="text" name="nombres" id="nombres" class="form-control" placeholder="Ingrese sus nombres" minlength="2" maxlength="30" pattern="[A-Za-z ]{2-30}" autofocus required><br>

                <label for="apellidos">Apellidos:</label><br>
                <input type="text" name="apellidos" id="apellidos" class="form-control" placeholder="Ingrese sus apellidos" minlength="2" maxlength="30" pattern="[A-Za-z ]{2-30}" required><br>

                <label for="documento">Documento:</label><br>
                <input type="text" name="documento" id="documento" class="form-control" placeholder="Ingrese su numero de documento" minlength="7" maxlength="10" pattern="[1-9]{7-10}" required><br>

                <label for="diasTrabajados">Dias trabajados:</label><br>
                <input type="text" name="diasTrabajados" id="diasTrabajados" class="form-control" placeholder="Ingrese la cantidad de dias trabajados" minlength="1" maxlength="3" pattern="[1-9]{1-3}" required><br>

                <label for="sueldoMensual">Sueldo mensual:</label><br>
                <input type="text" name="sueldoMensual" id="sueldoMensual" class="form-control" placeholder="Ingrese su sueldo mensual" minlength="1" maxlength="9" pattern="[1-9]{1-9}" required><br>

                <input type="submit" id="submit" name="submit" class="btn btn-success" value="Calcular">
            </form>
        </section>
    </body>
</html>