<%-- 
    Document   : editarAl
    Created on : 7/08/2022, 04:46:33 PM
    Author     : EliasSan
--%>

<%@page import="beans.BnAlumnos"%>
<%@page import="dao.DAOAlumnos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <link rel="stylesheet" href="./publico/css/editarAl.css">
        <title>Editar Alumnos</title>
    </head>
    <body>
        <h1 class="text-center m-3">Modifica los datos</h1>
        <div class="formulario">
            <div class="row">
                <div class="col col">
                    <%
                        DAOAlumnos dao = new DAOAlumnos();
                        String matricula = request.getAttribute("matricula").toString();
                        BnAlumnos alumnos = dao.buscar(matricula);
                    %>

                    <form action="SAlumnos" method="POST">

                        <label for="inputMatri">Matricula</label>
                        <input type="text"   class="forms-control" name="tfMatricula" id="inputMatri" value="<%=alumnos.getMatricula()%>"> 
                        <label for="inputName">Nombre del alumno</label>
                        <input type="text"   class="forms-control" name="tfNombre" id="inputName" value="<%=alumnos.getNombre()%>">
                        <label for="inputPaterno">Apellido Paterno</label>
                        <input type="text"   class="forms-control" name="tfPaterno" id="inputPaterno" value="<%=alumnos.getPaterno()%>">
                        <label for="inputMaterno">Apellido Materno</label>
                        <input type="text" class="forms-control" name="tfMaterno" id="inputMaterno" value="<%=alumnos.getMaterno()%>"> 
                        <label for="inputSexo">Sexo</label>
                        <input type="text" class="forms-control" name="tfSexo" id="inputSexo" value="<%=alumnos.getSexo()%>">
                        <label for="inputTel">Telefono</label>
                        <input type="text" class="forms-control" name="tfTelefono" id="inputTel" value="<%=alumnos.getTelefono() %>">
                        <label for="inputCarrera">Carrera</label>
                        <input type="text" class="forms-control" name="tfCarrera" id="inputCarrera" value="<%=alumnos.getCarrera()%>">
                        <label for="inputMcpio">Municipio</label>
                        <input type="text" class="forms-control" name="tfMcpio" id="inputMcpio" value="<%=alumnos.getMcpio()%>">
                        <label for="inputCalle">Calle</label>
                        <input type="text" class="forms-control" name="tfCalle" id="inputCalle" value="<%=alumnos.getCalle()%>">
                        <label for="inputNumext">Numero Exterior</label>
                        <input type="text" class="forms-control" name="tfNumext" id="inputNumExt" value="<%=alumnos.getNumext() %>">
                        
                        <input type="hidden"   class="forms-control" name="tfMatriculaOld" id="inputMatri" value="<%=alumnos.getMatricula()%>">

                        <button type="submit" name="tfAccion" value="Actualizar" class="btnEditar">Editar</button>

                        <a  class="btn btn-secondary" href="SAlumnos">Regresar</a>
                    </form>
                </div>
            </div>
        </div>
        
    </body>
</html>
