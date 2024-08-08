<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Form</title>
</head>
<body>
    <h1>Booking Form</h1>
    <form action="BookingController" method="post">
        <!-- Your form inputs here -->
        <label for="bookingDate">Date:</label>
        <input type="date" id="bookingDate" name="bookingDate"><br><br>
    
        <label for="hourStart">Hour Start:</label>
        <input type="text" id="hourStart" name="hourStart"><br><br>

        <label for="hourEnd">Hour End:</label>
        <input type="text" id="hourEnd" name="hourEnd"><br><br>

        <input type="submit" value="Submit">
    </form>
    
    <h2>Available Sessions:</h2>
    <table>
        <thead>
            <tr>
                <th>Session ID</th>
                <th>Date</th>
                <th>Hour Start</th>
                <th>Hour End</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${bookings}" var="booking">
                <tr>
                    <td><c:out value="${booking.bookingId}" /></td>
                    <td><c:out value="${booking.bookingDate}" /></td>
                    <td><c:out value="${booking.hourStart}" /></td>
                    <td><c:out value="${booking.hourEnd}" /></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
