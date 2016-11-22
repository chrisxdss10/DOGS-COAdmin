
package BD;
import java.sql.ResultSet;

public class cAdmin {
    
    private int _idAd;
    private int _opc;
    private String miMensaje;
    
    
    cAdmin(){
        
    }
    
    public cAdmin(String contra){
        try
        {
            BD.Conexion objBD = new BD.Conexion();
            objBD.conectar();
            
            ResultSet rsUsr = objBD.consulta("call CrearClaveAdmin('"+contra+"');");
            String o= rsUsr.getString("num");
            if(o.equals("1"))
                {
                    this._idAd =rsUsr.getInt("IdAdministrador");
                    this._opc = 1;
                    this.miMensaje="Hola1";
                }
                else
                {
                    this._idAd =rsUsr.getInt("IdAdministrador");
                    this._opc = 0;
                    this.miMensaje="nelndjfknsdjk";
                }
            
        }
        catch(Exception e)
        {
            
        }
    }

    public int getIdAd() {
        return _idAd;
    }

    public int getOpc() {
        return _opc;
    }

    public String getMiMensaje() {
        return miMensaje;
    }

    
    
    
    
}
