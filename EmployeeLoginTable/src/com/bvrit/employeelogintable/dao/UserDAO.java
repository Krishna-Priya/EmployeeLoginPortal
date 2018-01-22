package com.bvrit.employeelogintable.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class UserDAO {
	

	Connection con;
	ConnectionDao cdao;
	PreparedStatement pst,pst1;
	public UserDAO()
	throws ClassNotFoundException,SQLException{
		
		cdao = new ConnectionDao();
		
		con = cdao.getConnection();
	}
	public boolean signup(String user,String password,String role)
	throws ClassNotFoundException,SQLException{
		boolean result = false;
		pst = con.prepareStatement("insert into user values('"+user+"','"+role+"','"+password+"')");
		pst1 = con.prepareStatement("insert into employee(name,role,email_id,phone_no,address,company,designation) values('"+user+"','employee',' ',' ',' ',' ',' ')");
		int ans = pst.executeUpdate();
		int ans1 = pst1.executeUpdate();
		if(ans>0){
			result = true;
		}
		return result;
	}
	public boolean login(String user,String password)
			throws ClassNotFoundException,SQLException{
				boolean result = false;
				//System.out.println("1.1");
				pst = con.prepareStatement("select * from user where name ='"+user+"'and password = '"+password+"'");
				//System.out.println("1.2");
				ResultSet rs = pst.executeQuery();
				if(rs.next()){
					result = true;
				}
				return result;
			}
	public String getRole(String user)
			throws ClassNotFoundException,SQLException{
				String result = null;
				//System.out.println("1.1");
				pst = con.prepareStatement("select role from employee where name ='"+user+"'");
				//System.out.println("1.2");
				ResultSet rs = pst.executeQuery();
				if(rs.next()){
					result = rs.getString(1);
				}
				return result;
			}
	

}
