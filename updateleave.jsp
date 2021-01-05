<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<% String employeecode = request.getParameter("employeecode");%>
<% String fromdate = request.getParameter("fromdate");%>

<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "registration";
String userid = "root";
String password = "garima";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql =("select * from vacation where employeecode='"+employeecode+"'and fromdate='"+fromdate+"'");
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="main.css">
<link rel="stylesheet" type="text/css" href="AddLeave.css">
<link rel="stylesheet" type="text/css" href="AddSalary.css">



</head>
<body>
<%
response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
if (session.getAttribute("name")==null)
response.sendRedirect("Admin.jsp");
%>
<%@ include file="adminnavbar.jsp" %>


<h4>Update Employee Leave</h4>
<div class="errormsg">
	<%

    if(null!=request.getAttribute("errorMessage"))
    {
        out.println(request.getAttribute("errorMessage"));
    }
%>
</div>
<div class="containerleave">
	<form name="myForm3" method="post" action="ServletLeaveUpdate">
	
	<input type="hidden" name="employeecode" value="<%=resultSet.getString("employeecode") %>">
	<input type="hidden" name="fromdate" value="<%=resultSet.getString("fromdate") %>">
	<table>
	<tr>
	<td>Employee Code</td>
	</tr>
	<tr>
	<td><input type="text" name="employeecode" value="<%=resultSet.getString("employeecode") %>"></td>
	</tr>
     <tr>
     <td>Reason Of Leave</td>
     </tr>
     <tr>
     <td><input  type="text" name="description" value="<%=resultSet.getString("description") %>" required ></td>
     </tr>
     <tr>
     <td>From Date</td>
     </tr>
     <tr>
     <td><input type="date" name="fromdate" value="<%=resultSet.getString("fromdate") %>" required></td>
     </tr>
     <tr>
     <td>To Date</td>
     </tr>
     <tr>
     <td><input type="date" name="todate" value="<%=resultSet.getString("todate") %>" required></td>
     </tr>
     <tr>
     <td>Status</td>
     </tr>
     <tr>
	
					<td><input list="status" name="status" placeholder="Please Select" required>
					<datalist id="status">
							<option value="Approved">
							<option value="Disapproved">
						    <option value="Pending">
                    		
				 </datalist></td>
				 </tr>
    </table>
	<input type="submit" name="Update">
	</form>
	</div>
	<% }
connection.close();
} catch (Exception e) {
e.printStackTrace();
}%>


</body>
</html>