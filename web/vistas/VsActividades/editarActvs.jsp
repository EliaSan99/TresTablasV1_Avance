<%-- 
    Document   : editarActvs
    Created on : 25/08/2022, 08:20:08 PM
    Author     : EliasSan
--%>

<%@page import="beans.BnActividades"%>
<%@page import="dao.DAOActividades"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vista Editar Actividades</title>
        <link rel="stylesheet" href="./publico/css/bootstrap.min.css">
        <link rel="stylesheet" href="./publico/css/editarActvs.css">
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
        
            <h4 class="text-center m-3">Edita un registro</h4>
            <div class="formulario">
            <div class="row">
                <div class="col col">
                    <%
                        DAOActividades dao = new DAOActividades();
                        int idactv = Integer.parseInt(request.getAttribute("idactv").toString()); 
                        BnActividades actividades = dao.buscar(idactv);
                    %>

                    <form action="SActividades" method="POST">

                        <label for="inputId">Id</label>
                        <input type="number" class="forms-control" name="tfIdActv"      value="<%=actividades.getIdactv() %>" id="inputId"> 
                        <label for="inputDescripcion">Descripción</label>
                        <input type="text"   class="forms-control" name="tfDescripcion" value="<%=actividades.getDescripcion()%>" id="inputDescripcion">
                        <label for="inputLimite">fecha de vencimiento:</label><br>
                        <small>Respete el formato: AA-MM-DD HH:mm</small>
                        <input type="text" class="forms-control" name="tfFechaLimite"   value="<%=actividades.getFechalimite()%>" id="inputLimite" Placeholder="Ejemplo: 2022-06-27  12:51">
                        <label for="inputEntregado">fecha de Entrega</label><br>
                        <small>Respete el formato: AA-MM-DD HH:mm</small>
                        <input type="text" class="forms-control" name="tfFechaEntregado" value="<%=actividades.getFechaentregado()%>" id="inputEntregado" Placeholder="Ejemplo: 2022-06-27  12:51">
                        <label for="inputCali">Calificación</label>
                        <input type="number" class="forms-control" min="1" max="11" name="tfCalificacion" value="<%=actividades.getCalificacion() %>" id="inputCali">
                        <label for="inputMatricula">Matricula del alumno</label>
                        <input type="text" class="forms-control" name="tfMatricula"    value="<%=actividades.getMatricula()%>" id="inputMatricula">
                        <label for="inputId"> Id del Tipo de Actividad</label>
                        <input type="number" class="forms-control" name="tfIdTipoActv" value="<%=actividades.getIdtipoactv()%>" id="inputId">
                        
                        <input type="hidden"   class="forms-control" name="tfIdactvOld" id="inputId" value="<%=actividades.getIdactv()%>">
                        
                        <button type="submit" name="tfAccion" value="actualizar" class="btnEditar">Editar</button>

                        <a  class="btn btn-secondary" href="SActividades">Regresar</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
