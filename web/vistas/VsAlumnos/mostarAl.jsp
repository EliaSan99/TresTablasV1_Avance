<%-- 
    Document   : mostarAl
    Created on : 7/08/2022, 04:09:23 PM
    Author     : EliasSan
--%>

<%@page import="beans.BnAlumnos"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.DAOAlumnos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- CSS only -->
        <link rel="stylesheet" href="./publico/css/bootstrap.min.css">
        <link rel="stylesheet" href="./publico/css/mostrarAl.css">
        <title>Vista Alumnos</title>
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
        
        <form id="formAlumnos" action="SAlumnos" method="POST">
            <h4 class="text-center m-4">Lista de alumnos</h4>
            
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
                                    <th>Clave</th>
                                    <th>Nombre Completo</th>
                                    <th colspan="2" >Opciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    DAOAlumnos daoAlumnos = new DAOAlumnos();
                                    ArrayList<BnAlumnos> listAlumnos = daoAlumnos.mostrar();
                                    BnAlumnos alumnos = null;
                                    for (int i = 0; i < listAlumnos.size(); i++) {
                                    alumnos = listAlumnos.get(i);

                                %>
                                <tr>
                                    <td><%=alumnos.getMatricula()%></td>
                                    <td><%=alumnos.getNombre() + " " + alumnos.getPaterno() + " " + alumnos.getMaterno() %></td>

                                    <td><a class="btn btn-warning" href="#" onclick="procesar('editar', '<%=alumnos.getMatricula() %>')">Editar</a></td>
                                    <td><a class="btn btn-danger"  href="#" onclick="procesar('eliminar', '<%=alumnos.getMatricula() %>')">Eliminar</a></td>
                                </tr>
                                <% }%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </form>
        <script>
            function procesar(accion, matricula)
            {
                var tfAccion = document.createElement("INPUT");
                tfAccion.name="tfAccion";
                tfAccion.type="hidden";
                tfAccion.value=accion;
                
                var tfMatricula = document.createElement("INPUT");
                tfMatricula.name="tfMatricula";
                tfMatricula.type="hidden";
                tfMatricula.value=matricula;
                
                var padre = document.getElementById("formAlumnos");
                padre.appendChild(tfAccion);
                padre.appendChild(tfMatricula);
                
                padre.submit();
            }

        </script>
    </body>
</html>
