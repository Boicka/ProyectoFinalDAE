package app.modelo;

import java.sql.Connection;
import java.sql.SQLException;

public interface UsuarioDAOI {
    public Connection conectar() throws SQLException;

    public Usuario busca() throws SQLException;

    public boolean busca(String alias, String contrasena) throws SQLException;

    public void agrega(Usuario u) throws SQLException;

    public void elimina(int id) throws SQLException;

    public void modifica(Usuario u) throws SQLException;
}
