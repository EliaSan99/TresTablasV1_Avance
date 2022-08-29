 
package dao;

import beans.BnActividades;
import beans.BnMostrarActvs;
import conexion.ConexionMySQL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author EliasSan
 */
public class DAOActividades 
{
  private Connection con;
  private PreparedStatement  ps;
  private ResultSet rs;
  private BnActividades  actividades;
  private BnMostrarActvs actividadesm;
  
   public ArrayList mostrar()
   {
      ArrayList <BnMostrarActvs> list = new ArrayList<>();
      String sql ="SELECT Id_Actv, Descripción, DATE_FORMAT(Fecha_Limite,' %a- %d - %b - %Y - %H : %i - %p') AS Limite," + 
                 "DATE_FORMAT(Fecha_Entregado,'%a - %d - %b - %Y - %H : %i - %p') AS Entregado, Calificación, "           +   
                 "CONCAT(alumnos.Nombre,' ',alumnos.Paterno,' ', alumnos.Materno) AS Alumno,"                            +
                 "Tipo_Actv FROM actividades, alumnos, tipo_actividad WHERE actividades.Matricula=alumnos.Matricula"     +
                 " AND actividades.Id_TipoActv=tipo_actividad.Id_TipoActv";
      
      try
      {
          con=ConexionMySQL.getConnection();
          ps=con.prepareStatement(sql);
          rs=ps.executeQuery();
          
          while(rs.next())
          {
             actividadesm = new BnMostrarActvs();
             actividadesm.setIdactv(rs.getInt("Id_Actv"));
             actividadesm.setDescripcion(rs.getString("Descripción"));
             actividadesm.setFechalimite(rs.getString("Limite"));
             actividadesm.setFechaentregado(rs.getString("Entregado"));
             actividadesm.setCalificacion(rs.getFloat("Calificación"));
             actividadesm.setAlumno(rs.getString("Alumno"));
             actividadesm.setTipoactv(rs.getString("Tipo_Actv"));
             list.add(actividadesm);
          }
          rs.close();
          ps.close();
          con.close();
                  
      }catch (SQLException e) {}
      return list;
   }
   
   public boolean agregar(BnActividades actividades)
   {
       String sql="INSERT INTO actividades VALUES("  +
               actividades.getIdactv()         +  ","   +
         "'" + actividades.getDescripcion()    +  "',"  +
         "'" + actividades.getFechalimite()    +  "',"  +
         "'" + actividades.getFechaentregado() +  "',"  +
             + actividades.getCalificacion()   +  ","   +
         "'" + actividades.getMatricula()      +  "',"  +
               actividades.getIdtipoactv()     +  ")";
       
       try
       {
         con=ConexionMySQL.getConnection();
         ps=con.prepareStatement(sql);
         ps.executeUpdate();
         ps.close();
         con.close();
         
       }catch(SQLException e) {}
       return true;
   }
   
   public BnActividades buscar(int idactv)
   {
       String sql="SELECT * FROM actividades WHERE Id_Actv = " + idactv;
       
       try
       {
          con =ConexionMySQL.getConnection();
          ps  =con.prepareStatement(sql);
          rs = ps.executeQuery();    
          
          while(rs.next())
          {
              actividades = new BnActividades();
              actividades.setIdactv(rs.getInt("Id_Actv"));
              actividades.setDescripcion(rs.getString("Descripción"));
              actividades.setFechalimite(rs.getString("Fecha_Limite"));
              actividades.setFechaentregado(rs.getString("Fecha_Entregado"));
              actividades.setCalificacion(rs.getFloat("Calificación"));
              actividades.setMatricula(rs.getString("Matricula"));
              actividades.setIdtipoactv(rs.getInt("Id_TipoActv"));
          }
          ps.close();
          con.close();
       }catch(SQLException e) {}
       return actividades;
   }
   
   public boolean editar(BnActividades actividades, int Old)
   {
       String sql="UPDATE actividades SET " +
               "Id_Actv         = "  + actividades.getIdactv()         + ","  +
               "Descripción     = '" + actividades.getDescripcion()    + "'," +
               "Fecha_Limite    = '" + actividades.getFechalimite()    + "'," +
               "Fecha_Entregado = '" + actividades.getFechaentregado() + "'," +
               "Calificación    =  " + actividades.getCalificacion()   + ","  +
               "Matricula       = '" + actividades.getMatricula()      + "'," +
               "Id_TipoActv     =  " + actividades.getIdtipoactv()     + 
               " WHERE Id_Actv  = " + Old;
       
       try
       {
          con =ConexionMySQL.getConnection();
          ps  =con.prepareStatement(sql);
          ps.executeUpdate();
          ps.close();
          con.close();
       }catch(SQLException e) {}
       
       return true;
   }
   
    public boolean eliminar (int idactv)
    {
        String sql="DELETE FROM actividades WHERE Id_Actv =" + idactv;
        
        try
        {
           con = ConexionMySQL.getConnection();
           ps = con.prepareStatement(sql);
           ps.executeUpdate();
           ps.close();
           con.close();
        }catch(SQLException e) {}
        
        return true;
    }
}
