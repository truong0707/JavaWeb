/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author TechCare
 */
public class MainforConnectJDBC {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            // TODO code application logic here
            // KHai bao nhung thong tin lien quan den CSDL o day
            String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
            String url = "jdbc:sqlserver://127.0.0.1:1433;databaseName=StudentDB2022;";
            // username va password ni la tuy may. Luc cai dat sql server da co
            String user = "sa";
            String pass = "truong19062001";

            // Cac buoc de ket noi co so du lieu
            // Buoc 1: Nap Trinh Dieu Khien
            Class.forName(driverName);
            // Buoc 2: Thiet lap ket noi
            // Buoc 3: Ket noi CSDL bang doi tuong Cnnection
            Connection con = DriverManager.getConnection(url, user, pass);

            // Buoc 4: Tao doi tuong Statement
            Statement stmt = con.createStatement();
            // Buoc 5: Thuc hien cau truy van SQL
            String sql = "SELECT * FROM Student2022TBL";
            // Buoc 6: Xu ly ket qua tra ve
            // Execute Cau lenh SQL
            ResultSet result = stmt.executeQuery(sql);
            // Duyet tung dong trong result
            while (result.next()) {
                String numberDB = result.getString(1).trim();
                String nameDB = result.getString(2);
                String courseDB = result.getString(3);
                // tao thanh student tam va in ra
                Student tempStudent = new Student(numberDB, nameDB, courseDB);
                System.out.println("" + tempStudent.toString());
            }

            // Buoc 7: Dong ket noi
            result.close();
            stmt.close();
            con.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MainForConnectJDBC.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(MainForConnectJDBC.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
