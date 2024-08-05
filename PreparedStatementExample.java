package com.jdbc;
import java.sql.*;
public class PreparedStatementExample {
    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_vamsi","root","Vamsi@0506");
            String query = "insert into std1 values(?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1,15);
            ps.setString(2,"mahalya");
            ps.setDouble(3,56676);
            ps.setString(4,"NLR");
            ps.execute();

        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
}
