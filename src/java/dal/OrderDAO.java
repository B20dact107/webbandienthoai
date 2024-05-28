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
import model.Order;
import model.OrderDetail;

/**
 *
 * @author Admin
 */
public class OrderDAO extends DBContext{
    public List<Order> getAll() {
        List<Order> list = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[date]\n"
                + "      ,[cid]\n"
                + "      ,[totalmoney]\n"
                + "  FROM [dbo].[Order]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Order p = new Order();
                p.setId(rs.getInt("id"));
                p.setDate(rs.getString("date"));
                p.setCusid(rs.getInt("cid"));
                p.setTotalmoney(rs.getDouble("totalmoney"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    public List<OrderDetail> getAll1() {
        List<OrderDetail> list1 = new ArrayList<>();
        String sql = "select * from orderline";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                OrderDetail e = new OrderDetail();
                e.setOid(rs.getInt("oid"));
                e.setPid(rs.getString("pid"));
                e.setQuantity(rs.getInt("quantity"));
                e.setPrice(rs.getDouble("price"));
                list1.add(e);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list1;
    }
    public Order getOrderById(int cid) {
        String sql = "select * from order where cid=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, cid);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Order p = new Order();
                p.setId(rs.getInt("id"));
                p.setDate(rs.getString("date"));
                p.setCusid(rs.getInt("cid"));
                p.setTotalmoney(rs.getDouble("totalmoney"));
                return p;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    public List<Order> getHoadon(int cid) {
        List<Order> list = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[date]\n"
                + "      ,[cid]\n"
                + "      ,[totalmoney]\n"
                + "  FROM [dbo].[Order]\n"
                + "  where cid=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Order p = new Order();
                p.setId(rs.getInt("id"));
                p.setDate(rs.getString("date"));
                p.setCusid(rs.getInt("cid"));
                p.setTotalmoney(rs.getDouble("totalmoney"));
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
}
