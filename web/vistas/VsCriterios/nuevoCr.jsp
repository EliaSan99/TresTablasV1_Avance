<%-- 
    Document   : nuevoCr
    Created on : 14/08/2022, 08:39:52 PM
    Author     : EliasSan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <link rel="stylesheet" href="./publico/css/nuevoCr.css">
        <title>Vista criterios</title>
    </head>
    <body>
        <h1 class="text-center m-3">Agrega un nuevo criterio</h1>
        <div class="formulario">
            <div class="row">
                <div class="col col">

                    <form action="STipoactvs" method="POST">

                        <label for="inputTipo">Tipo de Actividad</label>
                        <input type="text"   class="forms-control" name="tfTipoactv" id="inputMatri"> 
                        <label for="inputName">Porcentaje</label>
                        <input type="number"   class="forms-control" name="tfPorcentaje" id="inputName">


                        <button type="submit" name="tfAccion" value="agregar" class="btnAgregar">Agregar</button>

                        <a class="btn btn-secondary" href="STipoactvs">Regresar</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
