package app.modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UsuarioDAO implements UsuarioDAOI {

    @Override
    public boolean busca(String email, String contrasena) throws SQLException {
        Usuario u = null;
        ResultSet rs;
        Statement st;
        String sql;
        Connection c;
        int row = 0;
        boolean resultado= false;
        // Conectarse a la base de datos
        Conexion con = new Conexion();
        c = con.abrir();
        // Realizar la consulta
        sql = "SELECT * FROM USUARIO WHERE"
                + " email = " + "'" + email + "'"
                + " AND password = " + "'" + contrasena + "'";
        System.out.println(sql);    //Solo para depuracion
        st = c.createStatement();
        rs = st.executeQuery(sql);
        while(rs.next()){
            row++;
        }
        System.out.println(row); //saber si hay algo o no
        if(row != 0){
            resultado = true;
        }
        con.cerrar(c);
        return resultado;
    }

    @Override
    public Connection conectar() throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void cerrar(Connection c) throws SQLException {
        c.close();
    }

    @Override
    public Usuario busca() throws SQLException {
        Usuario u = null;
        return u;
    }

    public void alta(Usuario u) throws SQLException {
        Connection c;
        String sql;
        Statement smt;
        //Conectar a la BD
        Conexion conexion = new Conexion();
        c = conexion.abrir();
        //Obtener los valores de los atributos del objeto Empleado
//        int id = e.getId();
        String nombre = u.getNombre();
        String apellidos = u.getApellidos();
        String email = u.getEmail();
        String password = u.getPassword();
        //Definir la sentencia sql
        sql = "INSERT INTO USUARIO VALUES("
        + "'"
        + nombre + "','"
        + apellidos + "','"
        + email + "','"
        + password + "')";
        //Ejecutar la sntencia
        System.out.println(sql);//solo para depuracion
        smt = c.createStatement();
        smt.executeUpdate(sql);
        //Cerrar BD
        c.close();
    }

    @Override
    public void elimina(int id) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void modifica(Usuario u) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void agrega(Usuario u) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
