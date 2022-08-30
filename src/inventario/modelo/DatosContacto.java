package inventario.modelo;

public class DatosContacto {
    long id_datoscontacto;
    private long telefono;
    private String direccion;
    long id_proveedor;

    public DatosContacto() {
    }

    public DatosContacto(int titulo, String genero) {
        this.telefono = titulo;
        this.direccion = genero;
    }

    public long getId_datoscontacto() {
        return id_datoscontacto;
    }

    public void setId_datoscontacto(long id_datoscontacto) {
        this.id_datoscontacto = id_datoscontacto;
    }

    public long getTelefono() {
        return telefono;
    }

    public void setTelefono(long telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public long getId_proveedor() {
        return id_proveedor;
    }

    public void setId_proveedor(long id_proveedor) {
        this.id_proveedor = id_proveedor;
    }
    
    

}
