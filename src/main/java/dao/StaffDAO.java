package dao;

import java.sql.*;

import model.CustomerBean;
import model.StaffBean;
import java.util.ArrayList;
import java.util.List;

import db.ConnectionManager;


public class StaffDAO {
	  static Connection con = null;
	  static PreparedStatement ps = null;
	  static Statement stmt = null;
	  static ResultSet rs = null;
	  private int StaffID,ManagerID,StaffPhoneNum;
	  private String StaffName,StaffRole,StaffEmail,StaffPass;
	  
	//add staff
	  public void addStaff(StaffBean bean) {
	    
	    ManagerID  = bean.getManagerID();
	    StaffPhoneNum = bean.getStaffPhoneNum();
	    StaffName = bean.getStaffName();
	    StaffRole = bean.getStaffRole();
	    StaffEmail = bean.getStaffEmail();
	    StaffPass = bean.getStaffPass();
	    
	    try {      
	      //call getConnection() method
	    	con = db.ConnectionManager.getConnection();
	      
	      //3. create statement
	      ps = con.prepareStatement("INSERT INTO staff(staff_name,staff_phonenum,staff_role,staff_email,staff_pass,manager_id)VALUES(?,?,?,?,?,?)");
	      
	      ps.setString(1, StaffName);
	      ps.setInt(2, StaffPhoneNum);
	      ps.setString(3, StaffRole);
	      ps.setString(4, StaffEmail);
	      ps.setString(5, StaffPass);
	      ps.setInt(6, ManagerID);
	      
	      //4. execute query
	      ps.executeUpdate();
	      System.out.println("Successfully inserted");
	      
	      //5. close connection
	      con.close();
	      
	    }catch(Exception e) {
	      e.printStackTrace();
	      
	    }
	  }  
	    public static List<StaffBean> getAllStaff() {
	        List<StaffBean> staffs = new ArrayList<StaffBean>();

	        try {
	            // Get connection
	            con = db.ConnectionManager.getConnection();

	            // Create statement
	            stmt = con.createStatement();
	            String sql = "SELECT * FROM staff ORDER BY staff_id";

	            // Execute query
	            rs = stmt.executeQuery(sql);

	            while (rs.next()) {
	                StaffBean s = new StaffBean();
	                s.setStaffID(rs.getInt("staff_id"));
	                s.setStaffName(rs.getString("staff_name"));
	                s.setStaffPhoneNum(rs.getInt("staff_phonenum"));
	                s.setStaffRole(rs.getString("staff_role"));
	                s.setStaffEmail(rs.getString("staff_email"));
	                s.setStaffPass(rs.getString("staff_pass"));
	                s.setManagerID(rs.getInt("manager_id"));
	                staffs.add(s);
	            }

	            // Close connection
	            con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return staffs;
	    }

	    public static StaffBean getStaffByID(int StaffID) {
	        StaffBean staff = new StaffBean();

	        try {
	            // Get connection
	            con = db.ConnectionManager.getConnection();

	            // Create statement
	            ps = con.prepareStatement("SELECT * FROM staff WHERE staff_id = ?");
	            ps.setInt(1, StaffID);

	            // Execute query
	            rs = ps.executeQuery();

	            if (rs.next()) {
	                
	                staff.setStaffID(rs.getInt("staff_id"));
	                staff.setStaffName(rs.getString("staff_name"));
	                staff.setStaffPhoneNum(rs.getInt("staff_phonenum"));
	                staff.setStaffRole(rs.getString("staff_role"));
	                staff.setStaffEmail(rs.getString("staff_email"));
	                staff.setStaffPass(rs.getString("staff_pass"));
	                staff.setManagerID(rs.getInt("manager_id"));
	            }

	            // Close connection
	            con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return staff;
	    }

	    public void updateStaff(StaffBean staff) {
	        StaffID = staff.getStaffID();
	        StaffName = staff.getStaffName();
	        StaffPhoneNum = staff.getStaffPhoneNum();
	        StaffRole = staff.getStaffRole();
	        StaffEmail = staff.getStaffEmail();
	        StaffPass = staff.getStaffPass();
	        ManagerID = staff.getManagerID();

	        try {
	            // Get connection
	            con = db.ConnectionManager.getConnection();

	            // Create statement
	            ps = con.prepareStatement(
	                    "UPDATE staff SET staff_name=?, staff_phonenum=?, staff_role=?, staff_email=?, staff_pass=?, manager_id=? WHERE staff_id=?");
	            ps.setString(1, StaffName);
	            ps.setInt(2, StaffPhoneNum);
	            ps.setString(3, StaffRole);
	            ps.setString(4, StaffEmail);
	            ps.setString(5, StaffPass);
	            ps.setInt(6, ManagerID);
	            ps.setInt(7, StaffID);

	            // Execute query
	            ps.executeUpdate();
	            System.out.println("Successfully updated");

	            // Close connection
	            con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }

	    public void deleteStaff(int staffID) {
	        try {
	            // Get connection
	            con = db.ConnectionManager.getConnection();

	            // Create statement
	            ps = con.prepareStatement("DELETE FROM staff WHERE staff_id=?");
	            ps.setInt(1, staffID);

	            // Execute query
	            ps.executeUpdate();

	            // Close connection
	            con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	    
	    public StaffBean getStaffrByName(String StaffName) {
	        StaffBean staff = null;

	        try {
	            // Get connection
	            con = ConnectionManager.getConnection();

	            // Create statement
	            ps = con.prepareStatement("SELECT * FROM staff WHERE staff_name = ?");
	            ps.setString(1, StaffName);

	            // Execute query
	            rs = ps.executeQuery();

	            // Check if the customer exists
	            if (rs.next()) {
	                // Create the customer object and populate its properties
	                staff = new StaffBean();
	                staff.setStaffID(rs.getInt("staff_id"));
	                staff.setStaffName(rs.getString("staff_name"));
	                staff.setStaffPhoneNum(rs.getInt("staff_phonenum"));
	                staff.setStaffRole(rs.getString("staff_role"));
	                staff.setStaffEmail(rs.getString("staff_email"));
	                staff.setStaffPass(rs.getString("staff_pass"));
	                staff.setManagerID(rs.getInt("manager_id"));
	            }
	            con.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	            // Handle the exception accordingly
	        } 

	        return staff;
	    }
}