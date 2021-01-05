<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="main.css">
<link rel="stylesheet" type="text/css" href="MyProfile.css">
</head>
<body>
<%
response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
if (session.getAttribute("name")==null)
response.sendRedirect("login.jsp");
%>
<%@ include file="loginnavbar.jsp" %>


	
	
	

	
		
<img src="https://png.pngtree.com/element_origin_min_pic/16/09/24/0857e5ce0904235.jpg" alt="userprofile" width="400" height="400" class="adminprofile">


<div class="nav">
<a href="index.jsp">Home</a>
</div>
<div class="nav">
<a href="ApplyLeave.jsp">Apply Leave</a>
</div>
<div class="nav">
<a href="MyAccount.jsp">My Account</a>
</div>
<div class="nav">
<a href="MyLeave.jsp">Leave Report</a>
</div>
<div class="nav">
<a href="MySalary.jsp">Salary Report</a>
</div>

<div class="nav">
<a href="logout.jsp">Logout</a>
</div>
</body>
</html>