package Controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import dao.BookingDAO;

/**
 * Servlet implementation class VerifyPaymentController
 */
public class VerifyPaymentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private BookingDAO dao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VerifyPaymentController() {
        super();
        dao = new BookingDAO();
        // TODO Auto-generated constructor stub
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("book", BookingDAO.getAllBookings());
		RequestDispatcher view = request.getRequestDispatcher("verifyPaymentStaff.jsp");
        view.forward(request, response);
	}

}
