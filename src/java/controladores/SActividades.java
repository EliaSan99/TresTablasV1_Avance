
package controladores;

import beans.BnActividades;
import dao.DAOActividades;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author EliasSan
 */
public class SActividades extends HttpServlet 
{
    private String mostraractvs;
    private String nuevoactvs;
    private String editaractvs;
            
    private String accion;
    private String acceso;
    
    private BnActividades  actividades;
    private DAOActividades daoactvs;


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        
        nuevoactvs    ="/vistas/VsActividades/nuevoActvs.jsp";
        mostraractvs  ="/vistas/VsActividades/mostrarActvs.jsp";
        editaractvs   ="/vistas/VsActividades/editarActvs.jsp";
        acceso="";
        
        accion = request.getParameter("tfAccion");
        
        if(accion!=null && accion.equalsIgnoreCase("nuevo"))
        {
            acceso=nuevoactvs;
        }else if(accion!=null && accion.equalsIgnoreCase("agregar"))
        {
            actividades = new BnActividades();
            actividades.setDescripcion(request.getParameter("tfDescripcion"));
            actividades.setFechalimite(request.getParameter("tfFechaLimite"));
            actividades.setFechaentregado(request.getParameter("tfFechaEntregado"));
            actividades.setCalificacion(Float.parseFloat(request.getParameter("tfCalificacion")));
            actividades.setMatricula(request.getParameter("tfMatricula"));
            actividades.setIdtipoactv(Integer.parseInt(request.getParameter("tfIdTipoActv")));
            
            daoactvs = new DAOActividades();
            daoactvs.agregar(actividades);
            acceso=mostraractvs;
            
        }else if(accion!=null && accion.equalsIgnoreCase("editar"))
        {
            request.setAttribute("idactv",request.getParameter("tfIdactv"));
            acceso=editaractvs;
        }else if(accion!=null && accion.equalsIgnoreCase("actualizar"))
        {
            actividades = new BnActividades();
            int idactvOld = Integer.parseInt(request.getParameter("tfIdactvOld"));
            
            actividades.setIdactv(Integer.parseInt(request.getParameter("tfIdActv")));
            actividades.setDescripcion(request.getParameter("tfDescripcion"));
            actividades.setFechalimite(request.getParameter("tfFechaLimite"));
            actividades.setFechaentregado(request.getParameter("tfFechaEntregado"));
            actividades.setCalificacion(Float.parseFloat(request.getParameter("tfCalificacion")));
            actividades.setMatricula(request.getParameter("tfMatricula"));
            actividades.setIdtipoactv(Integer.parseInt(request.getParameter("tfIdTipoActv")));
            
            daoactvs = new DAOActividades();
            daoactvs.editar(actividades, idactvOld);
            acceso=mostraractvs;
            
        }else if(accion!=null && accion.equalsIgnoreCase("eliminar"))
        {
            int idactv = Integer.parseInt(request.getParameter("tfIdactv"));
            daoactvs = new DAOActividades();
            daoactvs.eliminar(idactv);
            acceso=mostraractvs;
        }else
        {
          acceso=mostraractvs;
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
