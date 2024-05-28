/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.Customer;

/**
 *
 * @author Admin
 */
public class CustormerDAO extends DBContext{
    public List<Customer> getAll() {
        List<Customer> list = new ArrayList<>();
        String sql = "select * from customer";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Customer p = new Customer();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setAmount(rs.getDouble("amount"));
                p.setUsername(rs.getString("username"));
                p.setPassword(rs.getString("password"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    public Customer getCustomerById(int id) {
        String sql = "select * from customer where id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Customer p = new Customer();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setAmount(rs.getDouble("amount"));
                p.setUsername(rs.getString("username"));
                p.setPassword(rs.getString("password"));
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    public void insert(Customer c) {
        String sql = "INSERT INTO customer (id, name, amount,username,password) VALUES (?, ?, ?, ?,?)";
//        String sql="insert into Categories values(?,?,?)";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, c.getId());
            st.setString(2, c.getName());
            st.setDouble(3, c.getAmount());
            st.setString(4, c.getUsername());
            st.setString(5, c.getPassword());
           
            System.out.println("+++++++++++++++++++++++++customerDAO1+++++++++++");
            
            st.executeUpdate();
        } catch (SQLException e) {

            System.out.println(e);
        }
    }
    public void delete(int id) {
        String sql = "DELETE FROM customer WHERE id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void update(Customer c) {
        String sql="UPDATE [dbo].[Customer]\n"
                + "   SET [name] = ?\n"
                + "      ,[amount] = ?\n"
                + "      ,[username] = ?\n"
                + "      ,[password] = ?\n"
                + " WHERE [id] = ?";
        //String sql = "UPDATE customer " + "SET name = ?, amount = ?, username = ? ,password = ?" + "WHERE id = ?";
        //String sql = "UPDATE product " + "SET name = ?, quantity = ?, price = ?, releaseDate = ?, describe = ?, image = ?, cid = ? " + "WHERE id = ?";
        try {
            PreparedStatement st = connection.prepareCall(sql);
            st.setString(1, c.getName());
            st.setDouble(2, c.getAmount());
            st.setString(3, c.getUsername());
            st.setString(4, c.getPassword());
            st.setInt(5, c.getId());
           
            System.out.println("--------------------upatde3");
            System.out.println(c.getName());
            System.out.println(c.getId());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
}
