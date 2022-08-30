package inventario.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.logging.Logger;
import java.util.logging.Level;

public class Conexion {
    //para que esta clase funcione se debe importar en libreries el mysql-conector.jar
    String basedatos = "inventario";
    String url = "jdbc:mysql://localhost:3306/";
    String user ="root";
    String password ="";
    String driver="com.mysql.cj.jdbc.Driver";
    Connection conexion;
    
    public Conexion(){
        try {
            Class.forName(driver);//como se usa mysql se usa este driver
            conexion = DriverManager.getConnection(url+basedatos,user,password);
            System.out.println("Se conecto correctamente a "+basedatos);
        } catch (Exception e) {
            System.out.println("Se presento un error al crear la conexión.");
        }
    }
    
    public Connection conectar(){
        try {
            Class.forName(driver);//como se usa mysql se usa este driver
            conexion = DriverManager.getConnection(url+basedatos,user,password);
            System.out.println("Se conecto correctamente a "+basedatos);
//            PreparedStatement pstm = conexion.prepareStatement("Select * from usuario");
//            ResultSet respuesta = pstm.executeQuery();
//            while(respuesta.next()){
//                System.out.println("Imprimir");
//                System.out.println(respuesta.getString("nombres"));
//            }
        } catch (Exception e) {
            System.out.println("Se presento un error al crear la conexión.");
        }
        return conexion;
    }
    
    public void desconectar(){
        try {
            conexion.close();
        } catch (SQLException e) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE,null, e);
        }
    }
    
    public int ejecutarSentenciSQL(String sentenciSQL){
        try {
            PreparedStatement pstm = conexion.prepareStatement(sentenciSQL);
            pstm.execute();
            return 1;
        } catch (Exception e) {
            System.out.println("Error en la entencia");
            return 0;
        }
    }
    
    public ResultSet consultarRegistro(String sentenciaSQL){
        try {
            PreparedStatement pstm = conexion.prepareStatement(sentenciaSQL);
            ResultSet respuesta = pstm.executeQuery();
            return respuesta;
        } catch (Exception e) {
            return null;
        }
    }
}
