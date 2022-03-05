<%-- 
    Document   : index
    Created on : 4/02/2022, 07:09:51 PM
    Author     : elio
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <title>Mi Primera Pagina</title>
    </head>
    <body>           
        <div class="row-sm-4">
            <div class="d-flex">
                <div class="col-sm-4">
                    <div class="card-body">
                        <div class="form-group">
                            <label>Dorsal</label>
                            <input id="txtDorsal" type="text" value="" class="form-control" required="">
                        </div>

                        <div class="form-group">
                            <label>Nombre</label>
                            <input id="txtNombre" type="text" value="" class="form-control" required="">
                        </div>
                        <div class="form-group">
                            <label>Eadad</label>
                            <input id="txtEdad" type="text" value="" class="form-control" required="">
                        </div>
                        <div class="form-group">
                        
                            <input id="txtId" type="text" value="" class="form-control" hidden="true" required="">
                        </div>

                        <div class="form-group">
                            <button id="btnenviar" onclick="guardar_editar()" class="btn btn-outline-info">Guardar</button>

                        </div>      


                    </div>
                </div>

                <div class="col-sm-8">
                    <br>
                    <div class="card">
                        <div class="card-body">
                            <table id="tab-players" class="table table-hover">
                                <thead>
                                    <tr>
                                        <th hidden="true">ID</th> 
                                        <th>Item</th> 
                                        <th>DORSAL</th>             
                                        <th>EDAD</th>
                                        <th>NOMBRE</th> 
                                        <th>ACCIONES</th>
                                    </tr>
                                </thead>
                                <br>
                                <tbody id="tb-players" >
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>  
        </div>
    </body>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="js/recursos.js" type="text/javascript"></script>

</html>
