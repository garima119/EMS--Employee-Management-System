<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="main.css">

<link rel="stylesheet" type="text/css" href="login.css">

</head>
<body>
<div class="header">
<div class="heading"> Employee Management System</div>
<div class="heading2">Online Portal to manage your Company's needs</div><br>

<div class="topnav">
<a href="index.jsp">Home</a>
<a href="Aboutus.jsp">About Us</a>
<a href="Admin.jsp">Admin</a>
<a class="active" href="login.jsp">Login</a>
<a href="Contact.jsp">Contact Us</a>
</div>
</div>


<div class="loginbox">
<img src="http://icons.iconarchive.com/icons/papirus-team/papirus-status/512/avatar-default-icon.png" class="avatar">
<h1>Sign in</h1>

<form method="post" action="ServletLogin">


<p>Enter Username</p>
        <input type="text" name="username">
<p>Enter Password</p>
		<input type="password" name="password">
		
	    <input type="submit" value="login">
<br><br><a href="#">Lost your Password?</a><br><br>
</form>
</div>
</body>
</html>