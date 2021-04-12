/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Users;

/**
 *
 * @author Acer
 */
public class UserDAO {

    //ktra email
    public boolean checkEmail(String email) {
        Connection connection = DBConnect.getConnecttion();
        String sql = "select * from userweb where Email = '" + email + "'";
        PreparedStatement ps;
        try {
            ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                connection.close();
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    //insert tai khoan vào CSDL
    public boolean insertUser(Users u) {
        Connection connection = DBConnect.getConnecttion();
        String sql = "INSERT INTO userweb(UserName,Email,Password,Phone,Address) VALUES(?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareCall(sql);        
            ps.setString(1, u.getUserName());
            ps.setString(2, u.getEmail());
            ps.setString(3, u.getPassword());
            ps.setString(4, u.getPhone());
            ps.setString(5, u.getAddress());
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    //ktra login
    public Users login(String email, String pass){
        Connection con = DBConnect.getConnecttion();
        String sql = "select * from userweb where Email = '"+email+"' and Password = '"+pass+"'";
        PreparedStatement ps;
        try {
            ps = (PreparedStatement) con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Users u = new Users();
                u.setEmail(rs.getString("Email"));
                u.setUserName(rs.getString("UserName"));
                con.close();
                return u;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }
}

