package com.modelo;

import com.conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class AsociadoDAO extends Conexion {
 public ArrayList<Asociado> mostrarAsociado() {
        ArrayList<Asociado> lista=new ArrayList<>();
        try {
            this.conectar();//conectarse a la base de datos.
            String sql = "select * from trabajadores";
            PreparedStatement pre = this.getCon().prepareStatement(sql);
            ResultSet rs; //para almacenar el resultado de la instruccion sql
            rs=pre.executeQuery();//se ejecuta el sql
            while(rs.next()){
                Asociado c=new Asociado();
                c.setIdTrabajador(rs.getInt(1));
                c.setNombre(rs.getString(2));
                c.setApellido(rs.getString(3));
                c.setEdad(rs.getString(4));
                c.setSalario(rs.getDouble(5));
                 c.setArea(rs.getString(6));
                lista.add(c);
            }
        } catch (Exception e) {
            System.err.println("Error al conectarse a la base de datos" +e.getMessage());
        }finally{
            this.desconectar();
        }
        return lista;
}
 //definimos el metodo para insertar nuevos registros
 public int insertarAsociado(Asociado c){
     int res=0;//si se mantiene en 0 es porque los datos no se agregaron
     try{
         this.conectar();
         String sql="insert into trabajadores (nombre , apellido,edad ,salario ,area )values(? , ?, ? , ? ,?)";
         PreparedStatement pre = this.getCon().prepareStatement(sql);
         pre.setString(1, c.getNombre());
         pre.setString(2, c.getApellido());
          pre.setString(3, c.getEdad());
         pre.setDouble(4, c.getSalario());
         pre.setString(5, c.getArea());
         res=pre.executeUpdate();
     }catch(SQLException e){
         System.err.println("Error al insertar los datos"+e.getMessage());
     }finally{
         this.desconectar();
     }
     return res;
 }
 public int modificarAsociado(Asociado c){
     int res=0;
     try{
         this.conectar();
         String sql="update trabajadores set nombre=?, apellido=?,edad=?,salario=?, area=? where id_trabajadores=?";
         PreparedStatement pre=this.getCon().prepareStatement(sql);
         pre.setString(1, c.getNombre());
         pre.setString(2, c.getApellido());
          pre.setString(3, c.getEdad());
         pre.setDouble(4, c.getSalario());
         pre.setString(5, c.getArea());
         pre.setInt(6, c.getIdTrabajador());
         res=pre.executeUpdate();
     }catch(SQLException e){
         System.err.println("Error al editar el cliente " +e.getMessage());
     }finally{
         this.desconectar();
     }
     
     return res;
 }
 public int eliminarAsociado(Asociado c){
     int res=0;
     try{
         this.conectar();
         String sql="delete from trabajadores where id_trabajadores=? ";
         PreparedStatement pre=this.getCon().prepareStatement(sql);
         pre.setInt(1, c.getIdTrabajador());
         res=pre.executeUpdate();
     }catch(Exception e){
         System.err.println("Error al elminar el cliente" +e.getMessage());
     }finally{
         this.desconectar();
     }
     return res;
 }
}
