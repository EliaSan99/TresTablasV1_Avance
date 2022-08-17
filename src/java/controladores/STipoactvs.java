
package controladores;

import beans.BnCriterios;
import dao.DAOCriterios;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author EliasSan
 */
public class STipoactvs extends HttpServlet 
{
    private String mostrarCr;
    private String nuevoCr;
    private String editarCr;
            
    private String accion;
    private String acceso;
    
    private BnCriterios  criterios;
    private DAOCriterios daoC;


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        
        nuevoCr    = "/vistas/VsCriterios/nuevoCr.jsp";
        mostrarCr  = "/vistas/VsCriterios/mostrarCr.jsp";
        editarCr   = "/vistas/VsCriterios/editarCr.jsp";
        acceso="";
        
        accion = request.getParameter("tfAccion");
        
        if(accion!=null && accion.equalsIgnoreCase("nuevo"))
        {
            acceso=nuevoCr;
        }else if(accion!=null && accion.equalsIgnoreCase("agregar"))
        {
            criterios = new BnCriterios();
            criterios.setTipoactv(request.getParameter("tfTipoactv"));
            criterios.setPorcentaje(Integer.parseInt(request.getParameter("tfPorcentaje")));
            
            daoC = new DAOCriterios();
            daoC.agregar(criterios);
            
            acceso=mostrarCr;
        }else if(accion!=null && accion.equalsIgnoreCase("editar"))
        {
            request.setAttribute("idactv",request.getParameter("tfIdactv"));
            acceso=editarCr;
        }else if(accion!=null && accion.equalsIgnoreCase("actualizar"))
        {
            criterios = new BnCriterios();
            int idactvOld = Integer.parseInt(request.getParameter("tfIdactvOld")); 
            
            criterios = new BnCriterios();
            criterios.setIdactv(Integer.parseInt(request.getParameter("tfIdactv")));
            criterios.setTipoactv(request.getParameter("tfTipoactv"));
            criterios.setPorcentaje(Integer.parseInt(request.getParameter("tfPorcentaje")));
            
            daoC = new DAOCriterios();
            daoC.editar(criterios, idactvOld);
            acceso=mostrarCr;
            
        }else if(accion!=null && accion.equalsIgnoreCase("eliminar"))
        {
            int idactv = Integer.parseInt(request.getParameter("tfIdactvOld"));
            daoC = new DAOCriterios();
            daoC.eliminar(idactv);
            acceso=mostrarCr;
        }else
        {
            acceso=mostrarCr;
        }
        
        request.getRequestDispatcher(acceso).forward(request, response);

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
