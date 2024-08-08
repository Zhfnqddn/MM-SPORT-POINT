<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Customers</title>
<link rel="stylesheet" type="text/css" href="listCust.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
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
		<li><a href="1homestaffacc.jsp" >HOME</a></li>
		<li class="dropdown">
            <a href="" class="dropdown-toggle">ACCOUNT<span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="ListCustController">CUSTOMER</a></li>
                <li><a href="ListStaffController">STAFF</a></li>
            </ul>
        </li>
        <li><a href="ListBookingController" class="active">BOOKING</a></li>
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
		<h2>Booking List</h2>
	<table border="1" class="table">
	<thead>
		<tr>
			<th>BookID</th>
			<th>CourtID</th>
			<th>Times</th>
			<th colspan="3">Action</th>
		</tr>
		</thead>
		<tbody id="tableBody">
		<c:forEach items="${book}" var="b" varStatus="book">
		<tr>
			<td><c:out value="${b.bookId}"/></td>
			<td><c:out value="${b.courtId}"/></td>
			<td><c:out value="${b.time}"/></td>
			
			<td><button class="btn btn-danger" id="<c:out value="${b.bookId}"/>" onclick="confirmation(this.id)">Delete</button></td>
		</tr>
		</c:forEach>
		</tbody>
	</table>
	</div>
</section>
	<script src="https://unpkg.com/scrollreveal"></script>
	<script>
	function confirmation(bookId) {
		console.log(bookId);
		var r = confirm("Are you sure you want to delete?");
		if (r == true) {
			location.href = 'DeleteBookController?bookId=' + bookId;
			alert("Staff member successfully deleted");
		} else {
			return false;
		}
	}
	
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

	   sr.reveal ('.home-text',{delay:100});
	   sr.reveal ('.home-img',{delay:100});
	   sr.reveal ('.container-box',{delay:100});
	   sr.reveal ('.about-img',{delay:100});
	   sr.reveal ('.about',{delay:100});
	   sr.reveal ('.contact',{delay:100});
	   sr.reveal ('.scroll',{delay:100});

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
	</script>
	<script src="dropdown.js"></script>
</body>
</html>