
import bagg20230821.entidadesdenegocio.Libro;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class LibroServlet extends HttpServlet {

    private LibroDAL libroDAL = new LibroDAL();

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action != null) {
            switch (action) {
                case "edit":
                    int id = Integer.parseInt(request.getParameter("id"));
                    Libro libro = libroDAL.obtenerPorId(id);
                    request.setAttribute("libro", libro);
                    request.getRequestDispatcher("editar-libro.jsp").forward(request, response);
                    break;

                // Agrega más casos para otras acciones si es necesario
                default:
                    mostrarListaLibros(request, response);
                    break;
            }
        } else {
            mostrarListaLibros(request, response);
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action != null) {
            switch (action) {
                case "create":
                    crearLibro(request);
                    break;

                case "update":
                    actualizarLibro(request);
                    break;

                case "delete":
                    int id = Integer.parseInt(request.getParameter("id"));
                    libroDAL.eliminarLibro(id);
                    break;

            }
        }

        mostrarListaLibros(request, response);
    }

    private void mostrarListaLibros(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Libro> libros = libroDAL.obtenerTodos();
        request.setAttribute("libros", libros);
        request.getRequestDispatcher("lista-libros.jsp").forward(request, response);
    }

    private void crearLibro(HttpServletRequest request) {
        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        String anio = request.getParameter("anio");
        Libro libro = new Libro(0, titulo, autor, anio);
        libroDAL.crearLibro(libro);
    }

    private void actualizarLibro(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        String anio = request.getParameter("anio");
        Libro libro = new Libro(id, titulo, autor, anio);
        libroDAL.actualizarLibro(libro);
    }
}
