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
	
	
	
	int projectId;

	String pro1Title;
	String pro1Tech;
	String pro1Desc;

	String pro2Title;
	String pro2Tech;
	String pro2Desc;

	String pro3Title;
	String pro3Tech;
	String pro3Desc;

	int canId;


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		Random random = new Random();
		id = random.nextInt(10000);
		name = request.getParameter("name");
		email = request.getParameter("email");
		phone = request.getParameter("phone");
		dob = request.getParameter("dob");
		address = request.getParameter("address");
		fname = request.getParameter("fname");
		objective = request.getParameter("objective");

		activity1 = request.getParameter("acti1");
		activity2 = request.getParameter("acti2");

		certificate1 = request.getParameter("certi1");
		certificate2 = request.getParameter("certi2");
//		here end of candidate details

		edu1Title = request.getParameter("edu1course");
		edu1Yop = request.getParameter("edu1yop");
		edu1Collage = request.getParameter("edu1collage");
		edu1Percentage = request.getParameter("edu1percentage");

		edu2Title = request.getParameter("edu2course");
		edu2Yop = request.getParameter("edu2yop");
		edu2Collage = request.getParameter("edu2collage");
		edu2Percentage = request.getParameter("edu2percentage");

		edu3Title = request.getParameter("edu3course");
		edu3Yop = request.getParameter("edu3yop");
		edu3Collage = request.getParameter("edu3collage");
		edu3Percentage = request.getParameter("edu3percentage");

		edu4Title = request.getParameter("edu4course");
		edu4Yop = request.getParameter("edu4yop");
		edu4Collage = request.getParameter("edu4collage");
		edu4Percentage = request.getParameter("edu4percentage");
//		here we end education

		exp1Desig = request.getParameter("intern1title");
		exp1Company = request.getParameter("intern1company");
		exp1From = request.getParameter("exp1From");
		exp1To = request.getParameter("exp1To");
		exp1Desc = request.getParameter("intern1outcome");

		exp2Desig = request.getParameter("intern12itle");
		exp2Company = request.getParameter("intern2company");
		exp2From = request.getParameter("exp2From");
		exp2To = request.getParameter("exp2To");
		exp2Desc = request.getParameter("intern2outcome");

		exp3Desig = request.getParameter("intern3title");
		exp3Company = request.getParameter("intern3company");
		exp3From = request.getParameter("exp3From");
		exp3To = request.getParameter("exp3To");
		exp3Desc = request.getParameter("intern3outcome");

//		here end of experience details
		interestcanId = id;
		interest1 = request.getParameter("interest1");
		interest2 = request.getParameter("interest2");
		interest3 = request.getParameter("interest3");
		interest4 = request.getParameter("interest4");
		interest5 = request.getParameter("interest5");
