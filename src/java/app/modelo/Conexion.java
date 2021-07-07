package app.modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion implements ConexionI {

    Connection conexion;
    private String URL = "jdbc:derby://localhost:1527/LibreriaACME";
    private String usuarioBD = "root";
    private String contrasenaBD = "root";

    @Override
    public Connection abrir() throws SQLException {
        Connection c;
        c = DriverManager.getConnection(URL, usuarioBD, contrasenaBD);
        return c;
    }

    @Override
    public void cerrar(Connection c) throws SQLException {
        c.close();
    }

}
