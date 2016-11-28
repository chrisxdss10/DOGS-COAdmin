package BD;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;

public class ConsultaCentro {

    private static Centro center1;
    
    public static LinkedList<Centro> getCentros(){
        LinkedList<Centro> listaCentros=new LinkedList<Centro>();
      try
      {
         BD.Conexion con= new BD.Conexion();
         con.conectar();
         ResultSet rs;
         rs= con.consulta("call verCentro();");
         
         while (rs.next())
         {
            Centro center = new Centro();
            center.setCorreo(rs.getString("Correo"));
            center.setDireccion(rs.getString("Direccion"));
            center.setId(Integer.parseInt(rs.getString("IdCentro")));
            center.setNombre(rs.getString("NombreCentro"));
            center.setTelefono(rs.getString("Telefono"));
            
            listaCentros.add(center);
         }
         con.cierraConexion();
      }
      catch (Exception e)
      {
         e.printStackTrace();
      }
      return listaCentros;
   }
    
}

