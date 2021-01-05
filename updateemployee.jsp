<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<% String employeecode = request.getParameter("employeecode");%>
<%
try{  
	        Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection ("jdbc:mysql://localhost:3306/registration","root","garima");
		Statement ps = con.createStatement();
		String strQuery = ("SELECT * FROM employees where employeecode='"+employeecode+"'");
		ResultSet rs = ps.executeQuery(strQuery);
		while(rs.next()){

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="main.css">
<link rel="stylesheet" type="text/css" href="AddEmployee.css">

</head>
<body>
<%
response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
if (session.getAttribute("name")==null)
response.sendRedirect("Admin.jsp");
%>
<%@ include file="adminnavbar.jsp" %>


<h4>Update Employee Data</h4>
<div class="errormsg">
	<%

    if(null!=request.getAttribute("errorMessage"))
    {
        out.println(request.getAttribute("errorMessage"));
    }
%>
</div>
<div class="container">
			<form name="myForm" action="ServletEmployee" method="get">
			<table>
			<input type="hidden" name="employeecode" value="<%=rs.getString("employeecode") %>">
			
				<tr>
					<td>Salutation</td>
					<td>Department</td>
					<td>Position</td>
				</tr>
				<tr>
					<td><input type="text" name="salutation" value="<%=rs.getString("Salutation") %>"></td>
					<td><input type="text" name="department" value="<%=rs.getString("Department")%>"> </td>
                     <td><input type="text" name="position" value="<%=rs.getString("Position")%>" ></td>
                     </tr>
                     
                     <tr>
                     <td>First Name</td>
				     <td>Middle Name</td>
				     <td>Last Name</td>
				</tr>
	             <tr>				
				<td><input type="text" name="firstname"  value="<%=rs.getString("Firstname")%>" required></td>
				<td><input type="text" name="middlename" value="<%=rs.getString("Middlename")%>" ></td>
				<td><input type="text" name="lastname"  value="<%=rs.getString("Lastname")%>" required></td>
				</tr>
				<tr>
				<td>Gender</td>
				 <td>Date of Birth</td>
				 <td>Nationality</td>
				</tr>
				<tr>
					<td><input type="text" name="gender" value="<%=rs.getString("Gender")%>" ></td>
					<td><input type="date" name="dateofbirth" value="<%=rs.getString("Dateofbirth")%>" required></td>
					<td><input type="text" name="nationality" value="<%=rs.getString("Nationality")%>" required></td>
				</tr>
				<tr>
				<td>Email</td>
				<td>Landline</td>
				<td>Mobile</td>
				</tr>
				<tr>				
				<td><input type="text" name="email" value="<%=rs.getString("Email")%>"  required></td>
				<td><input type="text" name="landline"  pattern="[0-9]{8}" title="8 digit landline number" value="<%=rs.getString("Landline")%>" ></td>
				<td><input type="text" name="mobile" pattern="[0-9]{10}" title="10 digit mobile number" value="<%=rs.getString("Mobile")%>" required></td>
				</tr>
				<tr>
				<td colspan="3" style="color:DarkBlue" >Employee Address Details</td>
				</tr>
				<tr>
				<td><hr></td>
				<td><hr></td>
				<td><hr></td>
				</tr>
				<tr>
				<td>Address</td>
				 <td>City</td>
				 <td>State</td>
				</tr>
				<tr>				
				<td><input type="text" name="address" value="<%=rs.getString("Address")%>"  required></td>
				<td><input type="text" name="city" value="<%=rs.getString("City")%>"  ></td>
				<td><input type="text" name="state" value="<%=rs.getString("State")%>"  required></td>
				</tr>
				<tr>
				<td colspan="3" style="color:DarkBlue">Employee Login Details</td>
				</tr>
				<tr>
				<td><hr></td>
				<td><hr></td>
				<td><hr></td>
				</tr>
				<tr>
				<td>Username</td>
				 <td>Password</td>
				 <td>Confirm Password</td>
				</tr>
				<tr>
				<td><input type="text" name="username" value="<%=rs.getString("Username")%>"  required></td>
				<td><input type="text" name="password" value="<%=rs.getString("Password")%>" ></td>
				<td><input type="password" name="confirmpassword"   required></td>
				</tr>
				</table>
			<br> <input type="submit" value="Update"> 
				
</form>
</div>
<% }
con.close();
} catch (Exception e) {
e.printStackTrace();
}%>

</body>
</html>