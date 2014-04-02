/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import controller.Connect;
import javax.servlet.ServletContext;

/**
 *
 * @author Erik
 */
public class User {

    private String username, password, name, telephone, email, address;
    private int id;

    public User() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void insert(ServletContext app) {
        Connect con = new Connect(app);
        String query = "insert into MsUser(Username,Password,Name,Email,Address,Telephone) values('" + getUsername() + "','" + getPassword() + "','" + getName() + "','" + getEmail() + "','" + getAddress() + "','" + getTelephone() + "')";
        con.Query(query);
        con.closeConnect();
    }

   
}
