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
public class PruebaBuscar {
    public static void main(String[] args) {
        Usuario u = new Usuario();
        UsuarioDAO uDAO = new UsuarioDAO();
        
        u.setEmail("medel@acme.com");
        u.setPassword("123456");
        u.setEmail("cano@acme.com");
        u.setPassword("123456");
        
        try{
            uDAO.busca("medel@acme.com", "123456");
            uDAO.busca("cano@acme.com", "123456");
        }catch(SQLException er){
            System.err.println("Ocurrio un error "+er.getMessage());
        }
        System.out.println("Si esta");
    }
    
}
