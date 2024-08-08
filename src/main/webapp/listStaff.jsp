<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Staff</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="listCust2.css">
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



<section id="customerTable">
	<div class="table-responsive">
		<h2>Staff List</h2>
	<table border="1" class="table">
	<thead>
		<tr>
			<th>StaffID</th>
			<th>StaffName</th>
			<th>StaffRole</th>
			<th>StaffPhoneNum</th>
			<th>StaffEmail</th>
			<th>StaffPass</th>
			<th>ManagerID</th>
			<th colspan="3">Action</th>
		</tr>
		</thead>
		<tbody id="tableBody">
		<c:forEach items="${staffs}" var="c" varStatus="staffs">
		<tr>
			<td><c:out value="${c.staffID}"/></td>
			<td><c:out value="${c.staffName}"/></td>
			<td><c:out value="${c.staffRole}"/></td>
			<td><c:out value="${c.staffPhoneNum}"/></td>
			<td><c:out value="${c.staffEmail}"/></td>
			<td><c:out value="${c.staffPass}"/></td>
			<td><c:out value="${c.managerID}"/></td>
			<td><a class="btn btn-primary" href="ViewStaffController?StaffID=<c:out value="${c.staffID}"/>">View</a></td>
			<td><a class="btn btn-primary" href="UpdateStaffController?StaffID=<c:out value="${c.staffID}"/>">Update</a></td>
			<td><button class="btn btn-danger" id="<c:out value="${c.staffID}"/>" onclick="confirmation(this.id)">Delete</button></td>
		</tr>
		</c:forEach>
		</tbody>
	</table>
	</div>
</section>
	
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
	
	
	<script>
	function confirmation(staffID) {
		console.log(staffID);
		var r = confirm("Are you sure you want to delete?");
		if (r == true) {
			location.href = 'DeleteStaffController?StaffID=' + staffID;
			alert("Staff member successfully deleted");
		} else {
			return false;
		}
	}
	
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