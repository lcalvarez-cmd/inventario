package inventario.modelo;

import java.util.ArrayList;

public class Proveedor {
    
    long id_proveedor;
    private String nombre;
    private String nit;
    private ArrayList<DatosContacto> datos;
    private ArrayList<Producto> productos;

    public Proveedor() {
    }

    public Proveedor(String nombre, String nit, ArrayList<DatosContacto> datos) {
        this.nombre = nombre;
        this.nit = nit;
        this.datos = datos;
    }

    public long getId_proveedor() {
        return id_proveedor;
    }

    public void setId_proveedor(long id_proveedor) {
        this.id_proveedor = id_proveedor;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public ArrayList<DatosContacto> getDatos() {
        return datos;
    }

    public void setDatos(ArrayList<DatosContacto> datos) {
        this.datos = datos;
    }

    public ArrayList<Producto> getProductos() {
        return productos;
    }

    public void setProductos(ArrayList<Producto> productos) {
        this.productos = productos;
    }

    public void agregarDatos(DatosContacto datos){
        if(this.datos == null){
            this.datos = new ArrayList<>();
        }
        this.datos.add(datos);
    }
          
    public void agregarProducto(Producto producto){
        if(this.productos == null){
            this.productos = new ArrayList<>();
        }
        this.productos.add(producto);
    }
}
