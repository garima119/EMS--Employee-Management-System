<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="index.css">
<link rel="stylesheet" type="text/css" href="main.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<div class="header">
<div class="heading">Employee Management System
<input type="text" placeholder="Search...">
</div>

<div class="heading2">Online Portal to manage your Comapany's needs</div>
	
	<br>
	<div class="topnav">
		<a class="active" href="index.jsp">Home</a>
		 <a href="Aboutus.jsp">About Us</a>		  		 
		<a href="Admin.jsp">Admin</a>
		<a href="login.jsp">Login</a>
	    <a  href="contact.jsp">Contact Us</a>
		</div>
		</div>
		
		
		<div class="ImageContainer">
		<div class="mySlide">
		<img src="http://fspl.theempcare.com/Images/EMS.png" alt="employees" width="1250" height="400">
		</div>
		<div class="mySlide">
		<img src="https://s-i.huffpost.com/gen/1410414/images/o-HAPPY-EMPLOYEES-facebook.jpg" alt="employees" width="1250" height="400">
		</div>
		<div class="mySlide">
		<img src="https://mission-minded.com/wp-content/uploads/Brand-Acquisition-Retention.png" alt="employees" width="1250" height="400">
		</div>
		<div class="mySlide">
		<img src="http://businessimpactinc.com/wp-content/uploads/2015/07/cartoon_meeting.jpg" alt="employees" width="1250" height="400">
		</div>
		<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
		<br>
		<div style="text-align:center">
              <span class="dot" onclick="currentSlide(1)"></span> 
              <span class="dot" onclick="currentSlide(2)"></span> 
              <span class="dot" onclick="currentSlide(3)"></span> 
              <span class="dot" onclick="currentSlide(4)"></span> 
              
</div>
<script>

var slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlide");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1} 
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none"; 
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block"; 
  dots[slideIndex-1].className += " active";
}
</script>
<div class="bigcontainer">
<div class="container">
<img src="https://wagepoint.com/employee-management/images/img1.png" alt="employees" class="myimg">
<p>An Employee management system consists of crucial work-related and important personal information about an employee. In a nutshell, it is an online inventory of all employees of an organization.It is crucial to handle this aspect of your business well.</p>
<div class="rectangle">
<a href="login.jsp">Employee Management</a>
</div>
</div>
<div class="container">
<img src="http://www.hrmthread.com/wp-content/themes/hrthread/images/post5.png" alt="fsb" class="myimg">
<p>Salary Management</b> is very important because if an organisation possesses good wage and salary structure, it will attract and retain suitable, qualified and experienced personnel.Payroll system minimizes the labor cost and increases efficiency. </p>
<div class="rectangle">
<a href="login.jsp">Salary Management</a>
</div>
</div>
<div class="container">
<img src="http://www.myfinancialsoftware.com/wp-content/uploads/2015/08/ppic.jpg" alt="leave" class="myimg">
<p>Streamlining employee<b> Leave Management </b> gives you a golden opportunity to tackle multiple concerns in a single stroke. It eliminates busy work involved in leave administration and employee follow ups, saving time and transaction costs.</p>
<div class="rectangle">
<a href="login.jsp">Leave Management</a>
</div>
</div>
</div>
<div class="logincontainer">
<img src="https://png.pngtree.com/thumb_back/fw800/back_pic/00/04/08/575621005b79472.jpg" alt="admin" width="1340" height="350">
<div class="text">
Admin has the privilege to add employees, update their salary and leave reports.All the changes made by admin are updated in the database and reflected when any user accesses them.
<div class="adminbox">
<p><a href="admin.jsp"> Admin Login</a></p></div>
</div>
</div>
<div class="logincontainer">
<img src="http://www.workamajig.com/hubfs/Blog/Creative_Resource_Management_Back_to_the_Basics.jpg" alt="admin" width="1340" height="300">
<div class="text2">
User can see his/her Salary and Leave Reports by logging into the system.All the information of the user is stored in the database.
<div class="adminbox">
<p><a href="login.jsp">User Login</a></p></div>
</div>
</div>



	
	<div class="footer">
		<p><b>Developed By:Garima Chhabra</b>    |     Contact Information:chhabragarima11@gmail.com  <i style="font-size:24px" class="fa">&#xf082;</i> <i style="font-size:24px" class="fa">&#xf08c;</i> <i style="font-size:24px" class="fa">&#xf16d;</i>
	    </p>
		</div>
		
</body>
</html>
    