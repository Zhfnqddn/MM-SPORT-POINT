<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Staff</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="profileStaff.css">
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
<body>

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
	<div class="profile-text">
        <h2>MY ACCOUNT</h2>
        <a href="#" class="btn1"><i class='bx bxs-user-circle'></i></a>
    </div>

<form action="UpdateStaffController" method="post" class="form-box">
    Name: <br>
    <input type="text" name="StaffName" value="<c:out value="${c.staffName}"/>"/><br>
    Role: <br>
    <input type="text" name="StaffRole" value="<c:out value="${c.staffRole}"/>"/><br>
    Phone Number: <br>
    <input type="text" name="StaffPhoneNum" value="<c:out value="${c.staffPhoneNum}"/>"/><br>
    Email: <br>
    <input type="text" name="StaffEmail" value="<c:out value="${c.staffEmail}"/>"/><br>
    Password: <br>
    <input type="password" name="StaffPass" value="<c:out value="${c.staffPass}"/>"/><br><br>
    Manager: <br>
    <input type="text" name="ManagerID" value="<c:out value="${c.managerID}"/>"/><br>
    <input type="hidden" name="StaffID" value="<c:out value="${c.staffID}"/>"/><br><br>
    <div class="btn-save">
    <input type="submit" value="Submit">
    </div>
    <div class="btn-cancel">
    <input type="reset" value="Reset">
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
<script src="dropdown.js"></script>
</body>
</html>
