<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%> 
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="ISO-8859-1"> 
<title>Badminton Booking System</title> 
<link rel="stylesheet" type="text/css" href="profile.css">  
 
<!---box icons--->	
<link rel="stylesheet"
href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" 
rel="stylesheet">

<!---google fonts--->	
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?
family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
</head>
</head> 
 
<body> 
  
<!---header---> 
<header>
	<a href="1homestaffacc.jsp" class="logo"><i class='bx bxs-home'></i>MM SPORT POINT</a><br>
    <h4>STAFF</h4>

	<ul class="navlist">
		<li><a href="1homestaffacc.jsp" class="active">HOME</a></li>
		<li class="dropdown">
            <a href="#booking" class="dropdown-toggle">ACCOUNT<span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="ListCustController">CUSTOMER</a></li>
                <li><a href="ListStaffController">STAFF</a></li>
            </ul>
        </li>
        <li><a href="ListBookingController">BOOKING</a></li>
        <li><a href="VerifyPaymentController">PAYMENT</a></li>
		<li><a href="addcourt.jsp">COURT</a></li>	
	</ul>
	
	<div class="nav">
		<a href="index.html" class="btn">LOGOUT<i class='bx bxs-user-circle'></i></a>
		<div class="bx bx-menu" id="menu-icon"></div>
	</div>	
</header>
 
<!--profile--> 
<!-- <section class="profile" id="profile"> --> 
    <div class="profile-text"> 
        <h2>VIEW ACCOUNT</h2> 
        <a href="#" class="btn1"><i class='bx bxs-user-circle'></i></a> 
    </div> 
<!-- </section> --> 
 
<form> 
 <div class="container-box"> 
 

<label>Staff_ID: <c:out value="${c.staffID}"/>  </label> <br>
<label>Staff_Name: <c:out value="${c.staffName}"/> </label><br>
<label>Staff_Role: <c:out value="${c.staffRole}"/> </label><br>
<label>Staff_PhoneNum: <c:out value="${c.staffPhoneNum}"/></label> <br>
<label>Staff_Email: <c:out value="${c.staffEmail}"/> </label><br>
<label>Staff_Pass: <c:out value="${c.staffPass}"/> </label><br>
<label>Manager_ID: <c:out value="${c.managerID}"/> </label><br>
 
  

 </div>                            
</form> 
 
 
<!-- contact --> 
<section class="contact" id="contact"> 
 <div class="contact-text"> 
   <h2>Contact Us</h2> 
   <p>" The beauty of the game is strength,  
   stamina and technique and when you shorten the game,  
   technique goes for a toss and the quality of badminton  
   will surely go down in this system. "  
   <br>- Jwala Gutta -</p> 
    <div class="social"> 
     <a href="#" class="clr"><i class='bx bxl-whatsapp-square'></i></a> 
     <a href="https://www.facebook.com/p/MM-SPORT-POINT-100054418932651/"><i class='bx bxl-facebook-square'></i></a> 
     <a href="#"><i class='bx bxl-instagram'></i></a> 
     <a href="#"><i class='bx bxl-twitter'></i></a> 
    </div>    
  </div> 
</section> 
 
<!--- scroll top ---> 
<a href="#" class="scroll"> 
 <i class='bx bxs-up-arrow-square'></i> 
</a> 
 
<script src="https://unpkg.com/scrollreveal"></script> 
 
<!---link to js--->  
    <script>
    
    /* DROPDOWN */

    document.addEventListener("DOMContentLoaded", function() {
        var dropdownToggle = document.querySelectorAll(".dropdown-toggle");
      
        dropdownToggle.forEach(function(toggle) {
          toggle.addEventListener("click", function(e) {
            e.preventDefault();
            var dropdownMenu = this.nextElementSibling;
            dropdownMenu.style.display = dropdownMenu.style.display === "block" ? "none" : "block";
          });
        });
    });
	 
    const header = document.querySelector("header");

    window.addEventListener("scroll", function(){
    	header.classList.toggle("sticky", window.scrollY > 80);
    });

    let menu = document.querySelector('#menu-icon');
    let navlist = document.querySelector('.navlist');

    menu.onclick = () => {
    	menu.classList.toggle('bx-x');
    	navlist.classList.toggle('open');
    }

    window.onscroll = () => {
    	menu.classList.remove('bx-x');
    	navlist.classList.remove('open');
    }

    const sr = ScrollReveal({
    	origin: 'top',
    	distance: '85px',
    	duration: 2500,
    	reset: true
    })

    sr.reveal ('.table-responsive',{delay:100});
    sr.reveal ('.contact-text',{delay:100});
    sr.reveal ('.scroll',{delay:100});
    
    
    
    </script> 
    <script src="dropdown.js"></script>
</body> 
</html>