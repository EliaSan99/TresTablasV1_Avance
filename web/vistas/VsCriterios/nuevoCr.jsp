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
        <link rel="stylesheet" href="./publico/css/bootstrap.min.css">
        <link rel="stylesheet" href="./publico/css/nuevoCr.css">
        <title>Vista criterios Nuevo</title>
    </head>
    <body>
        <div class="container-fluid bg-primary">
            <div class="container">
                <nav class="navbar  navbar-expand-lg navbar-dark mb-2">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#">
                            <img src="./publico/imgs/uni.png" width="35" height="35" class="mx-2">
                            Interfaz Actividades
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
        
        <h4 class="text-center m-3">Agrega un nuevo criterio</h4>
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
