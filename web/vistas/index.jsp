<%-- 
    Document   : index
    Created on : 2/08/2022, 04:12:36 PM
    Author     : EliasSan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Principal</title>
        <link rel="stylesheet" href="./publico/css/bootstrap.min.css">
        <link rel="stylesheet" href="./publico/css/index.css">
    </head>
    <body>
        <div class="container-fluid bg-primary">
            <div class="container">
                <nav class="navbar  navbar-expand-lg navbar-dark mb-2">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#">
                            <img src="./publico/imgs/uni.png" width="35" height="35" class="mx-2">
                            Interfaz Principal
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

        
        <section id="secc-cards">
            <h2 class="text-secondary text-center">Descripcion de cada apartado</h2>
            <div class="row" id="fila-cards">
                <div class="col-4">
                    <div class="card text-white bg-warning mb-3" style="max-width: 20rem;">
                        <div class="card-header text-center">Opción 1</div>
                        <div class="card-body">
                            <h4 class="card-title text-center">Alumnos</h4>
                            <p class="card-text">En esta seccion podras administrar a los alumnos registrados en el sistema.
                                De igual manera podras agregar, Eliminar, Editar los registros.</p>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="card text-white bg-warning mb-3" style="max-width: 20rem;">
                        <div class="card-header text-center">Opción 2</div>
                        <div class="card-body">
                            <h4 class="card-title text-center">Actividades</h4>
                            <p class="card-text">En esta seccion podras administrar las actividades registradas en el sistema.
                                De igual manera podras agregar, Eliminar, Editar actividades.</p>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="card text-white bg-warning mb-3" style="max-width: 20rem;">
                        <div class="card-header text-center">Opción 3</div>
                        <div class="card-body">
                            <h4 class="card-title text-center">Criterios</h4>
                            <p class="card-text">En esta seccion podras administrar los criterios de evaluación registrados en el sistema.
                                De igual manera podras agregar, Eliminar, Editar dichos criterios.</p>
                        </div>
                    </div>
                </div>
            </div>
            
        </section>
    </body>
</html>
