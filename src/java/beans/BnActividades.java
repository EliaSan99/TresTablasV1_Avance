
package beans;

/**
 *
 * @author EliasSan
 */
public class BnActividades 
{
    private int    idactv;
    private String descripcion;
    private String fechalimite;
    private String fechaentregado;
    private float  calificacion;
    private String matricula;
    private int    idtipoactv;
    
    public BnActividades()
    {
     idactv=idtipoactv=0;
     descripcion=fechalimite=fechaentregado=matricula="";
     calificacion=0.0f;
    }
    
    public BnActividades(int idactv, String descripcion, String fechalimite, String fechaentregado, float calificacion, String matricula, int idtipoactv)
    {
        this.idactv          = idactv;
        this.descripcion     = descripcion;
        this.fechalimite     = fechalimite;
        this.fechaentregado  = fechaentregado;
        this.calificacion    = calificacion;
        this.matricula       = matricula;
        this.idtipoactv      = idtipoactv;
        
    }

    public int getIdactv() {
        return idactv;
    }

    public void setIdactv(int idactv) {
        this.idactv = idactv;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getFechalimite() {
        return fechalimite;
    }

    public void setFechalimite(String fechalimite) {
        this.fechalimite = fechalimite;
    }

    public String getFechaentregado() {
        return fechaentregado;
    }

    public void setFechaentregado(String fechaentregado) {
        this.fechaentregado = fechaentregado;
    }

    public float getCalificacion() {
        return calificacion;
    }

    public void setCalificacion(float calificacion) {
        this.calificacion = calificacion;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public int getIdtipoactv() {
        return idtipoactv;
    }

    public void setIdtipoactv(int idtipoactv) {
        this.idtipoactv = idtipoactv;
    }
    
    
    
    
}
