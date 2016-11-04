/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.proyecto.conexion;

import com.mysql.jdbc.PreparedStatement;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;

/**
 *
 * @author Ruben P
 */
public class Conexion {
    private Connection con;
    public PreparedStatement consulta;
    public ResultSet datos;
    private String server,user,bd,pass;
   
    
    public Conexion(){
    
     this.server="localhost";
        this.bd="Flexon";
        this.user="root";
        this.pass="root";
        
    
    }
    public Connection getconexion(){
        Connection cn=null;
        
        try{
              Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://"+this.server+"/"+this.bd,this.user,this.pass);
        }catch(Exception ex){
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return cn;
    }
    public void con() throws SQLException {
        
        try {
             Class.forName("com.mysql.jdbc.Driver");
        this.con=DriverManager.getConnection("jdbc:mysql://"+this.server+"/"+this.bd,this.user,this.pass);
        
        
        
           
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
       

}
    public void desconectar() throws SQLException{
         this.con.close();
    }
    
    public ResultSet GetUser(String user, String Password) throws SQLException 
    {
        this.con();
        this.consulta=(PreparedStatement) this.con.prepareStatement("select * from admin where User='"+user+"' and Password='"+Password+"'");
        this.datos=this.consulta.executeQuery();
        return this.datos;
    }
   
    
    public ResultSet getClientes() throws SQLException 
    {
    this.con();

    this.consulta=(PreparedStatement) this.con.prepareStatement("select * from cliente");
    this.datos=this.consulta.executeQuery();
    return this.datos;
    }
    
}
