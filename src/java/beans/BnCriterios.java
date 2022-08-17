
package beans;

/**
 *
 * @author EliasSan
 */
public class BnCriterios 
{
    private int    idactv;
    private String tipoactv;
    private int    porcentaje;
    
    public BnCriterios()
    {
        idactv=porcentaje=0;
        tipoactv="";
    }
    
    public BnCriterios(int idactv, String tipoactv, int porcentaje)
    {
        this.idactv     = idactv;
        this.tipoactv   = tipoactv;
        this.porcentaje = porcentaje;
    }

    public int getIdactv() 
    {
        return idactv;
    }

    public void setIdactv(int idactv)
    {
        this.idactv = idactv;
    }

    public String getTipoactv() 
    {
        return tipoactv;
    }

    public void setTipoactv(String tipoactv)
    {
        this.tipoactv = tipoactv;
    }

    public int getPorcentaje() 
    {
        return porcentaje;
    }

    public void setPorcentaje(int porcentaje) 
    {
        this.porcentaje = porcentaje;
    }
    
    
}
