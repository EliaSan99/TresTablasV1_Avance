<%-- 
    Document   : mostrarActvs
    Created on : 25/08/2022, 08:19:39 PM
    Author     : EliasSan
--%>

<%@page import="beans.BnMostrarActvs"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.BnActividades"%>
<%@page import="dao.DAOActividades"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./publico/css/bootstrap.min.css">
        <link rel="stylesheet" href="./publico/css/mostrarActvs.css">
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
    
        <form id="formActividades" action="SActividades" method="post">


            <h4 class="text-center">Vista Actividades</h4>
            <div class="wrapper">
                <p><a id="p1" class="btn btn-secondary" href="#" onclick="procesar('nuevo','')">Nuevo Registro</a></p>
                <p><a id="p2" class="btn btn-secondary" href="SIndex">Ir a vista principal</a></p>
            </div>

            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-auto mt-1">
                        <table class="table table-bordered table-hover table-dark">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Descripción</th>
                                    <th>Fecha Vencimiento</th>
                                    <th>Entregado</th>
                                    <th>Calificacion</th>
                                    <th>Asignado a:</th>
                                    <th>Tipo de actividad</th>
                                    <th colspan="2">Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    DAOActividades daoactvs = new DAOActividades();
                                    ArrayList<BnMostrarActvs> listActvs = daoactvs.mostrar();
                                    BnMostrarActvs actividades = null;
                                    for (int i = 0; i < listActvs.size(); i++) {
                                        actividades = listActvs.get(i);

                                %>
                                <tr>
                                    <td><%=actividades.getIdactv()%></td>
                                    <td><%=actividades.getDescripcion()%></td>
                                    <td><%=actividades.getFechalimite()%></td>
                                    <td><%=actividades.getFechaentregado()%></td>
                                    <td><%=actividades.getCalificacion()%></td>
                                    <td><%=actividades.getAlumno() %></td>
                                    <td><%=actividades.getTipoactv() %></td>

                                    <td><a class="btn btn-warning" href="#" onclick="procesar('editar', '<%=actividades.getIdactv()%>')">Editar</a></td>
                                    <td><a class="btn btn-danger"  href="#" onclick="procesar('eliminar', '<%=actividades.getIdactv()%>')">Eliminar</a></td>
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

                var padre = document.getElementById("formActividades");
                padre.appendChild(tfAccion);
                padre.appendChild(tfIdactv);

                padre.submit();
            }

        </script>                     
    </body>
</html>
