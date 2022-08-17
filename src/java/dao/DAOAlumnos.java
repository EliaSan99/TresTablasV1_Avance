
package dao;

import beans.BnAlumnos;
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
public class DAOAlumnos
{
  private Connection con;
  private PreparedStatement  ps;
  private ResultSet rs;
  private BnAlumnos alumnos;
  
  public ArrayList mostrar()
  {
      ArrayList <BnAlumnos> list = new ArrayList<>();
      String sql ="SELECT * FROM alumnos";
      try
      {
          con=ConexionMySQL.getConnection();
          ps=con.prepareStatement(sql);
          rs=ps.executeQuery(); 
          while(rs.next())
          {
              alumnos = new BnAlumnos();
              alumnos.setMatricula(rs.getString("Matricula"));
              alumnos.setNombre(rs.getString("Nombre"));
              alumnos.setPaterno(rs.getString("Paterno"));
              alumnos.setMaterno(rs.getString("Materno"));
             /*alumnos.setSexo(rs.getString("Sexo"));
              alumnos.setTelefono(rs.getInt("Telefono"));
              alumnos.setCarrera(rs.getString("Carrera"));
              alumnos.setMcpio(rs.getString("Mcpio"));
              alumnos.setCalle(rs.getString("Calle"));
              alumnos.setNumext(rs.getString("Num_Ext"));*/
              list.add(alumnos);
          }
          
          rs.close();
          ps.close();
          con.close();
      }catch(SQLException e){}
      
      return list;
  }
  
  public boolean agregar(BnAlumnos alumnos)
  {
      String sql="INSERT INTO alumnos VALUES('"  +
                 alumnos.getMatricula() + "',"   +
           "'" + alumnos.getNombre()    + "',"   +
           "'" + alumnos.getPaterno()   + "',"   +
           "'" + alumnos.getMaterno()   + "',"   +
           "'" + alumnos.getSexo()      + "',"   +
           "'" + alumnos.getTelefono()  + "',"    +
           "'" + alumnos.getCarrera()   + "',"   +
           "'" + alumnos.getMcpio()     + "',"   +
           "'" + alumnos.getCalle()     + "',"   +
           "'" + alumnos.getNumext()    + "')";
      
      try
      {
          con = ConexionMySQL.getConnection();
          ps = con.prepareStatement(sql);
          ps.executeUpdate();
          ps.close();
          con.close();
      }catch(SQLException e){}
      
      return true;
   }
  
  public BnAlumnos buscar(String matricula)
  {
      String sql ="SELECT * FROM alumnos WHERE Matricula = '" + matricula + "'";
      
      try
      {
       con=ConexionMySQL.getConnection();
       ps=con.prepareStatement(sql);
       rs=ps.executeQuery();
       while(rs.next())
       {
           alumnos = new BnAlumnos();
           alumnos.setMatricula(rs.getString("Matricula"));
           alumnos.setNombre(rs.getString("Nombre"));
           alumnos.setPaterno(rs.getString("Paterno"));
           alumnos.setMaterno(rs.getString("Materno"));
           alumnos.setSexo(rs.getString("Sexo"));
           alumnos.setTelefono(rs.getString("Telefono"));
           alumnos.setCarrera(rs.getString("Carrera"));
           alumnos.setMcpio(rs.getString("Mcpio"));
           alumnos.setCalle(rs.getString("Calle"));
           alumnos.setNumext(rs.getString("Num_Ext"));
       }
       
       rs.close();
       ps.close();
       con.close();
      }catch(SQLException e) {}
      
      return alumnos;
  }
  
  public boolean editar(BnAlumnos alumnos, String Old)
  {
      String sql="UPDATE alumnos SET " +
             "Matricula  = '" + alumnos.getMatricula() + "'," +
             "Nombre     = '" + alumnos.getNombre()    + "'," +
             "Paterno    = '" + alumnos.getPaterno()   + "'," +
             "Materno    = '" + alumnos.getMaterno()   + "'," +
             "Sexo       = '" + alumnos.getSexo()      + "'," +
             "Telefono   = "  + alumnos.getTelefono()  + ","  +
             "Carrera    = '" + alumnos.getCarrera()   + "'," +
             "Mcpio      = '" + alumnos.getMcpio()     + "'," +
             "Calle      = '" + alumnos.getCalle()     + "'," +
             "Num_Ext    = '" + alumnos.getNumext()    + "'"  +
             "WHERE Matricula = '" + Old + "'";
      
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
  
  public boolean eliminar (String matricula)    
  {
      String sql = "DELETE FROM alumnos WHERE Matricula ='" + matricula + "'";
      
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
}
