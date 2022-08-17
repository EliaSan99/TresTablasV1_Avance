
package controladores;

import beans.BnAlumnos;
import dao.DAOAlumnos;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author EliasSan
 */
public class SAlumnos extends HttpServlet 
{
    private String mostrarAl;
    private String nuevoAl;
    private String editarAl;
            
    private String accion;
    private String acceso;
    
    private BnAlumnos  alumnos;
    private DAOAlumnos dao; 


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        
        nuevoAl   = "/vistas/VsAlumnos/nuevoAl.jsp";
        mostrarAl = "/vistas/VsAlumnos/mostarAl.jsp";
        editarAl  = "/vistas/VsAlumnos/editarAl.jsp";
        acceso    = "";
        
        accion = request.getParameter("tfAccion");
        
        if(accion!=null && accion.equalsIgnoreCase("nuevo"))
        {
            acceso=nuevoAl;
        }else if(accion!=null && accion.equalsIgnoreCase("agregar"))
        {
            alumnos = new BnAlumnos();
            alumnos.setMatricula(request.getParameter("tfMatricula"));
            alumnos.setNombre(request.getParameter("tfNombre"));
            alumnos.setPaterno(request.getParameter("tfPaterno"));
            alumnos.setMaterno(request.getParameter("tfMaterno"));
            alumnos.setSexo(request.getParameter("tfSexo"));
            alumnos.setTelefono(request.getParameter("tfTelefono"));
            alumnos.setCarrera(request.getParameter("tfCarrera"));
            alumnos.setMcpio(request.getParameter("tfMcpio"));
            alumnos.setCalle(request.getParameter("tfCalle"));
            alumnos.setNumext(request.getParameter("tfNumext"));
            
            dao = new DAOAlumnos();
            dao.agregar(alumnos);
            
            acceso=mostrarAl;
            
        }else if(accion!=null && accion.equalsIgnoreCase("editar"))
        {
            request.setAttribute("matricula",request.getParameter("tfMatricula"));
            acceso=editarAl;
            
        }else if(accion!=null && accion.equalsIgnoreCase("actualizar"))
        {
            alumnos = new BnAlumnos();
            String matriculaOld = request.getParameter("tfMatriculaOld");
            
            alumnos.setMatricula(request.getParameter("tfMatricula"));
            alumnos.setNombre(request.getParameter("tfNombre"));
            alumnos.setPaterno(request.getParameter("tfPaterno"));
            alumnos.setMaterno(request.getParameter("tfMaterno"));
            alumnos.setSexo(request.getParameter("tfSexo"));
            alumnos.setTelefono(request.getParameter("tfTelefono"));
            alumnos.setCarrera(request.getParameter("tfCarrera"));
            alumnos.setMcpio(request.getParameter("tfMcpio"));
            alumnos.setCalle(request.getParameter("tfCalle"));
            alumnos.setNumext(request.getParameter("tfNumext"));
            
            dao = new DAOAlumnos();
            dao.editar(alumnos, matriculaOld);
            acceso=mostrarAl;
        }else if(accion!=null && accion.equalsIgnoreCase("eliminar"))
        {
             String matricula = request.getParameter("tfMatricula");
             dao = new DAOAlumnos();
             dao.eliminar(matricula);
             acceso=mostrarAl;
        }else
        {
            acceso=mostrarAl;
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
