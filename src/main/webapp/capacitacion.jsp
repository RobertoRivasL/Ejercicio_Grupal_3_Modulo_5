<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@include file="navbar.jsp" %>
<%@include file="footer.jsp" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Capacitación</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

</head>
<body>
<% if (usuarioConectado != null && usuarioConectado) { %>
<div class="container">
    <h1 class="text-center mt-4">Capacitación</h1>
    <hr class="hr">
    <div class="text-center">
        <button id="mostrarInfo" type="button" class="btn btn-toggle-info">Mostrar Info</button>
        <div id="info" class="alert alert-success mt-3" role="alert" style="display: none;">
            Identificador: ${identificador}<br>
            Rut del Cliente: ${rutCliente}<br>
            Día: ${dia}<br>
            Hora: ${hora}<br>
            Lugar: ${lugar}<br>
            Duración: ${duracion}<br>
            Cantidad de Asistentes: ${cantidadAsistentes}
        </div>
    </div>

    <!-- Botón para abrir el formulario en un modal -->
    <button id="mostrarModal" type="button" class="btn btn-dark mt-3">Crear Capacitación</button>

    <!-- Modal para crear capacitación -->
    <div class="modal" id="crearCapacitacionModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Crear Capacitación</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <!-- Formulario para crear capacitación -->
                    <form id="formulario" action="svCapacitacion" method="POST">
                        <div class="form-group">
                            <label for="identificador">Identificador</label>
                            <input type="text" class="form-control" id="identificador" name="identificador">
                        </div>
                        <div class="form-group">
                            <label for="rutCliente">Rut Cliente</label>
                            <input type="text" class="form-control" id="rutCliente" name="rutCliente">
                        </div>
                        <div class="form-group">
                            <label for="dia">Día</label>
                            <select class="form-control" id="dia" name="dia">
                                <% for (int i = 1; i <= 31; i++) { %>
                                <option value="<%= i %>"><%= i %>
                                </option>
                                <% } %>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="hora">Hora</label>
                            <select class="form-control" id="hora" name="hora">
                                <% for (int i = 0; i <= 23; i++) { %>
                                <option value="<%= i %>"><%= String.format("%02d", i) %>:00</option>
                                <% } %>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="lugar">Lugar</label>
                            <input type="text" class="form-control" id="lugar" name="lugar">
                        </div>
                        <div class="form-group">
                            <label for="duracion">Duración</label>
                            <input type="text" class="form-control" id="duracion" name="duracion">
                        </div>
                        <div class="form-group">
                            <label for="cantidadAsistentes">Cantidad de Asistentes</label>
                            <input type="text" class="form-control" id="cantidadAsistentes"
                                   name="cantidadAsistentes">
                        </div>
                        <!-- Botón para crear capacitación dentro del modal -->
                        <button id="botonCrear" type="submit" class="btn btn-dark btn-block mb-4">Crear</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
<script>
    var divVisible = false;
    document.getElementById('mostrarInfo').addEventListener('click', function () {
        var div = document.getElementById('info');
        if (divVisible) {
            div.style.display = 'none';
            divVisible = false;
            document.getElementById('mostrarInfo').textContent = 'Mostrar Info';
        } else {
            div.style.display = 'block';
            divVisible = true;
            document.getElementById('mostrarInfo').textContent = 'Cerrar Info';
        }
    });

    // Abre el modal para crear capacitación
    document.getElementById('mostrarModal').addEventListener('click', function () {
        $('#crearCapacitacionModal').modal('show');
    });
</script>

<% } else { %>
<% response.sendRedirect("login.jsp"); %>
<% } %>
</body>
</html>
