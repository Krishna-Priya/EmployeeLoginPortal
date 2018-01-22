package com.bvrit.employeelogintable.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class ConnectionDao {
	Connection con;
	public Connection getConnection()throws ClassNotFoundException,SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employeelogin","root","root");
		return con;
	}
	//test getConnection()
	public static void main(String args[])
	throws Exception{
		ConnectionDao dao = new ConnectionDao();
		System.out.println(dao.getConnection());
	}

}
