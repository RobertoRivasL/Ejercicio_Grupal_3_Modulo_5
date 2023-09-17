<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@include file="navbar.jsp" %>
<%@include file="footer.jsp" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Contacto</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <style>
        .hr {
            height: 20px;
        }

        .form-container {
            max-width: 600px;
            margin: 0 auto;
        }

        .form-container h1 {
            text-align: center;
        }

        .btn-show-info {
            margin-top: 20px;
        }
    </style>
</head>
<body>
<% if (usuarioConectado != null && usuarioConectado) { %>
<div class="container form-container">
    <h1 class="text-center">Contacto</h1>
    <hr class="hr">
    <button id="mostrarInfoContacto" type="button" class="btn btn-dark btn-show-info">Mostrar Info</button>
    <div id="infoContacto" class="alert alert-success mt-3" role="alert" style="display:none">
        Nombre: ${nombre}<br>
        Correo: ${correo}<br>
        Mensaje: ${mensaje}
    </div>

    <form id="formulario" action="svContacto" method="POST">
        <!-- Name input -->
        <div class="mb-4">
            <label for="nombre" class="form-label">Nombre</label>
            <input name="nombre" type="text" id="nombre" class="form-control" required/>
            <div class="invalid-feedback">Por favor, ingresa tu nombre.</div>
        </div>

        <!-- Email input -->
        <div class="mb-4">
            <label for="correo" class="form-label">Correo Electrónico</label>
            <input name="correo" type="email" id="correo" class="form-control" required/>
            <div class="invalid-feedback">Por favor, ingresa un correo válido.</div>
        </div>

        <!-- Message input -->
        <div class="mb-4">
            <label for="mensaje" class="form-label">Mensaje</label>
            <textarea name="mensaje" class="form-control" id="mensaje" rows="4" required></textarea>
            <div class="invalid-feedback">Por favor, ingresa un mensaje.</div>
        </div>

        <!-- Checkbox -->
        <div class="form-check mb-4">
            <input class="form-check-input" type="checkbox" value="1" id="enviarCopia" checked/>
            <label class="form-check-label" for="enviarCopia">Envíame una copia del mensaje</label>
        </div>

        <!-- Submit button -->
        <button type="submit" class="btn btn-dark btn-block">Enviar</button>
        <div class="center" style="margin-top:10px; margin-bottom: 20px;">
            <label class="text-success d-none" id="mensajeEnviado">Su mensaje ha sido enviado</label>
        </div>
    </form>
</div>
<% } else { %>
<% response.sendRedirect("login.jsp"); %>
<% } %>

<script>
    var divVisible = false;
    document.getElementById('mostrarInfoContacto').addEventListener('click', function () {
        var div = document.getElementById('infoContacto');
        if (divVisible) {
            div.style.display = 'none';
            divVisible = false;
            document.getElementById('mostrarInfoContacto').textContent = 'Mostrar Info'
        } else {
            div.style.display = 'block';
            divVisible = true;
            document.getElementById('mostrarInfoContacto').textContent = 'Cerrar Info'
        }
    });
</script>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</html>
