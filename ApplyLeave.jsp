<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="main.css">
<link rel="stylesheet" type="text/css" href="AddLeave.css">

<link rel="stylesheet" type="text/css" href="MyProfile.css">


</head>
<body>
<%
response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
if (session.getAttribute("name")==null)
response.sendRedirect("login.jsp");
%>
<%@ include file="loginnavbar.jsp" %>


	
	<h4>Employee Leave Form</h4>
	<div class="containerleave">
	<form name="myForm3" method="post" action="ApplyLeave">
	<table>
	<tr>
	<td>Employee Code</td>
	</tr>
	<tr>
	<td><input type="text" name="employeecode" required></td>
	</tr>
     <tr>
     <td>Reason Of Leave</td>
     </tr>
     <tr>
     <td><input  type="text" name="description" required></td>
     </tr>
     <tr>
     <td>Username</td>
     </tr>
     <tr>
     <td><input  type="text" name="username" required></td>
     </tr>
     
     <tr>
     <td>From Date</td>
     </tr>
     <tr>
     <td><input type="date" name="fromdate" required></td>
     </tr>
     <tr>
     <td>To Date</td>
     </tr>
     <tr>
     <td><input type="date" name="todate" required></td>
     </tr>
     <tr>
     <td>Status</td>
     </tr>
     <tr>
	
					<td><input type="text" name="status" value="Pending" required>
					</td>
				 </tr>
    </table>
	<input type="submit" name="submit">
	</form>
	</div>
	
</body>
</html>