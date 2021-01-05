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
<%
String employeecode = request.getParameter("employeecode");
String fromdate = request.getParameter("fromdate");

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="main.css">
<link rel="stylesheet" type="text/css" href="AdminProfile.css">
<link rel="stylesheet" type="text/css" href="AddLeave.css">

</head>
<body>
<%
response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
if (session.getAttribute("name")==null)
response.sendRedirect("Admin.jsp");
%>
<%@ include file="adminnavbar.jsp" %>
<h4>Employee Leave Details</h4>
	<br>

<table align="center" border="1" >

<tr bgcolor="white">
<td><b>Employee Code</b></td>
<td><b>Reason</b></td>
<td><b>From Date</b></td>
<td><b>To Date</b></td>
<td><b>Status</b></td>
<td colspan="2"><b>Action</b></td>

</tr>

<%
try{  
	        Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection ("jdbc:mysql://localhost:3306/registration","root","garima");
		Statement ps=con.createStatement();
		String sql="select * from vacation";
		ResultSet rs=ps.executeQuery(sql);
		while(rs.next()){
		%>
		
		<tr bgcolor="lightgrey">
		<td><%=rs.getString("employeecode") %></td>
		<td><%=rs.getString("description") %></td>
		<td><%=rs.getString("fromdate") %></td>
		<td><%=rs.getString("todate") %></td>
		<td><%=rs.getString("status") %></td>
		<td><a href="/Project1/updateleave.jsp?employeecode=<%=rs.getString("employeecode")%>&fromdate=<%=rs.getString("fromdate")%>">Update</a></td>
		<td><a href="/Project1/DeleteLeave.jsp?employeecode=<%=rs.getString("employeecode")%>&fromdate=<%=rs.getString("fromdate")%>">Delete</a></td>
		
		</tr>
		<%
		}
		con.close();
}
catch(Exception e){
	e.printStackTrace();
}

%>
		</table>

</body>
</html>