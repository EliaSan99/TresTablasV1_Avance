<%-- 
    Document   : nuevo
    Created on : 7/08/2022, 04:43:49 PM
    Author     : EliasSan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <link rel="stylesheet" href="./publico/css/nuevoAl.css">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 class="text-center m-3">Agrega un nuevo alumno</h1>
        <div class="formulario">
            <div class="row">
                <div class="col col">

                    <form action="SAlumnos" method="POST">

                        <label for="inputMatri">Matricula</label>
                        <input type="text"   class="forms-control" name="tfMatricula" id="inputMatri" placeholder="Matricula"> 
                        <label for="inputName">Nombre del alumno</label>
                        <input type="text"   class="forms-control" name="tfNombre" id="inputName" placeholder="Nombre">
                        <label for="inputPaterno">Apellido Paterno</label>
                        <input type="text"   class="forms-control" name="tfPaterno" id="inputPaterno">
                        <label for="inputMaterno">Apellido Materno</label>
                        <input type="text" class="forms-control" name="tfMaterno" id="inputMaterno"> 
                        <label for="inputSexo">Sexo</label>
                        <input type="text" class="forms-control" name="tfSexo" id="inputSexo">
                        <label for="inputTel">Telefono</label>
                        <input type="text" class="forms-control" name="tfTelefono" id="inputTel">
                        <label for="inputCarrera">Carrera</label>
                        <input type="text" class="forms-control" name="tfCarrera" id="inputCarrera">
                        <label for="inputMcpio">Municipio</label>
                        <input type="text" class="forms-control" name="tfMcpio" id="inputMcpio">
                        <label for="inputCalle">Calle</label>
                        <input type="text" class="forms-control" name="tfCalle" id="inputCalle">
                        <label for="inputNumext">Numero Exterior</label>
                        <input type="text" class="forms-control" name="tfNumext" id="inputNumExt">


                        <button type="submit" name="tfAccion" value="agregar" class="btnAgregar">Agregar</button>

                        <a class="btn btn-secondary" href="SAlumnos">Regresar</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
