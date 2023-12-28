package com.example.dao;

import com.example.dto.User;
import com.example.entiy.Users;
import com.example.utils.JDBCUtils;

import java.sql.*;

public class UsersDao {
    // 用户信息的数据访问操作
    public Users check(User user){
        Users users = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {

            conn = JDBCUtils.getConnection();

            String sql = "select * from users where username = ? or email =  ? and password = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getUsername());
            ps.setString(3, user.getPassword());

            rs = ps.executeQuery();

            if (rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("username");
                String password = rs.getString("password");
                String email = rs.getString("email");
                Date birthday = rs.getDate("birthday");
                if (id != 0){
                    users = new Users(id, name, password, email, birthday);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(conn, ps, rs);
        }
        return users;
    }

    public Users getUserById(String userId) {
        Users users = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {

            conn = JDBCUtils.getConnection();

            String sql = "select * from users where id = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, userId);

            rs = ps.executeQuery();

            if (rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("username");
                String password = rs.getString("password");
                String email = rs.getString("email");
                Date birthday = rs.getDate("birthday");
                if (id != 0){
                    users = new Users(id, name, password, email, birthday);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(conn, ps, rs);
        }
        return users;
    }

    public boolean register(Users users) {
        Connection conn = null;
        PreparedStatement ps = null;
        int rs = 0;

        try {

            conn = JDBCUtils.getConnection();

            String sql =  "INSERT INTO users(username,PASSWORD,email,birthday) VALUES(?,?,?,?)";

            ps = conn.prepareStatement(sql);
            ps.setString(1, users.getUsername());
            ps.setString(2, users.getPassword());
            ps.setString(3, users.getEmail());
            ps.setString(4, users.getBirthday().toString());

            rs = ps.executeUpdate();

            if (rs != 0){
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            JDBCUtils.close(conn, ps);
        }
        return false;
    }
}
