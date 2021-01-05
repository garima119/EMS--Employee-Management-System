<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="AdminProfile.css">
<link rel="stylesheet" type="text/css" href="main.css">

</head>
<body>
<%
response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
if (session.getAttribute("name")==null)
response.sendRedirect("Admin.jsp");
%>
<%@ include file="adminnavbar.jsp" %>

	<h1>Welcome to Employee Management System</h1>
	<hr>
	<img src="https://cdn-images-1.medium.com/max/500/0*uG2eriJCcfm1Bgbb." alt="adminprofile" width="450" height="450" class="adminprofile">
	<div class="nav">
<a href="AddEmployee.jsp">Add Employee</a>
</div>
<div class="nav">
<a href="AddSalary.jsp">Add Salary</a>
</div>
<div class="nav">
<a href=AddLeave.jsp>Add Leave</a>
</div>
<div class="nav">
<a href="EmployeeReport.jsp">Employee Report</a>
</div>
<div class="nav">
<a href="SalaryReport.jsp">Salary Report</a>
</div>
<div class="nav">
<a href="LeaveReport.jsp">Leave Report</a>
</div>
<div class="nav">
<a href="logout.jsp">Logout</a>
</div>
	


</body>
</html>