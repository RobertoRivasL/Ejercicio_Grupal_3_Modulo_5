<%@include file="footer.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/style.css">
</head>
<body style="background-color: darkgray">

<hr class="hr" style="height: 100px"/>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-lg-4 col-md-6 col-sm-8">
            <form class="register-form" action="svRegister" method="POST">
                <h2 class="text-center mb-4">Registro</h2>
                <div class="form-group">
                    <label class="mb-3" for="Usuariox">Rut de Usuario</label>
                    <input name="nuevoUsuario" type="text" id="Usuariox" class="form-control"
                           placeholder="Ingresa rut de usuario" required>
                </div>
                <br>
                <div class="form-group">
                    <label class="mb-3" for="passwordy">Contraseña</label>
                    <input name="nuevoPassword" type="password" id="passwordy" class="form-control"
                           placeholder="Ingresa tu contraseña" required>
                </div>
                <br>
                <div style="display: flex; justify-content: space-between;">
                    <button type="submit" class="btn btn-primary btn-dark mb-3">Registrar</button>
                    <a href="login.jsp" class="btn btn-dark mb-3">Log In</a>
                </div>
            </form>
        </div>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>
</html>
