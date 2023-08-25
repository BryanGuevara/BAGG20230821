<!DOCTYPE html>
<html>
<head>
    <title>Página de Inicio</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        header {
            background-color: #35424a;
            color: white;
            text-align: center;
            padding: 1rem;
        }

        .container {
            text-align: center;
            margin-top: 2rem;
        }

        .container p {
            font-size: 1.2rem;
            margin-top: 1rem;
        }

        .btn {
            background-color: #008CBA;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            font-size: 1rem;
        }

        .btn:hover {
            background-color: #005A6E;
        }
    </style>
</head>
<body>
    <header>
        <h1>Bienvenido a la Biblioteca</h1>
    </header>
    <div class="container">
        <p>Selecciona una opción:</p>
        <a href="registro-libro.jsp" class="btn">Ir al Registro de Libro</a>
        <a href="lista-libros.jsp" class="btn">Ver Lista de Libros Registrados</a>
    </div>
</body>
</html>
