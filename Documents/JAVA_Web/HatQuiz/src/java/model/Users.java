/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Acer
 */
public class Users {
    private int UserID;
    private String UserName;
    private String Email;
    private String Password;
    private String Phone;
    private String Address;

    public Users(String UserName, String Email, String Password, String Phone, String Address) {
        this.UserName = UserName;
        this.Email = Email;
        this.Password = Password;
        this.Phone = Phone;
        this.Address = Address;
    }

    public Users() {
    }

    public Users(int UserID, String UserName, String Email, String Password, String Phone, String Address) {
        this.UserID = UserID;
        this.UserName = UserName;
        this.Email = Email;
        this.Password = Password;
        this.Phone = Phone;
        this.Address = Address;
    }

    public int getUserID() {
        return UserID;
    }

    public void setUserID(int UserID) {
        this.UserID = UserID;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }
    
}
