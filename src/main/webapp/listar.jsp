<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*, models.*" %>
<%
    // Recuperamos la lista de productos y el nombre de usuario desde los atributos de la solicitud
    List<Productos> productos = (List<Productos>) request.getAttribute("productos");
    Optional<String> username = (Optional<String>) request.getAttribute("username");
%>

<html>
<head>
    <title>Listado de Productos</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
    </style>
</head>
<body>
<h1>Listado de Productos</h1>

<% if (username.isPresent()) { %>
<div style="color: blue;">Hola, bienvenido <%= username.get() %></div>
<% } %>

<table>
    <tr>
        <th>ID Producto</th>
        <th>Nombre</th>
        <th>Categoría</th>
        <% if (username.isPresent()) { %>
        <th>Precio</th>
        <th>Agregar</th>
        <% } %>
    </tr>

    <%
        // Iteramos sobre la lista de productos y mostramos cada uno en la tabla
        for (Productos pr : productos) {
    %>
    <tr>
        <td><%= pr.getIdProducto() %></td>
        <td><%= pr.getNombre() %></td>
        <td><%= pr.getCategoria() %></td>
        <% if (username.isPresent()) { %>
        <td><%= pr.getPrecio() %></td>
        <td>
            <a href="<%= request.getContextPath() + "/agregar-carro?idProducto=" + pr.getIdProducto() %>">
                Agregar al carro
            </a>
        </td>
        <% } %>
    </tr>
    <% } %>
</table>
</body>
</html>
