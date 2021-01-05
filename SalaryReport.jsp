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
<%@page import ="java.sql.PreparedStatement"%>


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
response.sendRedirect("Admin.jsp");
%>

<%@ include file="adminnavbar.jsp" %>


<h4>Employee Salary Details</h4>
<br>
	

<table align="center" border="1" >
<tr>

</tr>
<tr bgcolor="white">
<td><b>Employee Code</b></td>
<td><b>Username</b></td>
<td><b>Month</b></td>
<td><b>Year</b></td>
<td><b>Amount</b></td>
<td colspan="2"><b>Action</b></td>


</tr>

<%
try{  
	        Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection ("jdbc:mysql://localhost:3306/registration","root","garima");
		Statement ps=con.createStatement();
		String sql="select employeecode,username,month,year,amount from salary";
		ResultSet rs=ps.executeQuery(sql);
		while(rs.next()){
		%>
		
		<tr bgcolor="lightgrey">
		<td><%=rs.getString("employeecode") %></td>
		<td><%=rs.getString("username") %></td>
		<td><%=rs.getString("month") %></td>
		<td><%=rs.getString("year") %></td>
		<td><%=rs.getString("amount") %></td>
	    <td><a href="/Project1/updatesalary.jsp?employeecode=<%=rs.getString("employeecode")%>&month=<%=rs.getString("month")%>&year=<%=rs.getString("year")%>">Update</a></td>
	    <td><a href="/Project1/DeleteSalary.jsp?employeecode=<%=rs.getString("employeecode")%>&month=<%=rs.getString("month")%>&year=<%=rs.getString("year")%>">Delete</a></td>
		
		
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