<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Validation</title>
</head>
<body>
<%
String url="jdbc:mysql://localhost:3306/BudgetSpoonDB";

String user="budgetspoon";

String database_password="gcbudgetspoon";

try {
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	Class.forName("com.mysql.jdbc.Driver"); //	MySQL database connection
	
	Connection myConn = DriverManager.getConnection(url, user, database_password);
	
	PreparedStatement pst = myConn.prepareStatement("SELECT email,password from business_users WHERE email=? AND password=?");
	
	pst.setString(1, email);
	pst.setString(2, password);
	
	ResultSet myRs = pst.executeQuery();
	if(myRs.next())
		out.print("Valid Login Credentials");
	else
		out.print("Invalid Login Credentials");
	
} catch(Exception e) {
	out.print("Something went wrong! Please try again.");
}
%>
</body>
</html>