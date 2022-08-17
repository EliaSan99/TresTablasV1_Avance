
package beans;

/**
 *
 * @author EliasSan
 */
public class BnAlumnos 
{
    private String matricula;
    private String nombre;
    private String paterno;
    private String materno;
    private String sexo;
    private String telefono;
    private String carrera;
    private String mcpio;
    private String calle;
    private String numext;
    
    
    public BnAlumnos()
    {
        matricula=nombre=paterno=materno=sexo=telefono=carrera=mcpio=calle=numext="";
        
    }
    
    public BnAlumnos(String matricula,String nombre,String paterno,String materno, String sexo, String telefono, String carrera, String mcpio, String calle, String numext)
    {
        this.matricula = matricula;
        this.nombre    = nombre;
        this.paterno   = paterno;
        this.materno   = materno;
        this.sexo      = sexo;
        this.telefono  = telefono;
        this.carrera   = carrera;
        this.mcpio     = mcpio;
        this.calle     = calle;
        this.numext    = numext;
        
    }
    
    
    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }
    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCarrera() {
        return carrera;
    }

    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }

    public String getMcpio() {
        return mcpio;
    }

    public void setMcpio(String mcpio) {
        this.mcpio = mcpio;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public String getNumext() {
        return numext;
    }

    public void setNumext(String numext) {
        this.numext = numext;
    }

    public String getMatricula() 
    {
        return matricula;
    }

    public void setMatricula(String matricula)
    {
        this.matricula = matricula;
    }

    public String getNombre()
    {
        return nombre;
    }

    public void setNombre(String nombre) 
    {
        this.nombre = nombre;
    }

    public String getPaterno() 
    {
        return paterno;
    }

    public void setPaterno(String paterno) 
    {
        this.paterno = paterno;
    }

    public String getMaterno() 
    {
        return materno;
    }

    public void setMaterno(String materno) 
    {
        this.materno = materno;
    }
    
    
}
