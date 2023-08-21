package bagg20230821.accesodatos;

import bagg20230821.entidadesdenegocio.Libro;
import java.util.*;
import java.sql.*;

public class LibroDAL {

static String getFields(){
    return "r.Id, r.Nombre";
}
private static String getSelect(Libro pLib){
    String sql = "SELECT ";
    if (pLib.getTop_aux() > 0 && ComunDB.TIPODB == ComunDB.TipoDB.SQLSERVER) {
            sql += "TOP " + pLib.getTop_aux() + " ";
        }
        sql += (getFields() + " FROM Libro r");
        return sql;
    
}
    
}