//		here end of interest details

		skills1 = request.getParameter("skill1");
		skills2 = request.getParameter("skill2");
		skills3 = request.getParameter("skill3");
		skills4 = request.getParameter("skill4");
		skills5 = request.getParameter("skill5");
		skills6 = request.getParameter("skill6");
		skills7 = request.getParameter("skill7");
		skills8 = request.getParameter("skill8");
		//
		

		pro1Title = request.getParameter("pro1title");
		pro1Tech = request.getParameter("pro1technology");
		pro1Desc = request.getParameter("pro1desc");
		
		pro2Title = request.getParameter("pro2title");
		pro2Tech = request.getParameter("pro2technology");
		pro2Desc = request.getParameter("pro2desc");
		
		pro3Title = request.getParameter("pro3title");
		pro3Tech = request.getParameter("pro3technology");
		pro3Desc = request.getParameter("pro3desc");


		try {
			Connection con = ResumeCon.makeConnection();

			PreparedStatement pStatement = con.prepareStatement(
					"INSERT INTO resumegenerator.candidate_details (can_id, can_name, can_email, can_phone, can_dob, can_address, can_fathername, objective, activity1, activity2, certification1, certification2) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");

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

			int i = pStatement.executeUpdate();

			if (i > 0) {
				System.out.println("Data inserted into candidate_details table");

				PreparedStatement eduStatement = con.prepareStatement(
						"INSERT INTO resumegenerator.candidate_education (edu_id, edu1_title, edu1_yop, edu1_college, edu1_per, edu2_title, edu2_yop, edu2_college, edu2_per, edu3_title, edu3_yop, edu3_college, edu3_per, edu4_title, edu4_yop, edu4_college, edu4_per, can_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");
				eduStatement.setInt(1, educationId);
				eduStatement.setString(2, edu1Title);
				eduStatement.setString(3, edu1Yop);
				eduStatement.setString(4, edu1Collage);
				eduStatement.setString(5, edu1Percentage);
				eduStatement.setString(6, edu2Title);
				eduStatement.setString(7, edu2Yop);
				eduStatement.setString(8, edu2Collage);
				eduStatement.setString(9, edu2Percentage);
				eduStatement.setString(10, edu3Title);
				eduStatement.setString(11, edu3Yop);
				eduStatement.setString(12, edu3Collage);
				eduStatement.setString(13, edu3Percentage);
				eduStatement.setString(14, edu4Title);
				eduStatement.setString(15, edu4Yop);
				eduStatement.setString(16, edu4Collage);
				eduStatement.setString(17, edu4Percentage);
				eduStatement.setInt(18, id);

				int edu = eduStatement.executeUpdate();
				if (edu > 0) {
					System.out.println("inserted education details");
				} else {
					System.out.println("Failed to insert ");
				}

				PreparedStatement intrStatement = con.prepareStatement(
						"INSERT INTO resumegenerator.candidate_interests (intid, intr1, intr2, intr3, intr4, intr5, can_id) VALUES (?, ?, ?, ?, ?, ?, ?);");

				intrStatement.setInt(1, interestId);
				intrStatement.setString(2, interest1);
				intrStatement.setString(3, interest2);
				intrStatement.setString(4, interest3);
				intrStatement.setString(5, interest4);
				intrStatement.setString(6, interest5);
				intrStatement.setInt(7, id);

				int interest = intrStatement.executeUpdate();

				if (interest > 0) {
					System.out.println("Data inserted into candidate_interests table");
				} else {
					System.out.println("Failed to insert data into candidate_interests table");
				}

				PreparedStatement skillStatement = con.prepareStatement(
						"INSERT INTO resumegenerator.candidate_skills (skillid, skill1, skill2, skill3, skill4, skill5, skill6, skill7, skill8, can_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");
				skillStatement.setInt(1, skillsId);
				skillStatement.setString(2, skills1);
				skillStatement.setString(3, skills2);
				skillStatement.setString(4, skills3);
				skillStatement.setString(5, skills4);
				skillStatement.setString(6, skills5);
				skillStatement.setString(7, skills6);
				skillStatement.setString(8, skills7);
				skillStatement.setString(9, skills8);
				skillStatement.setInt(10, id);

				int skills = skillStatement.executeUpdate();
				if (skills > 0) {
					System.out.print("Inserted candidate skills");
				} else {
					System.out.print("Failed to insert candidate skills");
				}
				
			
				PreparedStatement projectStatement = con.prepareStatement("INSERT INTO resumegenerator.candidate_projects (projectid, pro1title, pro1tech, pro1desc, pro2title, pro2tech, pro2desc, pro3title, pro3tech, pro3desc, can_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

			
				projectStatement.setInt(1, projectId);
				projectStatement.setString(2, pro1Title);
				projectStatement.setString(3, pro1Tech);
				projectStatement.setString(4, pro1Desc);
				projectStatement.setString(5, pro2Title);
				projectStatement.setString(6, pro2Tech);
				projectStatement.setString(7, pro2Desc);
				projectStatement.setString(8, pro3Title);
				projectStatement.setString(9, pro3Tech);
				projectStatement.setString(10, pro3Desc);
				projectStatement.setInt(11, id);

				int project = projectStatement.executeUpdate();
				if (project > 0) {
					System.out.print("Inserted candidate project");
				} else {
					System.out.print("Failed to insert candidate project");
				}
				
				
				PreparedStatement expStatement = con.prepareStatement("INSERT INTO resumegenerator.candidate_experience (expid, exp1_desig, exp1_company, exp1_fromdate, exp1_todate, exp1_desc, exp2_desig, exp2_company, exp2_fromdate, exp2_todate, exp2_desc, exp3_desig, exp3_company, exp3_fromdate, exp3_todate, exp3_desc, can_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

				
				expStatement.setInt(1, expId);
				expStatement.setString(2, exp1Desig);
				expStatement.setString(3, exp1Company);
				expStatement.setString(4, exp1From);
				expStatement.setString(5, exp1To);
				expStatement.setString(6, exp1Desc);
				expStatement.setString(7, exp2Desig);
				expStatement.setString(8, exp2Company);
				expStatement.setString(9, exp2From);
				expStatement.setString(10, exp2To);
				expStatement.setString(11, exp2Desc);
				expStatement.setString(12, exp3Desig);
				expStatement.setString(13, exp3Company);
				expStatement.setString(14, exp3From);
				expStatement.setString(15, exp3To);
				expStatement.setString(16, exp3Desc);
				expStatement.setInt(17, id);

				int experience =  expStatement.executeUpdate();
				if (experience > 0) {
					System.out.print("Inserted candidate experience");
					
					response.sendRedirect("dashboardfresher.jsp?id="+id+" ");
					
				} else {
					System.out.print("Failed to insert candidate experience");
				}
				


			} else {
				System.out.println("Failed to insert data into candidate_details table");
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e);
		} finally {
			try {

				ResumeCon.closeConnection();

			} catch (Exception e) {

				e.printStackTrace();

			}
		}

	}

}
