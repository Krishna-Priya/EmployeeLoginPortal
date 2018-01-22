package com.bvrit.employeelogintable.controllers;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bvrit.employeelogintable.dao.UserDAO;


public class LoginController extends HttpServlet {protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
		//read username and password
		String user = request.getParameter("user");
		//String role = request.getParameter("role");
		String password = request.getParameter("password");
		//
		
		//create object of UserDAO
		UserDAO udao = new UserDAO();
		System.out.println(user);
		//call login()
		boolean result = udao.login(user, password);
		String role = udao.getRole(user);
		//System.out.println(role);
		//getting the session object
		HttpSession session = request.getSession();
		
			session.setAttribute("user1", user);
			session.setAttribute("role1", role);
		//redirect control to next page based on decision
		if(result){
			if(role.equals("admin"))
				response.sendRedirect("getInfo.jsp");
			else
				response.sendRedirect("showSelfInfo.jsp");
		}else{
			//System.out.println("in else");
			response.sendRedirect("index.jsp");
			
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
