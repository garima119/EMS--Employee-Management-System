<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="header">
<div class="heading">Employee Management System</div>
<div class="heading2">Online Portal to manage your Company's needs</div>
<br>
	<div class="navbar">
		<a href="index.jsp">Home</a>
		 <a href="Aboutus.jsp">About Us</a>		  		 
		<div class="dropdown">
       <button class="dropbtn">Account 
         <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
         <a href="MyAccount.jsp">My Account</a>
      <a href="ApplyLeave.jsp">Apply Leave</a>
    </div>
    </div>
    <div class="dropdown">       
     <button class="dropbtn">My Reports 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="MySalary.jsp">Salary Report</a>
      <a href="MyLeave.jsp">Leave Report</a>
    </div>
    </div>
    <a  href="contact.jsp">Contact Us</a>
	<a href="changepass.jsp">Change Password</a>
	<a href="logout.jsp">Logout</a>
	</div>
	</div>
	
</body>
</html>