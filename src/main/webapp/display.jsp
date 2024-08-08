<%@ page import="java.sql.*" %>
<%@ page import="db.ConnectionManager" %>

<%
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try {
    conn = ConnectionManager.getConnection();
    String query = "SELECT * FROM BOOK ORDER BY id DESC"; // Assuming 'id' is the primary key column
    pstmt = conn.prepareStatement(query);
    rs = pstmt.executeQuery();

    if (rs.next()) {
        String courtId = rs.getString("courtId");
        String time = rs.getString("time");

        // Display the most recently added data
        out.println("Court ID: " + courtId + "<br>");
        out.println("Time: " + time + "<br>");
        out.println("<br>");
    } else {
        out.println("No recently added data found.");
    }
    
} catch (SQLException e) {
    e.printStackTrace();{
    	 conn.close();
    }
} 
    

%>
