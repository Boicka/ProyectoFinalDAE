/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.controlador;

import app.modelo.Usuario;
import app.modelo.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ValidaUsuario", urlPatterns = {"/ValidaUsuario"})
public class ValidaUsuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String email;
        String contrasena;
        String mensaje;
        String paginaRespuesta;
        Usuario u = null;
        boolean existe=false;
        UsuarioDAO uDao = new UsuarioDAO();
        HttpSession sesion = request.getSession();
        sesion.setMaxInactiveInterval(20);

        // Recibir los datos del formulario
        email = request.getParameter("email");
        contrasena = request.getParameter("password");
//        System.out.println(email);
//        System.out.println(contrasena);

        try // Buscar el usuario en la base de datos
        {
            existe = uDao.busca(email, contrasena);

            // Definir el mensaje y la pagina de respuesta
            if (existe == false) {
                mensaje = "Usuario inexistente";
                paginaRespuesta = "index.jsp";
                request.setAttribute("mensaje", mensaje);
                // ----Invalida la sesión
                sesion.invalidate();
            } else {
                paginaRespuesta = "logueado.jsp";
//                request.setAttribute("usuario", u);
                // ---Agrega usuario al objeto "session"
//                sesion.setAttribute("usuario", u);
            }
        } catch (SQLException ex) {
            mensaje = "Servicio no disponible, intente más tarde";
            paginaRespuesta = "index.jsp";
            request.setAttribute("mensaje", mensaje);
            // ----Invalida la sesión
            sesion.invalidate();
        }

        RequestDispatcher dispatcher
                = request.getRequestDispatcher(paginaRespuesta);
        dispatcher.forward(request, response);
    
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
