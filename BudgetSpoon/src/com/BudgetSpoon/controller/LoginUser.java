package com.BudgetSpoon.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

public class LoginUser {

	//The RequestMethod.GET retrieves data from the server from the LoginForm.jsp file. 
	//So when the user submits their info, this method will obtian the data from the form input fields.
	@RequestMapping(value= "/LoginUser.jsp", method = RequestMethod.GET)
	public ModelAndView validateLoginForm() {
		
		return new ModelAndView("LoginUser");
	}
	
	//The RequestMethod.PUT will enable us to take that data from the form fields, and use it in the body below.
	@RequestMapping(value="/loginSuccess.html", method = RequestMethod.POST)
	public ModelAndView submitAdmissionsForm(@RequestParam("username") String username, 
			@RequestParam("password") String password) {
		


		try {
			
			String url = "jdbc:mysql://budgetspoondb.cm6l5hslk6or.us-west-2.rds.amazonaws.com:3306/BudgetSpoonDB";
			
			String user = "budgetspoon";
			
			String database_password = "gcbudgetspoon";
			
			Class.forName("com.mysql.jdbc.Driver"); //	MySQL database connection
			
			Connection myConn = DriverManager.getConnection(url, user, database_password);
			
			//Use prepared statement below: This allows us to leave the value of email and password unspecified, 
			//and take the input from the form fields to plug into the mySQL statement
			PreparedStatement pst = myConn.prepareStatement("SELECT username,password FROM users WHERE username=? AND password=?");
			
			pst.setString(1, username);
			pst.setString(2, password);
			
			//Execute the mySQL prepared statement to query our table
			ResultSet myRs = pst.executeQuery();
			
			//Below just says to keep querying through to the next line until we find the match. 
			//If there is a match, take the user to the loginSuccess page. Else, send them to loginFailed page.
			if(myRs.next())
				return new ModelAndView("loginSuccess", "msg", "Information validated");
			else
				return new ModelAndView("loginFailed", "msg", "Login Failed");
			
		} 
		catch(Exception e) {
			return new ModelAndView("loginFailed", "msg", "Connection Error! Please Check your database connection and try again.");
		}
		
	}
	
	
}
