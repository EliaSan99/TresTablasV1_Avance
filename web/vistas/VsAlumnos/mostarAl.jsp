+<%-- 
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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <link rel="stylesheet" href="./publico/css/mostrarAl.css">
        <title>Vista Alumnos</title>
    </head>
    <body>
        <form id="formAlumnos" action="SAlumnos" method="POST">
            <h1 class="text-center m-4">Lista de alumnos</h1>
            
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
