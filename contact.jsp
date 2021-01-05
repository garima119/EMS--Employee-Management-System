<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="main.css">
<link rel="stylesheet" type="text/css" href="contact.css">



</head>
<body>
<div class="header">
<div class="heading">Employee Management System
</div>

<div class="heading2">Online Portal to manage your Comapany's needs</div>
	
	<br>
	<div class="topnav">
		<a href="index.jsp">Home</a>
		 <a href="Aboutus.jsp">About Us</a>		  		 
		<a href="Admin.jsp">Admin</a>
		<a href="login.jsp">Login</a>
	    <a class="active" href="contact.jsp">Contact Us</a>
		</div>
		</div>
		    <h4><p>Swing by for a cup of coffee, or leave us a message:</p></h4>
		             <img src="https://image.freepik.com/vector-gratis/fondo-de-telefono-y-elementos-de-contacto-en-diseno-plano_23-2147608610.jpg" alt="contact" width="450" height="450" class="adminprofile">
		    
		    <div class="contactform">
           <form name="myForm">
           <table>
           <tr>
		   <td>First Name</td>
		   </tr>
		   <tr>
		   <td><input type="text" name="firstname"  required></td>
		   </tr>
		   <tr>
		   <td>Last Name</td>
		   </tr>
		   <tr>
		   <td><input type="text" name="lastname"   required></td>
		   </tr>
		   <tr>
		   <td>Phone No</td>
		   </tr>
		   <tr>
		  <td> <input type="text" name ="phone" required></td>
		  </tr>
		  <tr>
		   <td><label for="subject">Subject</label></td>
		   </tr>
		   <tr>
        <td><textarea id="subject" name="subject" placeholder="Write something.." style="height:170px"></textarea></td>
        </tr>
        </table>
        
        <input type="submit" value="Submit">
         </form>
         </div>
         
			
				
		
</body>
</html>