<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.resume.connection.ResumeCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>
<style>
h2 {
	margin-bottom: auto;
	padding: auto;
}

h3 {
	background-color: rgb(212, 210, 210) !important;
	color: black;
	align-items: center;
	padding: 3px;
	font-size: 16pt;
}

.full-resume-body {
	border: solid black !important;
	padding: 15px;
	padding-top: 30px;
	width: fit-content;
}

.heading-h2 {
	margin-bottom: 30px;
	text-align: center;
}
</style>
</head>

<body class="container">
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
	String exp1Desc="";

	String exp2Desig;
	String exp2Company;
	String exp2From;
	String exp2To;
	String exp2Desc="";

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
			exp1Company = rs.getString("exp1_desc");

			exp2Desig = rs.getString("exp2_desig");
			exp2Company = rs.getString("exp2_company");
			exp2From = rs.getString("exp2_fromdate");
			exp2From = rs.getString("exp2_todate");
			exp2Company = rs.getString("exp2_desc");

			exp3Desig = rs.getString("exp3_desig");
			exp3Company = rs.getString("exp3_company");
			exp3From = rs.getString("exp3_fromdate");
			exp3From = rs.getString("exp3_todate");
			exp3Company = rs.getString("exp3_desc");

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

	<div class="full-resume-body">

		<div class="heading-h2">
			<h2><%=name%></h2>
			<label>Email :-</label>
			<%=email%><br> <label>Phone No :-</label>+91-<%=phone%><br>
		</div>
		<div>
			<h3>OBJECTIVE</h3>
			<p>
				<%=objective%>
			</p>

			<h3>EDUCATION</h3>
			<label>
				<ul>
					<li><b><%=edu1Collage%></b><br> <strong><%=edu2Title%></strong>
						<br>CGPA <strong><%=edu1Percentage%></strong> in <strong><%=edu1Yop%></strong></li>
					<li><b><%=edu2Collage%></b><br> <strong><%=edu2Title%></strong>
						<br>CGPA <strong><%=edu2Percentage%></strong> in <strong><%=edu2Yop%></strong></li>
					<li><b><%=edu3Collage%></b><br> <strong><%=edu3Title%></strong><br>
						<strong><%=edu3Percentage%>%</strong> in <strong><%=edu3Yop%></strong></li>
					<li><b><%=edu4Collage%></b><br> <strong><%=edu4Title%></strong><br>
						<strong><%=edu4Percentage%>%</strong> in <strong><%=edu4Yop%></strong></li>
				</ul>
			</label>
			<h3>SKILLS</h3>
			<ul>
				<li><%=skills1%></li>
				<li><%=skills2%></li>
				<li><%=skills3%></li>
				<li><%=skills4%></li>
				<li><%=skills5%></li>

			</ul>
			<h3>PROJECTS</h3>
			<ul>
				<li><strong><%=pro1Title%></strong><br> <b>Description:</b><br><%=pro1Desc%>
				<br><b>Technology Used:</b><br><%=pro1Tech%></li>
				<br>
				<li><strong><%=pro2Title%></strong><br> <b>Description:</b><br><%=pro2Desc%>
				<br><b>Technology Used:</b><br><%=pro2Tech%></li>

			</ul>

			<h3>INTERNSHIP</h3>
			<ul>

				<li><strong>COMPANY NAME:</strong><b><%=exp1Company%></b></li>
				<br>
				<b>Outcome:</b><ul>
				<li><%=exp1Desc%></li></ul>

				<li><strong>COMPANY NAME</strong><%=exp2Company%></li>

				<br>
				<b>Outcome:</b><ul>
				<li><%=exp2Desc%></li></ul>

			</ul>


			<h3>ACTIVITIES</h3>
			<ul>
				<li><%=activity1%></li>
				<li><%=activity2%></li>
			</ul>


			<h3>CERTIFICATE</h3>
			<ul>
				<li><%=certificate1%></li>
				<li><%=certificate2%></li>
			</ul>

			<h3>INTERESTS</h3>
			<ul>
			<%if(interest1!=null || interest1!=" " || interest1.isEmpty()==false){  %>
				<li><%=interest1%></li>
				<%} %>
				<%if(interest2!=null || interest2!=" " || interest2.isEmpty()==false){  %>
				<li><%=interest2%></li>
				<%} %>
				<%if(interest3!=null || interest3!=" " || interest3.isEmpty()==false){  %>
				<li><%=interest3%></li>
				<%} %>
				<%if(interest4!=null || interest4!=" " || interest4.isEmpty()==false){  %>
				<li><%=interest4%></li>
				<%} %>
				<%if(interest5!=null || interest5!=" " || interest5.isEmpty()==false){  %>
				<li><%=interest5%></li>
				<%} %>
			</ul>



			<h3>LANGUAGES</h3>
			<ul>
				<strong>
					<li>English</li>
					<li>Hindi</li>
					<li>Kannada</li>
				</strong>
			</ul>

			<h3>PERSONAL INFORMATION</h3>

			<label>Date of Birth:</label><%=dob%><br> <label>Father
				Name:</label><%=fname%><br> <label>Languages Known:</label>English,Kannada
			and Urdu<br> <label>Communication Address:</label><%=address%>

			<h3>DECLARATION</h3>
			<p>Hereby, I declare that the information provided above is true
				to the best of my knowledge and belief</p>
			<h5 style="text-align: right;">Bibi Khuteja</h5>

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