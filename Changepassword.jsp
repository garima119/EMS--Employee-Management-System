<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
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


	<div class="container">
<form name="Form1" method="post" action="" onsubmit="return validate()">
<p>Enter old Password</p>
<input type="password" name="oldpassword" required>
<p>Enter new Password</p>
<input type="password" name="newpassword" required>
<p>Confirm new Password</p>
<input type="password" name="confirmnewpassword" required><br>

<br>
<input type="submit" value="submit">

</form>
</div>
<%
String OldPassword = request.getParameter("oldpassword");
String Newpass = request.getParameter("newpassword");
String conpass = request.getParameter("confirmnewpassword");



String pass = "";
try{  
    Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection ("jdbc:mysql://localhost:3306/registration","root","garima");
Statement ps=con.createStatement();
ResultSet rs=ps.executeQuery("select * from admin where password= '"+ OldPassword + "'");
if (rs.next()) { 
pass = rs.getString("password");
} 
if(pass.equals(OldPassword))
{
if (Newpass.equals(conpass)) {
int i = ps.executeUpdate("update admin set password='"+ Newpass + "'");
response.sendRedirect("reg.jsp");
con.close();
} else {
out.println("Old Password doesn't match");
}
/*}else{
out.println("new password and confirm new password is not matching");
}*/
}
} catch (Exception e) {
out.println(e);
}
%>
</body>
</html>