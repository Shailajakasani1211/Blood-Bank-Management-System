package com.java.patient;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/patientlogin")
public class PatientLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String mobilenumber = request.getParameter("mobilenumber");
        
        // You should store your database connection details in a more secure way
        String url="jdbc:mysql://localhost:3307/bbms?useSSL=false";
        String user="root";
    	String password="root";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url, user, password);
            
            String sql = "SELECT * FROM bloodrequest WHERE name=? AND mobilenumber=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, mobilenumber);
            
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
            	HttpSession session = request.getSession(false);
            	session.setAttribute("name", name);
                response.sendRedirect("patienthome.jsp"); // Redirect to user home page
            } 
            else {
            	response.sendRedirect("patientinvalidlogin.jsp");
            }
            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}