/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StudentServiceClass;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

public class DbAccess{
   public String databaseUrl;
   public Connection conn;
   public Statement sttmnt;
   
//----------------------------Default Bağlantı Ayarları-------------------------------------
    public void setSunucu(String sunucu) {
        this.sunucu = sunucu;
    }

    public void setPort(String port) {
        this.port = port;
    }

    public void setDatabaseAdi(String databaseAdi) {
        this.databaseAdi = databaseAdi;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }
   public String sunucu="localhost";
   public String port="3306";
   public String databaseAdi="student_service";
   public String username="root";
   public String password="";
//----------------------------------Farklı Databse--------------------------------------------
   public String username2="sql287278";
   public String password2="cU8%hW4*";

public  DbAccess(){}
   //Create Table
   /* public void CreatTable(){
            tableName = "myTable" + String.valueOf((int)(Math.random() * 1000.0));
            createTable = "CREATE TABLE " + tableName + " (id Integer, name Text(32))";
        try { 
            sttmnt.execute(createTable);
        } catch (SQLException ex) {
            Logger.getLogger(DbAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
   }
     // enter value into table         
     public void addData(){
              String addRow = "INSERT INTO " + tableName + " VALUES ( " + 
              String.valueOf((int) (Math.random() * 32767)) + ", 'Text Value " + 
              String.valueOf(Math.random()) + "')";
        try {
            sttmnt.execute(addRow);
        } catch (SQLException ex) {
            Logger.getLogger(DbAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
            }
     // Fetch table
         public void fetchTable(){
        try {
      String selTable = "SELECT * FROM " + tableName;       
            sttmnt.execute(selTable);
            ResultSet rs = sttmnt.getResultSet();
            while((rs!=null) && (rs.next()))
            {
                System.out.println(rs.getString(1) + " : " + rs.getString(2));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DbAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
         }
   // drop the table   
         public void dropTable(){
           String dropTable = "DROP TABLE " + tableName;
        try {
            sttmnt.execute(dropTable);
        } catch (SQLException ex) {
            Logger.getLogger(DbAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
         }*/
   //Open Connection
   public void openDatabase(){
           try
        {
//---------------------------MYSQL DATABASE BA�LANTISI----------------------------------------
      Class.forName("com.mysql.jdbc.Driver");
      databaseUrl = "jdbc:mysql://"+sunucu+":"+port+"/"+databaseAdi+"?useUnicode=true&characterEncoding=UTF-8";
            //databaseUrl = "jdbc:mysql://sql2.freesqldatabase.com:3306/sql287278?useUnicode=true&characterEncoding=UTF-8";
//-----------------------ACCESS DATABASE BAĞLANTISI-------------------------------------------
            //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            //databaseUrl = "jdbc:odbc:Driver={Microsoft Access Driver (*.mdb)};DBQ=myDB.mdb;";
            //Following access database url created after java8 
            //which oracle declare java is independent platform can't use other platform driver
            //so java8 not support Microsoft Access Driver
            //databaseUrl="jdbc:ucanaccess://D:/JAVA PROJELER/O_Servisi_Ogrenci_Kayit/myDB.mdb";
//----------------------------------------------------------------------------------------------
        conn = DriverManager.getConnection(databaseUrl,username,password); 
        sttmnt = conn.createStatement();    
        }
        catch(ClassNotFoundException | SQLException ex)
        { 
         JOptionPane.showMessageDialog( null,ex.getMessage(), "Database error", JOptionPane.ERROR_MESSAGE );
          Logger.getLogger(DbAccess.class.getName()).log(Level.SEVERE, null,ex);  
        }
   }
         // close and cleanup
         public void closeDatabase(){           
        try 
        {
            sttmnt.close();
            conn.close();
        } 
        catch (SQLException ex) 
        {  
            JOptionPane.showMessageDialog( null,ex.getMessage(), "Database error", JOptionPane.ERROR_MESSAGE );
            Logger.getLogger(DbAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
     }
}