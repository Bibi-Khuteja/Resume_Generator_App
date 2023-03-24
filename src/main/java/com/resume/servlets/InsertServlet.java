package com.resume.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String id;
	String name;
	String email;
	String phone;
	String object;
	String master;
	String bachelor;
	String pu;
	String sslc;
	String skills;
	String pro1;
	String pro2;
	String inter1;
	String inter2;
	String acti;
	String interest;
	String languages;
	String dob;
	String fname;
	String lang;
	String address;
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		id=request.getParameter(id);
		
	}

}
