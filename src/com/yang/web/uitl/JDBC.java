package com.yang.web.uitl;

import com.yang.web.entry.Account;
import com.yang.web.entry.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class JDBC {
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    //登录验证
    public Account SelectUsename(String name){
        Account account=new Account();
        String st= "select * from users where username=?";
        try {
            con = JDBCUtil.getconnection();
            ps=con.prepareStatement(st);
            ps.setString(1,name);
            rs=ps.executeQuery();
            while (rs.next()){
                account=new Account(rs.getString("username"),rs.getString("password"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtil.close(rs,ps,con);
        }
        return account;
    }
    //注册
    public boolean AddAccount(Account account){
        boolean f=true;
        String st="insert into users(username,password) values(?,?)";
        try {
            con=JDBCUtil.getconnection();
            ps=con.prepareStatement(st);
            ps.setString(1,account.getUsername());
            ps.setString(2,account.getPassword());
            if (ps.executeUpdate()!=1){
                System.out.println("添加失败");
                f=false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtil.close(ps,con);
        }
        return f;
    }
    //分页查询
    public List<User>  PageSelect(int ye,int size){
        List<User> list=new ArrayList<>();
        String st="select * from worker limit ?,?";
        try {
            con=JDBCUtil.getconnection();
            ps=con.prepareStatement(st);
            ps.setInt(1,((ye-1)*size));
            ps.setInt(2,size);
            rs=ps.executeQuery();
            while (rs.next()){
                list.add(new User(rs.getInt("id"),rs.getString("bianhao"),rs.getString("name"),rs.getString("gangwei"),rs.getString("bumen")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    //查询数据条数
    public int SelectInt(){
        int a=0;
        String st="select count(id) from worker";
        try {
            con=JDBCUtil.getconnection();
            ps=con.prepareStatement(st);
            rs=ps.executeQuery();
            while (rs.next()){
               a= rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return a;
    }
    //查询所有员工信息
    public List<User> SelectAll(){
        List<User> list=new ArrayList<>();
        String st="select * from worker";
        try {
            con=JDBCUtil.getconnection();
            ps=con.prepareStatement(st);
            rs= ps.executeQuery();
            while (rs.next()){
                list.add(new User(rs.getInt("id"),rs.getString("bianhao"),rs.getString("name"),rs.getString("gangwei"),rs.getString("bumen")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtil.close(rs,ps,con);
        }
        return list;
    }
    //按ID查询
    public User SelectId(int id){
        User user = new User();
        String st="select * from worker where id=?";
        try {
            con=JDBCUtil.getconnection();
            ps=con.prepareStatement(st);
            ps.setInt(1,id);
            rs=ps.executeQuery();
            while (rs.next()){
              user= new User(rs.getInt("id"),rs.getString("bianhao"),rs.getString("name"),rs.getString("gangwei"),rs.getString("bumen"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtil.close(rs,ps,con);
        }
        return user;
    }
    //添加员工
    public boolean AddUser(User user){
        boolean f=true;
        String st="insert into worker(bianhao,name,gangwei,bumen) values(?,?,?,?)";
        try {
            con=JDBCUtil.getconnection();
            ps=con.prepareStatement(st);
            ps.setString(1,user.getBianhao());
            ps.setString(2,user.getName());
            ps.setString(3,user.getGangwei());
            ps.setString(4,user.getBumen());
            if (ps.executeUpdate()!=1){
                System.out.println("添加失败");
                f=false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtil.close(ps,con);
        }
        return f;
    }
    //修改员工信息
    public boolean UpdateUser(User user,int id){
        boolean f=true;
        String st="update worker set bianhao=?,name=?,gangwei=?,bumen=? where id=?";
        try {
            con=JDBCUtil.getconnection();
            ps=con.prepareStatement(st);
            ps.setString(1,user.getBianhao());
            ps.setString(2,user.getName());
            ps.setString(3,user.getGangwei());
            ps.setString(4,user.getBumen());
            ps.setInt(5,id);
            if (ps.executeUpdate()!=1){
                System.out.println("更改失败");
                f=false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtil.close(ps,con);
        }
        return f;
    }
    //删除员工信息
    public boolean DeleteUser(int id){
        boolean f=true;
        String st="delete from worker where id=?";
        try {
            con=JDBCUtil.getconnection();
            ps=con.prepareStatement(st);
            ps.setInt(1,id);
            if (ps.executeUpdate()!=1) {
                System.out.println("删除失败");
                f=false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCUtil.close(ps,con);
        }
        return f;
    }


//    public static void main(String[] args) {
//        JDBC jdbc=new JDBC();
////        System.out.println(jdbc.SelectInt());
////        jdbc.AddUser(new Account("xx","123"));
//        List<User> list=jdbc.PageSelect(1,2);
//        for (User user : list) {
//            System.out.println(user);
//        }
////        System.out.println(list);
////        jdbc.UpdateUser(new User("1002","小王","dd","cc"),1);
//    }

}