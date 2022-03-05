<%-- 
    Document   : localstorge
    Created on : 23/02/2022, 07:12:01 PM
    Author     : elio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <title>JSP Page</title>
    </head>
    <body>
        <h1>localStorage </h1>
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
                            <button id="btnenviar" onclick="guardar()" class="btn btn-outline-info">Guardar</button>

                        </div>      
                        <div class="form-group">
                            <button id="btnenviar" onclick="recuperar()" class="btn btn-outline-info">Recuperar</button>

                        </div> 

                    </div>
                </div>

                </body>
                <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
                <script src="js/rslocalstorege.js" type="text/javascript"></script>
                </html>
