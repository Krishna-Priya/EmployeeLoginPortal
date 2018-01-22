package com.bvrit.employeelogintable.controllers;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bvrit.employeelogintable.dao.UserDAO;

/**
 * Servlet implementation class SignupController
 */
public class SignupController extends HttpServlet {
	

	
protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
		//read username and password
		String user = request.getParameter("user");
		String role = request.getParameter("role");
		String password = request.getParameter("password");
		
		//create object of UserDAO
		UserDAO udao = new UserDAO();
		
		//call signup()
		boolean result = udao.signup(user, password,role);
		//System.out.println("1");
		
		//redirect control to next page based on decision
		if(result){
			response.sendRedirect("index.jsp");
			//System.out.println("in if");
		}else{
			response.sendRedirect("signupView.jsp");
			//System.out.println("in else");
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
	doProcess(request,response);	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doProcess(request, response);
	}

}
