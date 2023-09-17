<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page import="models.Capacitacion" %>
<%@ page import="models.Contenedor" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Capacitaciones</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <style>
        .hr {
            height: 20px;
        }

        .table {
            margin-top: 20px;
        }

        /* Estilo de tabla mejorado */
        .table-custom {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .table-custom th,
        .table-custom td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #dee2e6;
        }

        .table-custom th {
            background-color: #343a40;
            color: #fff;
        }

        .table-custom tbody tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<%@include file="navbar.jsp" %>

<% if (usuarioConectado != null && usuarioConectado) { %>
<div class="container">
    <h1 class="text-center mt-4">Capacitaciones</h1>
    <hr class="hr">
    <table class="table-custom">
        <thead>
        <tr>
            <th scope="col">Identificador</th>
            <th scope="col">Rut Cliente</th>
            <th scope="col">Día</th>
            <th scope="col">Hora</th>
            <th scope="col">Lugar</th>
            <th scope="col">Duración</th>
            <th scope="col">Cantidad Asistentes</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Capacitacion> capacitaciones = Contenedor.listaCapacitacion;
            for (Capacitacion capacitacion : capacitaciones) {
        %>
        <tr>
            <td><%= capacitacion.getIdentificador() %>
            </td>
            <td><%= capacitacion.getRutCliente() %>
            </td>
            <td><%= capacitacion.getDia() %>
            </td>
            <td><%= capacitacion.getHora() %>
            </td>
            <td><%= capacitacion.getLugar() %>
            </td>
            <td><%= capacitacion.getDuracion() %>
            </td>
            <td><%= capacitacion.getCantidadAsistentes() %>
            </td>
        </tr>
        <%}%>
        </tbody>
    </table>
</div>
<% } else { %>
<% response.sendRedirect("login.jsp"); %>
<% } %>

<%@include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>
</html>
