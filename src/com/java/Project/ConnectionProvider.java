package com.java.Project;
import java.sql.*;

public class ConnectionProvider {

	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3307/bbms?useSSL=false","root","root");
			return connection;
		}
		catch(Exception e) {
			System.out.println(e);
			return null;
		}
	}
	public static Statement getStatement(){
		try {
			return getConnection().createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
}
