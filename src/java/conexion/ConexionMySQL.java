
package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class ConexionMySQL 
{
    public static Connection getConnection() throws SQLException
    {
        try 
        {
          Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
          System.out.println("No se cargo el driver");
        }
        
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/trestablas","root", "");
    }
    
    public static void main(String[] args) throws SQLException
    {
        ConexionMySQL ConexionBD = new ConexionMySQL();
        ConexionBD.getConnection();
    }
}
