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
        <link rel="stylesheet" href="./publico/css/bootstrap.min.css">
        <title>Principal</title>
        <link rel="stylesheet" href="./publico/css/Alumnos.css">
    </head>
    <body>
        <div class="container-fluid bg-primary">
            <div class="container">
                <nav class="navbar  navbar-expand-lg navbar-dark mb-2">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#">
                            <img src="./publico/imgs/Logo.png" width="30" height="30" class="mx-2">
                            Interfaz Principal
                        </a>

                        <div class="collapse navbar-collapse" id="navbarColor01">
                            <ul class="navbar-nav ms-auto">
                                <li class="nav-item">
                                    <a class="nav-link active" href="/">Home
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
                    </div>
                </nav>
            </div>
        </div>
        
        <section id="secc-cards">
            <h2 class="text-secondary text-center">Elija una opción</h2>
            <div class="row" id="fila-cards">
                <div class="col-4">
                    <div class="card text-white bg-warning mb-3" style="max-width: 20rem;">
                        <div class="card-header text-center">Opción 1</div>
                        <div class="card-body">
                            <h4 class="card-title text-center">Alumnos</h4>
                            <p class="card-text">El directorio de trabajo es una copia de una versión del proyecto. Estos archivos se
                                sacan de la base de datos comprimida en el directorio de Git, y se colocan en disco para que los puedas
                                usar o modificar.</p>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="card text-white bg-warning mb-3" style="max-width: 20rem;">
                        <div class="card-header text-center">Opción 2</div>
                        <div class="card-body">
                            <h4 class="card-title text-center">Actividades</h4>
                            <p class="card-text">El área de preparación es un archivo, generalmente contenido en tu directorio de Git,
                                que almacena información acerca de lo que va a ir en tu próxima confirmación. A veces se le denomina
                                índice (“index”).</p>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="card text-white bg-warning mb-3" style="max-width: 20rem;">
                        <div class="card-header text-center">Opción 3</div>
                        <div class="card-body">
                            <h4 class="card-title text-center">Criterios</h4>
                            <p class="card-text">El directorio de Git es donde se almacenan los metadatos y la base de
                                datos de objetos para tu proyecto. Es la parte más importante de Git, y es lo que se copia
                                cuando clonas un repositorio desde otra computadora.</p>
                        </div>
                    </div>
                </div>
            </div>
            
        </section>
    </body>
</html>
