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
        <link rel="stylesheet" href="./publico/css/bootstrap.min.css">
        <link rel="stylesheet" href="./publico/css/nuevoAl.css">
        <title>Vista Alumnos Nuevo</title>
    </head>
    <body>
        <div class="container-fluid bg-primary">
            <div class="container">
                <nav class="navbar  navbar-expand-lg navbar-dark mb-2">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#">
                            <img src="./publico/imgs/uni.png" width="35" height="35" class="mx-2">
                            Interfaz Alumnos
                        </a>

                        <div class="collapse navbar-collapse" id="navbarColor01">
                            <ul class="navbar-nav ms-auto">
                                <li class="nav-item">
                                    <a class="nav-link" href="SIndex">Home
                                        <span class="visually-hidden">(current)</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="SAlumnos">Alumnos</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="SActividades">Actividades</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="STipoactvs">Criterios</a>
                                </li>
                            </ul>
                        </div>
                        <div id="session-box">
                            <img src="./publico/imgs/user.svg" width="40px" height="40px" alt="">

                            <div>
                                <h5>Usuario:</h5>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        
        
        <h4 class="text-center m-3">Agrega un nuevo alumno</h4>
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
