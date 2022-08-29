
package beans;


public class BnMostrarActvs 
{
    private int    idactv;
    private String descripcion;
    private String fechalimite;
    private String fechaentregado;
    private float  calificacion;
    private String alumno;
    private String tipoactv;
    
    public BnMostrarActvs()
    {
        idactv=0;
        descripcion=fechalimite=fechaentregado=alumno=tipoactv="";
        calificacion=0.0f;
    }
    
    public BnMostrarActvs(int idactv, String descripcion, String fechalimite, String fechaentregado, float calificacion, String alumno, String tipoactv)
    {
        this.idactv          = idactv;
        this.descripcion     = descripcion;
        this.fechalimite     = fechalimite;
        this.fechaentregado  = fechaentregado;
        this.calificacion    = calificacion;
        this.alumno          = alumno;
        this.tipoactv        = tipoactv;
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

    public String getAlumno() {
        return alumno;
    }

    public void setAlumno(String alumno) {
        this.alumno = alumno;
    }

    public String getTipoactv() {
        return tipoactv;
    }

    public void setTipoactv(String tipoactv) {
        this.tipoactv = tipoactv;
    }
    
    
}
