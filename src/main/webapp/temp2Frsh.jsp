<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.resume.connection.ResumeCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href=".css">
<title>Fresher Form</title>
<style>
html {
	height: 100%;
}

body {
	min-height: 100%;
	background: #eee;
	font-family: 'Lato', sans-serif;
	font-weight: 400;
	color: #222;
	font-size: 14px;
	line-height: 26px;
	padding-bottom: 50px;
}

.container {
	max-width: 700px;
	background: #fff;
	margin: 0px auto 0px;
	box-shadow: 1px 1px 2px #DAD7D7;
	border-radius: 3px;
	padding: 40px;
	margin-top: 50px;
}

.header {
	margin-bottom: 30px;
}

.full-name {
	font-size: 40px;
	text-transform: uppercase;
	margin-bottom: 5px;
}

.first-name {
	font-weight: 700;
}

.last-name {
	font-weight: 300;
}

.contact-info {
	margin-bottom: 20px;
}

.email, .phone {
	color: #999;
	font-weight: 300;
}

.separator {
	height: 10px;
	display: inline-block;
	border-left: 2px solid #999;
	margin: 0px 10px;
}

.position {
	font-weight: bold;
	display: inline-block;
	margin-right: 10px;
	text-decoration: underline;
}

.details {
	line-height: 20px;
}

.section {
	margin-bottom: 40px;
}

.section:last-of-type {
	margin-bottom: 0px;
}

.section__title {
	letter-spacing: 2px;
	color: #54AFE4;
	font-weight: bold;
	margin-bottom: 10px;
	text-transform: uppercase;
}

.section__list-item {
	margin-bottom: 40px;
}

.section__list-item:last-of-type {
	margin-bottom: 0;
}

.left, .right {
	vertical-align: top;
	display: inline-block;
}

.left {
	width: 60%;
}

.right {
	tex-align: right;
	width: 39%;
}

.name {
	font-weight: bold;
}

a {
	text-decoration: none;
	color: #000;
	font-style: italic;
}

a:hover {
	text-decoration: underline;
	color: #000;
}

.skills__item {
	margin-bottom: 10px;
}
</style>
</head>

