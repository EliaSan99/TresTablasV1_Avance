<%-- 
    Document   : editarCr
    Created on : 14/08/2022, 09:13:52 PM
    Author     : EliasSan
--%>

<%@page import="beans.BnCriterios"%>
<%@page import="dao.DAOCriterios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <!-- CSS only -->
        <link rel="stylesheet" href="./publico/css/bootstrap.min.css">
        <link rel="stylesheet" href="./publico/css/editarCr.css">
        <title> Vista Editar Criterios</title>
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
        
        <h4 class="text-center m-3">Modifica los Datos</h4>
        <div class="formulario">
            <div class="row">
                <div class="col col">
                    <%
                        DAOCriterios dao = new DAOCriterios();
                        int idactv = Integer.parseInt(request.getAttribute("idactv").toString()); 
                        BnCriterios criterios = dao.buscar(idactv);
                    %>

                    <form action="STipoactvs" method="POST">

                        <label for="inputId">Id</label>
                        <input type="number"   class="forms-control" name="tfIdactv" id="inputId" value="<%=criterios.getIdactv() %>"> 
                        <label for="inputTipo">Tipo de Actividad</label>
                        <input type="text"   class="forms-control" name="tfTipoactv" id="inputTipo" value="<%=criterios.getTipoactv()%>">
                        <label for="inputPorcentaje">Porcentaje</label>
                        <input type="number"   class="forms-control" name="tfPorcentaje" id="inputPorcentaje" value="<%=criterios.getPorcentaje()%>">
                        
                        <input type="hidden"   class="forms-control" name="tfIdactvOld" id="inputId" value="<%=criterios.getIdactv()%>">

                        <button type="submit" name="tfAccion" value="Actualizar" class="btnEditar">Editar</button>

                        <a  class="btn btn-secondary" href="STipoactvs">Regresar</a>
                    </form>
                </div>
            </div>
        </div>
        
    </body>
</html>
