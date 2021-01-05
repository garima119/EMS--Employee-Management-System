<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="main.css">

<link rel="stylesheet" type="text/css" href="AdminProfile.css">
</head>
<body>
<%
response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
if (session.getAttribute("name")==null)
response.sendRedirect("login.jsp");
%>
<%@ include file="loginnavbar.jsp" %>


	<h4>Salary Details</h4>
	
<table align="center" cellpadding="5" cellspacing="5" border="1" width="100px">
<tr>

</tr>
<tr bgcolor="white">
<td><b>Employee Code</b></td>
<td><b>Month</b></td>
<td><b>Year</b></td>
<td><b>Amount</b></td>
</tr>

<%
try{  
	        Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection ("jdbc:mysql://localhost:3306/registration","root","garima");
		Statement ps=con.createStatement();
		String userName = (String)session.getAttribute("name");



		ResultSet rs=ps.executeQuery("select employeecode,month,year,amount from salary where username='"+userName+"'");
		while(rs.next()){
		%>
		
		<tr bgcolor="lightgrey">
		<td><%=rs.getString("employeecode") %></td>
		<td><%=rs.getString("month") %></td>
		<td><%=rs.getString("year") %></td>
		<td><%=rs.getString("amount") %></td>
		</tr>
		<%
		}
}
catch(Exception e){
	e.printStackTrace();
}

		%>
		</table>
		


</body>
</html>