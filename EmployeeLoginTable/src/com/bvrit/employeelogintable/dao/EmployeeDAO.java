package com.bvrit.employeelogintable.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class EmployeeDAO {
	Connection con;
	ConnectionDao cdao;
	PreparedStatement pst;
	ResultSet r;
	public EmployeeDAO()
	throws ClassNotFoundException,SQLException{
		cdao = new ConnectionDao();
		con = cdao.getConnection();
	}

	public ArrayList<Employee> getAllContacts(String username) throws SQLException{
        ArrayList<Employee>  cc = new ArrayList<Employee>();
        try {
            pst =  con.prepareStatement("select * from employee where role ='employee'");
        } catch (SQLException e) {
            System.out.println("error");
            e.printStackTrace();
        }
        try {
            r=pst.executeQuery();
            } catch (SQLException e) {
            
            e.printStackTrace();
        }
        while(r.next()){
            Employee c  = new Employee(r.getString(1),r.getString(2),r.getString(3),r.getString(4),r.getString(5),r.getString(6),r.getString(7),r.getString(8));
            cc.add(c);
        }
        return  cc;
    }
	public ArrayList<Employee> getAllDetails(String username) throws SQLException{
        ArrayList<Employee>  cc = new ArrayList<Employee>();
        try {
            pst =  con.prepareStatement("select * from employee where name ="+ "'"+username+"'");
        } catch (SQLException e) {
            System.out.println("error");
            e.printStackTrace();
        }
        try {
            r=pst.executeQuery();
            } catch (SQLException e) {
            
            e.printStackTrace();
        }
        while(r.next()){
            Employee c  = new Employee(r.getString(1),r.getString(2),r.getString(3),r.getString(4),r.getString(5),r.getString(6),r.getString(7),r.getString(8));
            cc.add(c);
        }
        return  cc;
    }

   public boolean updateemployee(String name,String role,String email_id,String phoneno,String address,String company,String designation,String role_id)
   throws ClassNotFoundException,SQLException{
	   boolean result = false;
	   String q = "update employee set phone_no = '" + phoneno + "',email_id = '" + email_id+ "',name = '" + name+ "',address = '" + address+ "',company = '" +company+ "',designation = '" +designation+ "' where role_id='" + role_id+ "'";
		
		pst = con.prepareStatement(q);
		//System.out.println(q);
		
		int ans = pst.executeUpdate();
		//System.out.println(ans);
		if(ans>0){
			result = true;
		}
		return result;
		
	   
	   
   }
   public boolean addemployee(String name,String phone,String email,String address,String company,String designation)
			throws ClassNotFoundException,SQLException{
		boolean result = false;
		String q = "insert into employee(name,role,email_id,phone_no,address,company,designation) values('" + name + "','employee','" + email + "','" +phone+ "','" +address+ "','" +company+ "','" +designation+ "')";
		//System.out.println(q);
		pst = con.prepareStatement(q);

		
		int ans = pst.executeUpdate();
		if(ans>0){
			result = true;
		}
		return result;
		

	
	}
   public boolean deletecontact(String name)
		   throws ClassNotFoundException,SQLException{
	   
	   boolean result = false;
	  // System.out.println(name);
	   String q = "delete from contact where fname = '" +name + "'";
	   pst = con.prepareStatement(q);

		
		int ans = pst.executeUpdate();
		if(ans>0){
			result = true;
		}
		return result;
	   
	   
   }

	}
	

