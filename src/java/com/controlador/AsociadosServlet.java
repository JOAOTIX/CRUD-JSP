/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controlador;

import com.modelo.Asociado;
import com.modelo.AsociadoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Deku
 */
@WebServlet(name = "AsociadosServlet", urlPatterns = {"/AsociadosServlet"})
public class AsociadosServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            int codigo=Integer.parseInt(request.getParameter("txtCodigo"));
            String nombre=request.getParameter("txtNombre");
            String apellido=request.getParameter("txtApellido");
            String edad=request.getParameter("txtEdad");
            double salario=Double.parseDouble(request.getParameter("txtSalario"));
            String area=request.getParameter("txtArea");
            String mensaje="ERROR";
            int res;
            Asociado c=new Asociado(codigo,nombre,apellido,edad,salario,area);
            AsociadoDAO asociadoDAO=new AsociadoDAO();
            if(request.getParameter("btnGuardar")!=null){//se presiono guardar
                res=asociadoDAO.insertarAsociado(c);
                if(res!=0){
                    mensaje="Registro Agregado!";
                }
            }else if(request.getParameter("btnEditar")!=null){
                res=asociadoDAO.modificarAsociado(c);
                if(res!=0){
                    mensaje="Registro Actualizado Exitosamente!!";
                }
            }else if(request.getParameter("btnEliminar")!=null){
                res=asociadoDAO.eliminarAsociado(c);
                if(res!=0){
                    mensaje="Registro Eliminado!!";
                }
            }
            request.setAttribute("mensaje", mensaje);
            request.getRequestDispatcher("/vistas/asociados.jsp").forward(request, response);
        }catch(Exception e){
            System.err.println("Erorr" + e.getLocalizedMessage());
        }
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
