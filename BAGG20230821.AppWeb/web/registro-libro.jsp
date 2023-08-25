<!DOCTYPE html>
<html>
    <head>
        <title>Registro de un Libro Nuevo</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f5f5f5;
                margin: 0;
                padding: 0;
            }

            h1 {
                background-color: #9b59b6;
                color: white;
                padding: 20px;
                text-align: center;
                margin: 0;
            }

            form {
                width: 50%;
                margin: 20px auto;
                padding: 20px;
                background-color: white;
                border-radius: 5px;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            }

            label {
                display: block;
                margin-bottom: 5px;
            }

            input[type="text"] {
                width: 100%;
                padding: 10px;
                margin-bottom: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            button[type="submit"] {
                background-color: #9b59b6;
                color: white;
                padding: 10px 20px;
                border: none;
                cursor: pointer;
                border-radius: 5px;
            }

            button[type="submit"]:hover {
                background-color: #8e44ad;
            }

            a {
                display: block;
                text-align: center;
                margin-top: 20px;
                color: #9b59b6;
                text-decoration: none;
            }

            a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <h1>Registro de Libro</h1>
        <p> <form action="LibroServlet" method="post">
            <label>Título:</label>
            <input type="text" name="titulo" required><br>
            <label>Autor:</label>
            <input type="text" name="autor" required><br>
            <label>Año:</label>
            <input type="text" name="anio" required><br>
            </p>
            <p>
                <button type="submit">[ Registrar Libro Nuevo ]</button>
            </p>
        </form>
        <a href="index.jsp" class="btn">[ Volver a la Página de Inicio ]</a>
    </body>
</html>
