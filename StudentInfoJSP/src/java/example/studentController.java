/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package example;

import java.sql.Connection;
//import java.sql.
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class studentController {
     
    public static Connection conn = null;


   
    public static Connection getDBConnection() throws  ClassNotFoundException, SQLException
    {
        if(conn == null){
            Class.forName("com.mysql.jdbc.Driver");

            conn =DriverManager.getConnection("jdbc:mysql://localhost:3305/students?verifyServerCertificate=false&useSSL=true", "root", "mysql");
        }
        return conn;
    }
    
    public ArrayList<Student> getStuInfo(){
        ArrayList<Student> stuArr = new ArrayList<>();
//        
        
        try {
            Connection conn = getDBConnection();
            Statement statement = conn.createStatement();
            String sql = "SELECT * FROM students.students_reg;";
//        ResultSet result = statement.executeQuery(sql);
            PreparedStatement stmt=conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
               Student stu = new Student();
               stu.setStudentName(rs.getString(2));
               stu.setAdress(rs.getString(3));
               stu.setAge(rs.getInt(4));
               stu.setGpa(rs.getDouble(5));
               
               stuArr.add(stu);
            }
            
        
        
        }  catch (ClassNotFoundException ex) {
            Logger.getLogger(studentController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(studentController.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            return stuArr;
        }
//return stuArr;
    
    
}

    
}
