<!DOCTYPE html>
<html>
<head>
    <title>Editar Libro</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        h1 {
            background-color: #f8c900;
            color: white;
            padding: 10px;
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            width: 60%;
            margin: 0 auto;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        button {
            background-color: #f8c900;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        button:hover {
            background-color: #e0b800;
        }

        a {
            color: #f8c900;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Editar Libro</h1>
    <form action="EditarLibroServlet" method="post">
        <input type="hidden" name="id" value="${libro.id}">
        <label>Título:</label>
        <input type="text" name="titulo" value="${libro.titulo}" required><br>
        <label>Autor:</label>
        <input type="text" name="autor" value="${libro.autor}" required><br>
        <label>Año:</label>
        <input type="text" name="anio" value="${libro.anio}" required><br>
        <button type="submit">Guardar Cambios</button>
    </form>
    <br>
    <a href="lista-libros.jsp">Volver a la Lista de Libros</a>
</body>
</html>
