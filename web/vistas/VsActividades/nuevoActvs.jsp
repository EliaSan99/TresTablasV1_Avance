<%-- 
    Document   : nuevoActvs
    Created on : 25/08/2022, 08:19:15 PM
    Author     : EliasSan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--flatpicker Selector de Fechas-->
        <link rel="stylesheet" href="./publico/flatpickr/flatpickr.min.css">
        <title>Vista Actividades Nuevo</title>
        <link rel="stylesheet" href="./publico/css/bootstrap.min.css">
        <link rel="stylesheet" href="./publico/css/nuevoActvs.css">
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
        
    <h4 class="text-center m-3">Agrega una nueva actividad</h4>


    <div class="formulario">
        <div class="row">
            <div class="col col">
                <form action="SActividades" method="post">
                    <label for="inputDescripcion">Descripción</label>
                    <input type="text" class="forms-control" name="tfDescripcion" id="inputDescripcion" placeholder="Nombre de la actividad">
                    <label for="inputLimite">Fecha de Entrega</label>
                    <input type="datetime-local" class="forms-control" name="tfFechaLimite" id="inputLimite" placeholder="Selecciona una fecha">
                    <label for="inputEntregado">Entregado</label>
                    <input type="datetime-local" class="forms-control" name="tfFechaEntregado" id="inputEntregado" placeholder="Selecciona una fecha">
                    <label for="inputCali">Calificación</label>
                    <input type="number" class="forms-control" min="1.0" max="11" name="tfCalificacion" id="inputCali">
                    <label for="inputMatricula">Matricula del alumno</label>
                    <input type="text" class="forms-control" name="tfMatricula" id="inputMatricula" placeholder="Ej:57201000168">
                    <label for="inputId"> Id del Tipo de Actividad</label>
                    <input type="number" class="forms-control" name="tfIdTipoActv" id="inputId" Placeholder="Ej: 01">


                    <button type="submit" name="tfAccion" value="agregar" class="btn-agregar">Agregar</button>

                    <a class="btn btn-secondary" href="SActividades">Regresar</a>

                </form>
            </div>
        </div>
    </div>
    
        <!--flatpicker Selector de Fechas-->
    <script src="./publico/flatpickr/flatpickr.min.js"></script>
    <script src="./publico/flatpickr/src/l10n/es.js"></script>
    
    <script>

        config = {
                    enableTime: true,
                    dateFormat: "Y-m-d H:i",
                    locale: 'es'
                 }
        flatpickr("input[type=datetime-local]", config);
    </script>
    </body>
    
    
</html>
