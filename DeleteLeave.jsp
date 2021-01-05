<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*,java.util.*"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="main.css">


</head>
<body>
<%
response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
if (session.getAttribute("name")==null)
response.sendRedirect("Admin.jsp");
%>

<div class="errormsg">
	<%

    if(null!=request.getAttribute("errorMessage"))
    {
        out.println(request.getAttribute("errorMessage"));
    }
%>
</div>
<%
String employeecode=request.getParameter("employeecode");
String fromdate=request.getParameter("fromdate");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration", "root", "garima");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM vacation WHERE employeecode='"+employeecode+"'and fromdate='"+fromdate+"'");
if(i > 0)
{
    RequestDispatcher rd = request.getRequestDispatcher("/LeaveReport.jsp");
    rd.forward(request, response);
}
else
{
	request.setAttribute("errorMessage", "Problem in deleting the record.");
    RequestDispatcher rd = request.getRequestDispatcher("/LeaveReport.jsp");
    rd.forward(request, response);
} 
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

</body>
</html>