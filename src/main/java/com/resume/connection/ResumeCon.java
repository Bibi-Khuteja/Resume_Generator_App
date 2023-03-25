package com.resume.connection;
import java.sql.Connection;
import java.sql.DriverManager;

import com.mysql.cj.jdbc.Driver;

public class ResumeCon {
  
	private static final String url="jdbc:mysql://localhost:3306/resumegenerator";
	private static final String user="root";
	private static final String pass="root";
	public static Connection makeConnection() throws Exception{
		Connection con;
		Driver d=new com.mysql.cj.jdbc.Driver();
		DriverManager.registerDriver(d);
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection(url,user,pass);
		return con;
	}
	public static Connection closeConnection() throws Exception{
		Connection con=makeConnection();
		con.close();
		return con;
	}
}

