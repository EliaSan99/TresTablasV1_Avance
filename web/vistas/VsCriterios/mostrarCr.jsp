<%-- 
    Document   : mostrarTi
    Created on : 14/08/2022, 07:58:04 PM
    Author     : EliasSan
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="beans.BnCriterios"%>
<%@page import="dao.DAOCriterios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <!-- CSS only -->
        <link rel="stylesheet" href="./publico/css/bootstrap.min.css">
        <link rel="stylesheet" href="./publico/css/mostrarCr.css">
        <title>Criterios de evaluación</title>
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
        
        <form id="formCriterios" action="STipoactvs" method="POST">
            <h4 class="text-center m-4">Criterios de Evaluación</h4>
            
            <div class="wrapper">
                <a id="new" class="btn btn-secondary" href="#" onclick="procesar('nuevo','')">Nuevo registro</a>
                <a id="a2"  class="btn btn-secondary" href="SIndex">Ir a vista principal</a>
            </div>
            
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-auto mt-1">
                        <table class="table table-bordered table-hover table-dark">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Tipo de Actividad</th>
                                    <th>Porcentaje</th>
                                    <th colspan="2">Opciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    DAOCriterios daocriterios = new DAOCriterios();
                                    ArrayList<BnCriterios> listCriterios = daocriterios.mostrar();
                                    BnCriterios criterios = null;
                                    for (int i = 0; i < listCriterios.size(); i++) {
                                        criterios = listCriterios.get(i);

                                %>
                                <tr>
                                    <td><%=criterios.getIdactv()%></td>
                                    <td><%=criterios.getTipoactv()%></td>
                                    <td><%=criterios.getPorcentaje()%></td>

                                    <td><a class="btn btn-warning" href="#" onclick="procesar('editar', '<%=criterios.getIdactv()%>')">Editar</a></td>
                                    <td><a class="btn btn-danger"  href="#" onclick="procesar('eliminar', '<%=criterios.getIdactv()%>')">Eliminar</a></td>
                                </tr>
                                <% }%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </form>
                            
         <script>
            function procesar(accion, idactv)
            {
                var tfAccion = document.createElement("INPUT");
                tfAccion.name="tfAccion";
                tfAccion.type="hidden";
                tfAccion.value=accion;
                
                var tfIdactv = document.createElement("INPUT");
                tfIdactv.name="tfIdactv";
                tfIdactv.type="hidden";
                tfIdactv.value=idactv;
                
                var padre = document.getElementById("formCriterios");
                padre.appendChild(tfAccion);
                padre.appendChild(tfIdactv);
                
                padre.submit();
            }

        </script>
    </body>
</html>
