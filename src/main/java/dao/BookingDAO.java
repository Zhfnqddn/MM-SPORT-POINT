package dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.BookingBean;
import model.CourtBean;
import db.ConnectionManager;

public class BookingDAO {
	static Connection con = null;
	static Statement stmt = null;
	static PreparedStatement ps = null;
	static ResultSet rs = null;
	
	
	
    public void addBooking(BookingBean booking) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        
        try {
            conn = ConnectionManager.getConnection();
            String query = "INSERT INTO BOOK (courtId, times,cust_id) VALUES (?, ?, ?)";
            pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, booking.getCourtId());
            pstmt.setString(2, booking.getTime());
            pstmt.setInt(3, booking.getCustID());
            pstmt.executeUpdate();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        }
    
    public static List<BookingBean> getAllBookings() {
        List<BookingBean> bookings = new ArrayList<BookingBean>();
        try {
            con = ConnectionManager.getConnection();
            Statement stmt = con.createStatement();
            String sql = "SELECT * FROM book ORDER BY bookId";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                BookingBean booking = new BookingBean();
                booking.setBookId(rs.getInt("bookId"));
                booking.setCourtId(rs.getInt("courtId"));
                booking.setTime(rs.getString("times"));
                booking.setCustID(rs.getInt("cust_id"));

                bookings.add(booking);
            }
            
            con.close();
            
        }catch(Exception e) {
          e.printStackTrace();
        
          
        }
        
        return bookings;
      }
    
public void deleteBook(int bookId) {
    try {
        // Get connection
        con = ConnectionManager.getConnection();

        // Create statement
        ps = con.prepareStatement("DELETE FROM book WHERE bookId=?");
        ps.setInt(1, bookId);

        // Execute query
        ps.executeUpdate();

        // Close connection
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
}
}
