<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form> 
 <div class="container-box"> 
 
 <input type="hidden" class="form-control" id="cust" name="CustID" value="<c:out value="${sessionScope.CustID}"/>">
 <label for="name">Customer ID: <c:out value="${sessionScope.CustID}"/></label><br><br> 
 <label for="name">Name: <c:out value="${sessionScope.CustName}"/></label><br><br> 
 <label for="phone">Phone Number:  <c:out value="${sessionScope.CustPhoneNum}"/></label><br><br> 
 <label for="email">Email: <c:out value="${sessionScope.CustEmail}"/></label><br><br> 
 <label for="password">Password: <c:out value="${sessionScope.CustPass}"/></label><br><br>
 
  
 
 <div class="btn-update"> 
  <a class="btn2" href="UpdateCustController?CustID=<c:out value="${sessionScope.CustID}"/>">Update</a> 
 </div> 
  
 </div>                            
</form> 
</body>
</html>