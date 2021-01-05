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
response.sendRedirect("Admin.jsp");
%>
<%@ include file="adminnavbar.jsp" %>


	<h4>Employee Details</h4>
	<br>

<table align="center"  border="1" >
<tr>

</tr>
<tr bgcolor="white">
<td><b>Employee Code</b></td>
<td><b>First Name</b></td>
<td><b>Last Name</b></td>
<td><b>Department</b></td>
<td><b>Position</b></td>
<td colspan="2"><b>Action</b></td>

</tr>

<%
try{  
	        Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection ("jdbc:mysql://localhost:3306/registration","root","garima");
		Statement ps=con.createStatement();
		String sql="select employeecode,firstname,lastname,department,position from employees";
		ResultSet rs=ps.executeQuery(sql);
		while(rs.next()){
		%>
		
		<tr bgcolor="lightgrey">
		<td><%=rs.getString("employeecode") %></td>
		<td><%=rs.getString("Firstname") %></td>
		<td><%=rs.getString("Lastname") %></td>
		<td><%=rs.getString("Department") %></td>
		<td><%=rs.getString("Position") %></td>
		<td>
		      <a href="updateemployee.jsp?employeecode=<%=rs.getString("employeecode")%>">Update</a>
		      </td>
		      <td>
		      <a href="DeleteEmployee.jsp?employeecode=<%=rs.getString("employeecode")%>">Delete</a>
   
		</td>
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