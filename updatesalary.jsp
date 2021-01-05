<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<% String employeecode = request.getParameter("employeecode");%>
<% String month = request.getParameter("month");%>
<% String year = request.getParameter("year");%>


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
String sql =("select employeecode,username,month,year,amount from salary where employeecode='"+employeecode+"'and month='"+month+"' and year='"+year+"'");
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


<h4>Update Employee Salary</h4>
<div class="errormsg">
	<%

    if(null!=request.getAttribute("errorMessage"))
    {
        out.println(request.getAttribute("errorMessage"));
    }
%>
</div>
<div class="containersalary">
	<form name="myForm2" method="post" action="ServletforSalaryUpdate">
	<input type="hidden" name="employeecode" value="<%=resultSet.getString("employeecode") %>">
	<input type="hidden" name="month" value="<%=resultSet.getString("month") %>">
	<input type="hidden" name="year" value="<%=resultSet.getString("year") %>">
	<table>
	<tr>
	<td>Employee Code</td>
	</tr>
	<tr>
	<td><input type="text" name="employeecode" value="<%=resultSet.getString("employeecode") %>" required></td>
	</tr>
	<tr>
	<td>Month</td>
	</tr>
	<tr>
	
					<td><input list="month" name="month" value="<%=resultSet.getString("month") %>" placeholder="Please Select" required>
					<datalist id="month">
							<option value="January">
							<option value="February">
						    <option value="March">
                    		<option value="April">														
						    <option value="May">
						    <option value="June">
							<option value="July">
							<option value="August">
							<option value="September">
							<option value="October">
							<option value="November">										
							<option value="December">
				 </datalist></td>
				 </tr>
		 <tr>
     <td>Username</td>
     </tr>
     <tr>
     <td><input type="text" name="username" value="<%=resultSet.getString("username") %>" required></td>
     </tr>		 
     <tr>
     <td>Year</td>
     </tr>
     <tr>
     <td><input type="text" name="year" value="<%=resultSet.getString("year") %>" required></td>
     </tr>
     <tr>
     <td>Amount</td>
     </tr>
     <tr>
     <td><input type="text" name="amount" value="<%=resultSet.getString("amount") %>" required></td>
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