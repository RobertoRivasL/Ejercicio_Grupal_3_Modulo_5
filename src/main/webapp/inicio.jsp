<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Inicio</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
          integrity="sha384-5Z3zv3+0yXz9v4DZlQwJ2m8vz9Z3O5Qv0tQ6z5zv5Jf3JzJ5Jtq0V4zJtVjxJ9V/"
          crossorigin="anonymous">
</head>
<body>
<%@include file="navbar.jsp" %>
<h1 class="text-center">Inicio</h1>
<div class="container">
    <div class="jumbotron">
        <h1 class="display-7 text-center">Somos una empresa de asesorías en prevención de riesgos</h1>
        <div class="text-center">
            <img src="https://preventiam.com/wp-content/uploads/2019/09/tecnicas-prevencion-riesgos-laborales.jpg"
                 class="card-img-top" alt="Técnicas de prevención de riesgos laborales" style="max-width: 50%"/>
            <p class="fs-4 lead">Somos un grupo de profesionales miembros del grupo empresarial,<br>
                estamos al servicio de nuestros clientes para brindar soluciones en Prevención de Riesgos Laborales.<br>
                Nuestro servicio consiste en diagnosticar, planificar, ejecutar y supervisar la gestión en prevención de
                riesgos.</p>
        </div>

    </div>
</div>
<%@include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>
</html>
