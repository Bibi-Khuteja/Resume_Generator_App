package com.resume.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.resume.connection.ResumeCon;

@WebServlet("/InsertData")
public class InsertData extends HttpServlet {
	private static final long serialVersionUID = 1L;
		/* here we are declaring the variables */
	int id;
	String name;
	String email;
	String phone;
	String dob;
	String address;
	String fname;
	String objective;
	String activity1;
	String activity2;
	String certificate1;
	String certificate2;
//	here above we have declared variables for candidate details
	int educationId;
	
	String edu1Title;
	String edu1Yop;
	String edu1Collage;
	String edu1Percentage;
	
	String edu2Title;
	String edu2Yop;
	String edu2Collage;
	String edu2Percentage;
	
	String edu3Title;
	String edu3Yop;
	String edu3Collage;
	String edu3Percentage;
	
	String edu4Title;
	String edu4Yop;
	String edu4Collage;
	String edu4Percentage;
//	here above we have declared variables for education table
	int expId;
	
	String exp1Desig;
	String exp1Company;
	String exp1From;
	String exp1To;
	String exp1Desc;
	
	String exp2Desig;
	String exp2Company;
	String exp2From;
	String exp2To;
	String exp2Desc;
	
	String exp3Desig;
	String exp3Company;
	String exp3From;
	String exp3To;
	String exp3Desc;
	
	
	
//	here above we have declared variables for experience table
	int interestId;
	int interestcanId;
	
	String interest1;
	String interest2;
	String interest3;
	String interest4;
	String interest5;
	
//	here above we have declared variables for interest table
	
	int skillsId;
	
	String skills1;
	String skills2;
	String skills3;
	String skills4;
	String skills5;
	String skills6;
	String skills7;
	String skills8;	
//	here above we have declared variables for skills table
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Random random = new Random();
		id=random.nextInt(10000);
		name=request.getParameter("name");
		email=request.getParameter("email");
		phone=request.getParameter("phone");
		dob=request.getParameter("dob");
		address=request.getParameter("address");
		fname=request.getParameter("fname");
		objective=request.getParameter("objective");
		
		activity1=request.getParameter("acti1");
		activity2=request.getParameter("acti2");
		
		certificate1=request.getParameter("certi1");
		certificate2=request.getParameter("certi2");
//		here end of candidate details
		
		edu1Title=request.getParameter("edu1course");
		edu1Yop=request.getParameter("edu1yop");
		edu1Collage=request.getParameter("edu1collage");
		edu1Percentage=request.getParameter("edu1percentage");
		
		edu2Title=request.getParameter("edu2course");
		edu2Yop=request.getParameter("edu2yop");
		edu2Collage=request.getParameter("edu2collage");
		edu2Percentage=request.getParameter("edu2percentage");
		
		edu3Title=request.getParameter("edu3course");
		edu3Yop=request.getParameter("edu3yop");
		edu3Collage=request.getParameter("edu3collage");
		edu3Percentage=request.getParameter("edu3percentage");
		
		edu4Title=request.getParameter("edu4course");
		edu4Yop=request.getParameter("edu4yop");
		edu4Collage=request.getParameter("edu4collage");
		edu4Percentage=request.getParameter("edu4percentage");
//		here we end education
			
		
		exp1Desig=request.getParameter("intern1title");
		exp1Company=request.getParameter("intern1company");
		exp1From=request.getParameter("exp1From");
		exp1To=request.getParameter("exp1To");
		exp1Desc=request.getParameter("intern1outcome");
		
		exp2Desig=request.getParameter("intern12itle");
		exp2Company=request.getParameter("intern2company");
		exp2From=request.getParameter("exp2From");
		exp2To=request.getParameter("exp2To");
		exp2Desc=request.getParameter("intern2outcome");
		
		exp3Desig=request.getParameter("intern3title");
		exp3Company=request.getParameter("intern3company");
		exp3From=request.getParameter("exp3From");
		exp3To=request.getParameter("exp3To");
		exp3Desc=request.getParameter("intern3outcome");
		
//		here end of experience details
		interestcanId=id;
		interest1=request.getParameter("interest1");
		interest2=request.getParameter("interest2");
		interest3=request.getParameter("interest3");
		interest4=request.getParameter("interest4");
		interest5=request.getParameter("interest5");
//		here end of interest details
		
		skills1=request.getParameter("skills1");
		skills2=request.getParameter("skills2");
		skills3=request.getParameter("skills3");
		skills4=request.getParameter("skills4");
		skills5=request.getParameter("skills5");
		skills6=request.getParameter("skills6");
		skills7=request.getParameter("skills7");
		skills8=request.getParameter("skills8");
		
		try {
			PrintWriter out=response.getWriter();
			Connection con=ResumeCon.makeConnection();
			PreparedStatement pStatement=con.prepareStatement("INSERT INTO resumegenerator.candidate_details (can_id, can_name, can_email, can_phone, can_dob, can_address, can_fathername, objective, activity1, activity2, certification1, certification2) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?);");
			pStatement.setInt(1, id);
			pStatement.setString(2, name);
			pStatement.setString(3, email);
			pStatement.setString(4, phone);
			pStatement.setString(5, dob);
			pStatement.setString(6, address);
			pStatement.setString(7, fname);
			pStatement.setString(8, objective);
			pStatement.setString(9, activity1);
			pStatement.setString(10, activity2);
			pStatement.setString(11, certificate1);
			pStatement.setString(12, certificate2);
			
			int i=pStatement.executeUpdate();
			if(i>0) {
				System.out.print("inserted");
				
				
				
			}
			Connection con1=ResumeCon.makeConnection();
			PreparedStatement intrStatement=con1.prepareStatement("INSERT INTO resumegenerator.candidate_interests (intid, intr1, intr2, intr3, intr4, intr5, can_id) VALUES (?, ?, ?, ?, ?, ?, ?);");
	
			intrStatement.setInt(1, interestId);
			intrStatement.setString(2, interest1);			
			intrStatement.setString(3, interest2);
			intrStatement.setString(4, interest3);
	
			intrStatement.setString(5, interest4);
			intrStatement.setString(6, interest5);
			intrStatement.setInt(7, interestcanId);
			
			int interest=pStatement.executeUpdate();
			if(interest>0) {
				System.out.print(" interest inserted");
			}
			else {
			System.out.print(" not inserted");
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
