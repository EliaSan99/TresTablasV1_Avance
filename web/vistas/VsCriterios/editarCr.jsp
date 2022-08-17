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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <link rel="stylesheet" href="./publico/css/editarCr.css">
        <title>Editar Criterio</title>
    </head>
    <body>
        <h1 class="text-center m-3">Modifica los Datos</h1>
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
                        <input type="number"   class="forms-control" name="tfIdactv" id="inputId" value="<%=criterios.getIdactv()%>"> 
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
