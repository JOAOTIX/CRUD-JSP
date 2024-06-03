<%@page import="com.modelo.AsociadoDAO"%>
<%@page import="com.modelo.Asociado"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Asociados</title>
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
            rel="stylesheet"
            />
        <link rel="icon" href="../img/logo.jpg">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body style="background-color: #212529;">
        <%
            AsociadoDAO asociadoDAO = new AsociadoDAO();
        %>
        <div class="container bg-dark text-white">
            <%@include file="../template/menu.jsp"%>            
            <hr>
            <div class="row align-items-start">
                <div class="col-9">
                    <h1>Gestion de Trabajadores</h1>
                </div>
                <div class="col-3 align-self-center">
                    <div class="d-grid gap-2">
                        <button type="button" class="btn btn-outline-success btnAdd" data-bs-toggle="modal"
                                data-bs-target="#exampleModal">Agregar                            
                        </button>
                    </div>
                </div>
            </div>

            <hr>
            <!--Crear una tabla responsive(se ajustará en tablets, pcs, moviles)-->
            <div class="table-responsive">
                <table class="table table-striped table-dark" id="mydataTable">
                    <thead>
                    <th>Código</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Edad</th>
                    <th>Salario</th>
                    <th>Area</th>
                    <th>Acciones</th>
                    </thead>
                    <tbody>
                        <%
                            ArrayList<Asociado> listaAsociado = asociadoDAO.mostrarAsociado();
                            for (Asociado elem : listaAsociado) {
                        %>
                        <tr>
                            <td class="codigo"><%=elem.getIdTrabajador()%></td>
                            <td class="nombre"><%=elem.getNombre()%></td>
                            <td class="apellido"><%=elem.getApellido()%></td>
                            <td class="edad"><%=elem.getEdad()%></td>
                            <td class="salario"><%=elem.getSalario()%></td>
                            <td class="area"><%=elem.getArea()%></td>

                            <td>
                                <button type="button" class="btn btn-outline-info btnEditar"
                                        data-bs-toggle="modal" data-bs-target="#exampleModal">
                                    Editar
                                </button>
                                <button type="button" class="btn btn-outline-danger btnEliminar"
                                        data-bs-toggle="modal" data-bs-target="#exampleModal">
                                    Eliminar
                                </button>
                            </td>
                        </tr>
                        <% } %>
                    </tbody>
                </table>
            </div>            
        </div>
        <!-- Trabajando con la ventana modal. esta ventana se mostrará cuando
        haga clic el botón agregar o editar o eliminar-->    
        <div class="modal fade text-white" id="exampleModal" tabindex="-1"
             aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content bg-dark">
                    <div calss="modal-header">
                        <h5 class="modal-title"    style="margin-left:320px;" id="exampleModalLabel">Datos Trabajador</h5>
                    </div>
                    <div class="modal-body">
                        <form action="${pageContext.servletContext.contextPath}/AsociadosServlet" role="form" method="POST">
                            <div class="row">
                                <div class="col-6">
                                    <label>Codigo</label>
                                    <input type="text" name="txtCodigo" class="form-control"
                                           id="txtCodigo" value="0" readonly="true">
                                </div>
                                <div class="col-6">
                                    <label>Nombre</label>
                                    <input type="text" name="txtNombre" class="form-control" id="txtNombre">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-6">
                                    <label>Apellido</label>
                                    <input type="text"  name="txtApellido" class="form-control" id="txtApellido">
                                </div>
                                <div class="col-6">
                                    <label>Edad</label>
                                    <input type="number"  name="txtEdad" class="form-control" id="txtEdad">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <label>Salario</label>
                                    <input type="number"  name="txtSalario" class="form-control" id="txtSalario">
                                </div>

                                <div class="col-6">
                                    <label>Area</label>
                                    <input type="text"  name="txtArea" class="form-control" id="txtArea">
                                </div>
                            </div><br>
                            <div class="row" style="margin-left: 200px">
                                <div class="col-12">
                                    <button type="submit" name="btnGuardar" class="btn btn-outline-success btnOcultar1">
                                        Guardar
                                    </button>
                                    <button type="submit" name="btnEditar" class="btn btn-outline-light btnOcultar2">
                                        Actualizar
                                    </button>
                                    <button type="submit" name="btnEliminar" class="btn btn-outline-danger btnOcultar3">
                                        Eliminar
                                    </button>
                                    <button type="button" class="btn btn-outline-info" data-bs-dismiss="modal">
                                        Cancelar
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <footer style="color: white;">
            <div class="container">
                <p>&copy; 2024 Derechos de autor: Joao Urteaga Sanchez</p>
                <ul class="d-flex">
                    <a
                        href="https://mail.google.com/mail/?view=cm&fs=1&to=joaourteaga52@gmail.com"
                        target="_blank"
                        >
                        <i class="fas fa-envelope"></i>
                    </a>
                    <br />

                    <a href="https://github.com/JOAOTIX" target="_blank">
                        <i class="fab fa-github"></i>
                    </a>

                    <a
                        href="https://www.linkedin.com/in/joao-urteaga-s%C3%A1nchez-a9989526b"
                        target="_blank"
                        >
                        <i class="fab fa-linkedin"></i>
                    </a>
                </ul>
            </div>
        </footer>
                            <% if (request.getAttribute("mensaje") != null) {%>
        <div id="customAlert" class="alert alert-success alert-dismissible fade show" role="alert" style="width: 400px;margin-left: 1100px;">
            <%= request.getAttribute("mensaje")%>
        </div>
        
        <script>
            // Temporizador para ocultar la alerta después de 2 segundos
            setTimeout(function () {
                var customAlert = document.getElementById('customAlert');
                customAlert.classList.remove('show'); // Ocultamos la alerta
                customAlert.classList.add('hide'); // Agregamos clase 'hide' para la transición
                setTimeout(function () {
                    customAlert.remove();
                }, 1000); // Esperanos 1 segundo después de ocultar
            }, 2000); // Esperamos 2 segundos antes de ocultar
        </script>
        <% }%>
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

        <script src="${pageContext.servletContext.contextPath}/JS/asociados.js"></script>
    </body>
</html>
