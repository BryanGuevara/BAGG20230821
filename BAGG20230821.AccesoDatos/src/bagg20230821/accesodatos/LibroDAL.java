
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import bagg20230821.entidadesdenegocio.Libro;

public class LibroDAL {

    private static final String JDBC_URL = "jdbc:mysql://localhost:8080/Libro";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "";

    public List<Libro> obtenerTodos() {
        List<Libro> libros = new ArrayList<>();
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String query = "SELECT * FROM Libros";
            try (PreparedStatement statement = connection.prepareStatement(query); ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    int id = resultSet.getInt("ID");
                    String titulo = resultSet.getString("Titulo");
                    String autor = resultSet.getString("Autor");
                    String anio = resultSet.getString("Anio");
                    libros.add(new Libro(id, titulo, autor, anio));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return libros;
    }

    public void crearLibro(Libro libro) {
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String query = "INSERT INTO Libros (Titulo, Autor, Anio) VALUES (?, ?, ?)";
            try (PreparedStatement statement = connection.prepareStatement(query)) {
                statement.setString(1, libro.getTitulo());
                statement.setString(2, libro.getAutor());
                statement.setString(3, libro.getAnio());
                statement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void actualizarLibro(Libro libro) {
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String query = "UPDATE Libros SET Titulo = ?, Autor = ?, Anio = ? WHERE ID = ?";
            try (PreparedStatement statement = connection.prepareStatement(query)) {
                statement.setString(1, libro.getTitulo());
                statement.setString(2, libro.getAutor());
                statement.setString(3, libro.getAnio());
                statement.setInt(4, libro.getId());
                statement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void eliminarLibro(int id) {
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String query = "DELETE FROM Libros WHERE ID = ?";
            try (PreparedStatement statement = connection.prepareStatement(query)) {
                statement.setInt(1, id);
                statement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Libro obtenerPorId(int id) {
        try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
            String query = "SELECT * FROM Libros WHERE ID = ?";
            try (PreparedStatement statement = connection.prepareStatement(query)) {
                statement.setInt(1, id);
                try (ResultSet resultSet = statement.executeQuery()) {
                    if (resultSet.next()) {
                        String titulo = resultSet.getString("Titulo");
                        String autor = resultSet.getString("Autor");
                        String anio = resultSet.getString("Anio");
                        return new Libro(id, titulo, autor, anio);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