<body>
	<link href='https://fonts.googleapis.com/css?family=Lato:400,300,700'
		rel='stylesheet' type='text/css'>

	<%
	/* here we are declaring the variables */

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
	//here above we have declared variables for candidate details
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
	//here above we have declared variables for education table
	int expId;

	String exp1Desig;
	String exp1Company;
	String exp1From;
	String exp1To;
	String exp1Desc = "";

	String exp2Desig;
	String exp2Company;
	String exp2From;
	String exp2To;
	String exp2Desc = "";

	String exp3Desig;
	String exp3Company;
	String exp3From;
	String exp3To;
	String exp3Desc;

	//here above we have declared variables for experience table
	int interestId;
	int interestcanId;

	String interest1;
	String interest2;
	String interest3;
	String interest4;
	String interest5;

	//here above we have declared variables for interest table

	int skillsId;

	String skills1;
	String skills2;
	String skills3;
	String skills4;
	String skills5;
	String skills6;
	String skills7;
	String skills8;
	//here above we have declared variables for skills table

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
	%>
	<%
	String id = request.getParameter("id");
	System.out.println(id);

	try {
		String query = "SELECT C.*,I.*,S.*,E.*,EX.*,P.* FROM resumegenerator.candidate_details C,resumegenerator.candidate_interests I,resumegenerator.candidate_skills S,resumegenerator.candidate_education E,resumegenerator.candidate_experience EX,resumegenerator.candidate_projects P where C.can_id=I.can_id AND C.can_id=S.can_id AND C.can_id=E.can_id AND C.can_id=EX.can_id AND C.can_id=P.can_id AND C.can_id='"
		+ id + "';";
		Connection con = ResumeCon.makeConnection();
		Statement s = con.createStatement();
		ResultSet rs = s.executeQuery(query);

		while (rs.next()) {
			name = rs.getString("can_name");
			email = rs.getString("can_email");
			phone = rs.getString("can_phone");
			dob = rs.getString("can_dob");
			address = rs.getString("can_address");
			fname = rs.getString("can_fathername");
			objective = rs.getString("objective");
			activity1 = rs.getString("activity1");
			activity2 = rs.getString("activity2");
			certificate1 = rs.getString("certification1");
			certificate2 = rs.getString("certification2");

			edu1Title = rs.getString("edu1_title");
			edu1Yop = rs.getString("edu1_yop");
			edu1Collage = rs.getString("edu1_college");
			edu1Percentage = rs.getString("edu1_per");

			edu2Title = rs.getString("edu2_title");
			edu2Yop = rs.getString("edu2_yop");
			edu2Collage = rs.getString("edu2_college");
			edu2Percentage = rs.getString("edu2_per");

			edu3Title = rs.getString("edu3_title");
			edu3Yop = rs.getString("edu3_yop");
			edu3Collage = rs.getString("edu3_college");
			edu3Percentage = rs.getString("edu3_per");

			edu4Title = rs.getString("edu4_title");
			edu4Yop = rs.getString("edu4_yop");
			edu4Collage = rs.getString("edu4_college");
			edu4Percentage = rs.getString("edu4_per");

			exp1Desig = rs.getString("exp1_desig");
			exp1Company = rs.getString("exp1_company");
			exp1From = rs.getString("exp1_fromdate");
			exp1From = rs.getString("exp1_todate");
			exp1Desc = rs.getString("exp1_desc");

			exp2Desig = rs.getString("exp2_desig");
			exp2Company = rs.getString("exp2_company");
			exp2From = rs.getString("exp2_fromdate");
			exp2To = rs.getString("exp2_todate");
			exp2Desc = rs.getString("exp2_desc");

			exp3Desig = rs.getString("exp3_desig");
			exp3Company = rs.getString("exp3_company");
			exp3From = rs.getString("exp3_fromdate");
			exp3To = rs.getString("exp3_todate");
			exp3Desc = rs.getString("exp3_desc");

			interest1 = rs.getString("intr1");
			interest2 = rs.getString("intr2");
			interest3 = rs.getString("intr3");
			interest4 = rs.getString("intr4");
			interest5 = rs.getString("intr5");

			skills1 = rs.getString("skill1");
			skills2 = rs.getString("skill2");
			skills3 = rs.getString("skill3");
			skills4 = rs.getString("skill4");
			skills5 = rs.getString("skill5");
			skills6 = rs.getString("skill6");
			skills7 = rs.getString("skill7");
			skills8 = rs.getString("skill8");

			pro1Title = rs.getString("pro1title");
			pro1Tech = rs.getString("pro1tech");
			pro1Desc = rs.getString("pro1desc");

			pro2Title = rs.getString("pro2title");
			pro2Tech = rs.getString("pro2tech");
			pro2Desc = rs.getString("pro2desc");

			pro3Title = rs.getString("pro3title");
			pro3Tech = rs.getString("pro3tech");
			pro3Desc = rs.getString("pro3desc");
	%>


	<div class="container">
		<div class="header">
			<div class="full-name">

				<span class="last-name"><%=name%></span>
			</div>
			<div class="contact-info">
				<span class="email">Email: </span> <span class="email-val"><%=email%></span>
				<span class="separator"></span> <span class="phone">Phone: </span> <span
					class="phone-val">+91-<%=phone%></span>
			</div>

			<div class="about">
				<span class="position"> <%=objective%></span> 
				
			</div>
		</div>

		<div class="section">
			<div class="section__title">Education</div>
			<div class="section__list">
				<div class="section__list-item">
					<div class="left">
						<%
						if (edu1Collage != null && edu1Title != null && edu1Percentage != null && edu1Yop != null
								&& !edu1Collage.trim().isEmpty() && !edu1Title.trim().isEmpty() && !edu1Percentage.trim().isEmpty()
								&& !edu1Yop.trim().isEmpty()) {
						%>


						<div class="name"><%=edu1Collage%></div>
						<div class="title"><%=edu1Title%></div>
						CGPA
						<div class="per"><%=edu1Percentage%></div>
						in
						<div class="duration"><%=edu1Yop%></div>

						<%
						}
						%>
					</div>
				</div>

				<div class="section__list-item">
					<div class="left">
						<%
						if (edu2Collage != null && edu2Title != null && edu2Percentage != null && edu2Yop != null
								&& !edu2Collage.trim().isEmpty() && !edu2Title.trim().isEmpty() && !edu2Percentage.trim().isEmpty()
								&& !edu2Yop.trim().isEmpty()) {
						%>

						<div class="name"><%=edu2Collage%></div>
						<div class="title"><%=edu2Title%></div>
						CGPA
						<div class="per"><%=edu2Percentage%></div>
						in
						<div class="duration"><%=edu2Yop%></div>
						<%
						}
						%>
					</div>

				</div>

				<div class="section__list-item">
					<div class="left">
						<%
						if (edu3Collage != null && edu3Title != null && edu3Percentage != null && edu3Yop != null
								&& !edu3Collage.trim().isEmpty() && !edu3Title.trim().isEmpty() && !edu3Percentage.trim().isEmpty()
								&& !edu3Yop.trim().isEmpty()) {
						%>

						<div class="name"><%=edu3Collage%></div>
						<div class="title"><%=edu3Title%></div>
						CGPA
						<div class="per"><%=edu3Percentage%></div>
						in
						<div class="duration"><%=edu3Yop%></div>
						<%
						}
						%>
					</div>

				</div>


				<div class="section__list-item">
					<div class="left">
						<%
						if (edu4Collage != null && edu4Title != null && edu4Percentage != null && edu4Yop != null
								&& !edu4Collage.trim().isEmpty() && !edu4Title.trim().isEmpty() && !edu4Percentage.trim().isEmpty()
								&& !edu4Yop.trim().isEmpty()) {
						%>

						<div class="name"><%=edu4Collage%></div>
						<div class="title"><%=edu4Title%></div>
						CGPA
						<div class="per"><%=edu4Percentage%></div>
						in
						<div class="duration"><%=edu4Yop%></div>
						<%
						}
						%>
					</div>

				</div>


			</div>
		</div>

		<div class="section">
			<div class="section__title">Skills</div>
			<div class="skills">

				<%
				if (skills1 != null && !skills1.trim().isEmpty()) {
				%>

				<div class="skills__item">
					<div class="name"><%=skills1%></div>
				</div>

				<%
				}
				%>

				<%
				if (skills2 != null && !skills2.trim().isEmpty()) {
				%>


				<div class="skills__item">
					<div class="name"><%=skills2%></div>
				</div>
				<%
				}
				%>

				<%
				if (skills3 != null && !skills3.trim().isEmpty()) {
				%>


				<div class="skills__item">
					<div class="name"><%=skills3%></div>
				</div>
				<%
				}
				%>

				<%
				if (skills4 != null && !skills4.trim().isEmpty()) {
				%>


				<div class="skills__item">
					<div class="name"><%=skills4%></div>
				</div>
				<%
				}
				%>

				<%
				if (skills5 != null && !skills5.trim().isEmpty()) {
				%>


				<div class="skills__item">
					<div class="name"><%=skills5%></div>
				</div>
				<%
				}
				%>

			</div>
			</div>




			<div class="section">
				<div class="section__title">Internship</div>
				<div class="section__list">
					<%
					if (exp1Company != null && exp1Desc != null && !exp1Company.trim().isEmpty() && !exp1Desc.trim().isEmpty()) {
					%>
					<div class="section__list-item">
						<div class="left">
							<div class="name"><%=exp1Company%></div>
							<div class="outcome"><%=exp1Desc%></div>
							
						</div>

					</div>
					<%
					}
					%>

					<%
					if (exp2Company != null && exp2Desc != null && !exp2Company.trim().isEmpty() && !exp2Desc.trim().isEmpty()) {
					%>
					<div class="section__list-item">
						<div class="left">
							<div class="name"><%=exp2Company%></div>
							<div class="outcome"><%=exp2Desc%></div>
							
						</div>

					</div>
					<%
					}
					%>

				</div>
			</div>


			<div class="section">
				<div class="section__title">Projects</div>
				<div class="section__list">

					<%
					if (pro1Title != null && pro1Desc != null && pro1Tech != null && !pro1Title.trim().isEmpty()
							&& !pro1Desc.trim().isEmpty() && !pro1Tech.trim().isEmpty()) {
					%>
					<div class="section__list-item">
						<div class="name"><%=pro1Title%></div>
						<b>Desc:</b>
						<div class="desc"><%=pro1Desc%></div>
						<b>Technology used:</b>
						<div class="tech"><%=pro1Tech%></div>
					</div>
					<%
					}
					%>

					<%
					if (pro2Title != null && pro2Desc != null && pro2Tech != null && !pro2Title.trim().isEmpty()
							&& !pro2Desc.trim().isEmpty() && !pro2Tech.trim().isEmpty()) {
					%>

					<div class="section__list-item">
						<div class="name"><%=pro2Title%></div>
						<b>Desc:</b>
						<div class="desc"><%=pro2Desc%></div>
						<b>Technology used:</b>
						<div class="tech"><%=pro2Tech%></div>
					</div>
					<%
					}
					%>

				</div>
			</div>

			<div class="section">
				<div class="section__title">Activites</div>
				<div class="section__list">
					<div class="section__list-item">
						
							<%
							if (activity1.trim().isEmpty() == false && activity1 != null) {
							%>
							<div><%=activity1%></div>
							<%
							}
							%>
							<%
							if (activity2.trim().isEmpty() == false && activity2 != null) {
							%>
							<div><%=activity2%></div>
							<%
							}
							%>
						
					</div>
				</div>
			</div>


			<div class="section">
				<div class="section__title">Certificate</div>
				<div class="section__list">
					<div class="section__list-item">
						
							<%
							if (certificate1.trim().isEmpty() == false && certificate1 != null) {
							%>
							<div><%=certificate1%></div>
							<%
							}
							%>
							<%
							if (certificate2.trim().isEmpty() == false && certificate2 != null) {
							%>
							<div><%=certificate2%></div>
							<%
							}
							%>
						
					</div>
				</div>
			</div>

			<div class="section">
				<div class="section__title">Interests</div>
				<div class="section__list">
					<div class="section__list-item">


						<%
						if (interest1 != null && interest1 != " " && interest1.isEmpty() == false) {
						%>
						<div><%=interest1%></div>
						<%
						}
						%>
						<%
						if (interest2 != null && interest2 != " " && interest2.isEmpty() == false) {
						%>
						<div><%=interest2%></div>
						<%
						}
						%>
						<%
						if (interest3 != null && interest3 != " " && interest3.isEmpty() == false) {
						%>
						<div><%=interest3%></div>
						<%
						}
						%>
						<%
						if (interest4 != null && interest4 != " " && interest4.isEmpty() == false) {
						%>
						<div><%=interest4%></div>
						<%
						}
						%>
						<%
						if (interest5 != null && interest5 != " " && interest5.isEmpty() == false) {
						%>
						<div><%=interest5%></div>
						<%
						}
						%>

					</div>
				</div>
			</div>
			<div class="section">
				<div class="section__title">PERSONEL INFOMATION</div>
				<div class="date">
					<b>DOB: </b><%=dob%></div>
				<div class="name">
					<b>Father_Name: </b><%=fname%></div>
				<div class="address">
					<b>Communication Address: </b><%=address%></div>



			</div>
		</div>

	
	
	<%
	}
	} catch (Exception e) {
	e.printStackTrace();

	}
	%>

</body>

</html>