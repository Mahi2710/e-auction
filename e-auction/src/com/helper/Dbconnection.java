package com.helper;
import java.sql.*;
public class Dbconnection {
	public static Connection takeConnection() {
		Connection con = null;
		String path = "jdbc:mysql://localhost:3306/e-auction";
		String username = "root";
		String password = "Mohit@123";
		try {
			Class.forName("com.mysql.jdbc.Driver"); 
			con = DriverManager.getConnection(path,username,password);
			return con;	
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		return null;
		
	}

}
