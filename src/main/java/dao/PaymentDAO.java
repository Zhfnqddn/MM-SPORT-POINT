package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.BookingBean;
import model.PaymentBean;
import db.ConnectionManager;

public class PaymentDAO {
	
	
	
	    public void addPayment(PaymentBean payment) {
	        Connection conn = null;
	        PreparedStatement pstmt = null;

	        try {
	            conn = ConnectionManager.getConnection();
	            String query = "INSERT INTO PAYMENT (cust_id, paymentImage, paymentStatus) VALUES (?, ?, ?)";
	            pstmt = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
	            pstmt.setInt(1, payment.getCustID()); // Change bookId to custId
	            pstmt.setBytes(2, payment.getPaymentImage());
	            pstmt.setString(3, payment.getPaymentStatus());

	            pstmt.executeUpdate();
	            conn.close();
	            ResultSet rs = pstmt.getGeneratedKeys();
	            if (rs.next()) {
	                int generatedPaymentId = rs.getInt(1);
	                payment.setPaymentId(generatedPaymentId);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        
	    }
	}
