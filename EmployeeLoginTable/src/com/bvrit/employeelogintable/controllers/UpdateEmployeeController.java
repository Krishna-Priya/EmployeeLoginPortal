package com.bvrit.employeelogintable.controllers;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bvrit.employeelogintable.dao.EmployeeDAO;


public class UpdateEmployeeController extends HttpServlet {
	
       
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//getting phone e-mail name
			//String username = request.getParameter("username");
			String name = request.getParameter("fname");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			String role = request.getParameter("role");
			String company = request.getParameter("company");
			String address = request.getParameter("address");
			String designation = request.getParameter("designation");
			String role_id = request.getParameter("role_id");
			System.out.println(name);
			//create object of contactDAO
			EmployeeDAO cdao = new EmployeeDAO();
			
			//call updatecontact
			boolean result = cdao.updateemployee(name,role,email,phone,address,company,designation,role_id);
			System.out.println(role);
			System.out.println(role_id);
			//redirect control to next page based on decision
			if(result){
				response.sendRedirect("getInfo.jsp");
				//System.out.println("2");
			}else{
				System.out.println("try doing it again");
				response.sendRedirect("getInfo.jsp");
				//System.out.println("1");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doProcess(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
