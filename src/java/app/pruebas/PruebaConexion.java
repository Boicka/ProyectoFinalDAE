package app.pruebas;

import app.modelo.Conexion;
import java.sql.Connection;
import java.sql.SQLException;

public class PruebaConexion {

    public static void main(String[] args) {

        Conexion c = new Conexion();
        Connection conexion;

        try {
            conexion = c.abrir();
            c.cerrar(conexion);
        } catch (SQLException ex) {
            System.out.println("Ha ocurrido un error al conectar a la base de datos: " + ex.getMessage());
            System.exit(1);
        }
        System.out.println("Prueba exitosa!");
    }

}
