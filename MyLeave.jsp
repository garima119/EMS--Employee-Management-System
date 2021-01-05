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


	<h4>Leave Details</h4>
	
<table align="center" cellpadding="5" cellspacing="5" border="1" width="100px">
<tr>

</tr>
<tr bgcolor="white">
<td><b>Employee Code</b></td>
<td><b>Reason</b></td>
<td><b>From Date</b></td>
<td><b>To Date</b></td>
<td><b>Status</b></td>

</tr>

<%
try{  
	        Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection ("jdbc:mysql://localhost:3306/registration","root","garima");
		Statement ps=con.createStatement();
		String userName = (String)session.getAttribute("name");




		ResultSet rs=ps.executeQuery("select employeecode,description,fromdate,todate,status from vacation where username='"+userName+"'");
		while(rs.next()){
		%>
		
		<tr bgcolor="lightgrey">
		<td><%=rs.getString("employeecode") %></td>
		<td><%=rs.getString("description") %></td>
		<td><%=rs.getString("fromdate") %></td>
		<td><%=rs.getString("todate") %></td>
		<td><%=rs.getString("status") %></td>
		
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