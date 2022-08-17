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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <link rel="stylesheet" href="./publico/css/mostrarCr.css">
        <title>Criterios de evaluación</title>
    </head>
    <body>
        <form id="formAlumnos" action="STipoactvs" method="POST">
            <h1 class="text-center m-4">Criterios de Evaluación</h1>
            
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
                
                var padre = document.getElementById("formAlumnos");
                padre.appendChild(tfAccion);
                padre.appendChild(tfIdactv);
                
                padre.submit();
            }

        </script>
    </body>
</html>
