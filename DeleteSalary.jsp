<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<%
String employeecode=request.getParameter("employeecode");
String month=request.getParameter("month");
String year=request.getParameter("year");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/registration", "root", "garima");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM salary WHERE employeecode='"+employeecode+"'and month='"+month+"'and year='"+year+"'");
if(i > 0)
{
    RequestDispatcher rd = request.getRequestDispatcher("/SalaryReport.jsp");
    rd.forward(request, response);
}
else
{
	request.setAttribute("errorMessage", "Problem in deleting the record.");
    RequestDispatcher rd = request.getRequestDispatcher("/EmployeeReport.jsp");
    rd.forward(request, response);
} 
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>