<!DOCTYPE html>
<html>
<head>
    <title>Eliminar Libro</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        h1 {
            background-color: #28a745;
            color: white;
            padding: 20px;
            text-align: center;
            margin: 0;
        }

        p {
            margin: 20px 0;
            text-align: center;
        }

        table {
            width: 60%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #28a745;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        form {
            text-align: center;
            margin-top: 20px;
        }

        button {
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        button:hover {
            background-color: #1e7e34;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #28a745;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Eliminar Libro</h1>
    <p>¿Estás seguro de que deseas eliminar el siguiente libro?</p>
    <table>
        <tr>
            <th>ID</th>
            <th>Título</th>
            <th>Autor</th>
            <th>Año</th>
        </tr>
        <tr>
            <td>${libro.id}</td>
            <td>${libro.titulo}</td>
            <td>${libro.autor}</td>
            <td>${libro.anio}</td>
        </tr>
    </table>
    <form action="EliminarLibroServlet" method="post">
        <input type="hidden" name="id" value="${libro.id}">
        <button type="submit">Eliminar</button>
    </form>
    <a href="lista-libros.jsp">Cancelar y Volver</a>
</body>
</html>
