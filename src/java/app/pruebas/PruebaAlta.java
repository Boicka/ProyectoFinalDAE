/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.pruebas;

import app.modelo.Usuario;
import app.modelo.UsuarioDAO;
import java.sql.SQLException;

/**
 *
 * @author serio
 */
public class PruebaAlta {

    public static void main(String[] args) {
        Usuario u = new Usuario();
        UsuarioDAO uDAO = new UsuarioDAO();
        String n = "prueba nombre";
        String a = "prueba apellido";
        String e = "prueba@acme.com";
        String p = "123456";
        u.setNombre(n);
        u.setApellidos(a);
        u.setEmail(e);
        u.setPassword(p);
        try{
            uDAO.alta(u);
        }catch(SQLException er){
            System.out.println("Ocurrio un error");
            System.err.println(er.getMessage());
        }
        System.out.println("Alta exitosa");
    }

}
