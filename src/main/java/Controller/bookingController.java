package Controller;

import java.io.IOException;
import java.sql.Time;
import jakarta.servlet.http.Part;
import java.io.InputStream;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import dao.BookingDAO;
import model.BookingBean;
import model.PaymentBean;

import jakarta.servlet.http.HttpSession;


public class bookingController extends HttpServlet {
	 private static final long serialVersionUID = 1L;
    private BookingDAO bookingDAO;


    public bookingController() {
        super();
        bookingDAO = new BookingDAO();
    }

   /** protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int courtId = Integer.parseInt(request.getParameter("courtId"));
        String time = request.getParameter("times");

        BookingBean booking = new BookingBean();
        booking.setCourtId(courtId);
        booking.setTime(time);
        
        HttpSession session = request.getSession();
        session.setAttribute("CourtId", booking.getCourtId());
        session.setAttribute("times", booking.getTime());

        bookingDAO.addBooking(booking);

        response.sendRedirect("listbooking.jsp"); // Redirect to a success page
    }*/

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	BookingBean s = new BookingBean();
	    s.setCourtId(Integer.parseInt(request.getParameter("courtId") ) ); 
	    s.setTime(request.getParameter("times"));;
	    s.setCustID(Integer.parseInt(request.getParameter("CustID")));
	    
	    int bookingid= Integer.parseInt(request.getParameter("CustID"));
	    System.out.println(bookingid);
	  
	    bookingDAO.addBooking(s); //invoke method addShawl() in ShawlDAO;
	    
        response.sendRedirect("PaymentController");
	        
	  }
}
