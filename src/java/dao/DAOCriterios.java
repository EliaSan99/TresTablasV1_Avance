
package dao;

import beans.BnCriterios;
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
public class DAOCriterios
{
  private Connection con;
  private PreparedStatement  ps;
  private ResultSet rs;
  private BnCriterios criterios;   
  
  public ArrayList mostrar()
  {
      ArrayList <BnCriterios> list = new ArrayList<>();
      String sql ="SELECT * FROM tipo_actividad";
      
      try
      {
          con=ConexionMySQL.getConnection();
          ps=con.prepareStatement(sql);
          rs=ps.executeQuery();
          
          while(rs.next())
          {
              criterios = new BnCriterios();
              criterios.setIdactv(rs.getInt("Id_TipoActv"));
              criterios.setTipoactv(rs.getString("Tipo_Actv"));
              criterios.setPorcentaje(rs.getInt("Porcentaje"));
              list.add(criterios);
          }
          rs.close();
          ps.close();
          con.close();
      }catch (SQLException e) {}
      
      return list;
  }
  
  public boolean agregar(BnCriterios criterios)      
  {
     String sql="INSERT INTO tipo_actividad VALUES("  +
                     criterios.getIdactv()    +  ","  + 
              "'" +  criterios.getTipoactv()  +  "'," +
                     criterios.getPorcentaje()+  ")";
     try
     {
         con=ConexionMySQL.getConnection();
         ps=con.prepareStatement(sql);
         ps.executeUpdate();
         ps.close();
         con.close();
     }catch (SQLException e) {}
    
     return true;
  }
  
  public BnCriterios buscar(int idactv)
  {
      String sql="SELECT * FROM tipo_actividad WHERE Id_TipoActv = " + idactv;
      
      try
      {
          con =ConexionMySQL.getConnection();
          ps  =con.prepareStatement(sql);
          rs = ps.executeQuery();
          while(rs.next())
          {
              criterios = new BnCriterios();
              criterios.setIdactv(rs.getInt("Id_TipoActv"));
              criterios.setTipoactv(rs.getString("Tipo_Actv"));
              criterios.setPorcentaje(rs.getInt("Porcentaje"));
              
          }
          ps.close();
          con.close();
      }catch (SQLException e) {}
      
      return criterios;
  }
  
  public boolean editar(BnCriterios criterios, int Old)
  {
     String sql="UPDATE tipo_actividad SET " +
             "Id_TipoActv = "  + criterios.getIdactv()     + ","  +
             "Tipo_Actv   = '" + criterios.getTipoactv()   + "'," +
             "Porcentaje  = "  + criterios.getPorcentaje() + 
             " WHERE Id_TipoActv = " + Old;
      
      try
      {
          con =ConexionMySQL.getConnection();
          ps  =con.prepareStatement(sql);
          ps.executeUpdate();
          ps.close();
          con.close();
      }catch (SQLException e) {}
      
      return true;
  }
  
   public boolean eliminar (int idactv)
   {
       String sql="DELETE FROM tipo_actividad WHERE Id_TipoActv =" + idactv;
       
       try
       {
           con = ConexionMySQL.getConnection();
           ps = con.prepareStatement(sql);
           ps.executeUpdate();
           ps.close();
           con.close();
       }catch (SQLException e) {}
       
       return true;
   }
}
