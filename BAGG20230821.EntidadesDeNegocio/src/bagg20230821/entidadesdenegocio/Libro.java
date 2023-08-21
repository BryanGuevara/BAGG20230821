package bagg20230821.entidadesdenegocio;

public class Libro {
 public int ID;
 public String Titulo;
 public String Autor;
 public String Anio;
 public int Top_aux;

    public Libro() {
    }

    public Libro(int ID, String Titulo, String Autor, String Anio, int Top_aux) {
        this.ID = ID;
        this.Titulo = Titulo;
        this.Autor = Autor;
        this.Anio = Anio;
        this.Top_aux = Top_aux;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getTitulo() {
        return Titulo;
    }

    public void setTitulo(String Titulo) {
        this.Titulo = Titulo;
    }

    public String getAutor() {
        return Autor;
    }

    public void setAutor(String Autor) {
        this.Autor = Autor;
    }

    public String getAnio() {
        return Anio;
    }

    public void setAnio(String Anio) {
        this.Anio = Anio;
    }
    
   public int getTop_aux() {
        return Top_aux;
    }

    public void setTop_aux(int Top_aux) {
        this.Top_aux = Top_aux;
    }
}