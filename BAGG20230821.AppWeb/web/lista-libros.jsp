<!DOCTYPE html>
<html>
    <head>
        <title>Lista de los Libros</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f5f5f5;
                margin: 0;
                padding: 0;
            }

            h1 {
                background-color: #d9534f;
                color: white;
                padding: 20px;
                text-align: center;
                margin: 0;
            }

            table {
                width: 80%;
                margin: 20px auto;
                border-collapse: collapse;
            }

            th, td {
                padding: 10px;
                text-align: left;
            }

            th {
                background-color: #d9534f;
                color: white;
            }

            tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            a {
                display: block;
                text-align: center;
                margin-top: 20px;
                color: #d9534f;
                text-decoration: none;
            }

            a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <h1>Lista de Libros Registrados</h1>
        <table>
            <tr>
                <th>ID</th>
                <th>Título</th>
                <th>Autor</th>
                <th>Año</th>
                <th>Acciones</th>
            </tr>
            <c:forEach items="${libros}" var="libro">
                <tr>
                    <td>${libro.id}</td>
                    <td>${libro.titulo}</td>
                    <td>${libro.autor}</td>
                    <td>${libro.anio}</td>
                    <td>
                        <a href="editar-libro.jsp?id=${libro.id}">Editar</a>
                    </td>
                    <td>
                        <a href="elmiinar-libro.jsp?id=${libro.id}">Eliminar</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <a href="index.html">[ Volver a la Página de Inicio ]</a>
    </body>
</html>
