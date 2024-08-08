package Controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import dao.BookingDAO;
import dao.CustDAO;

/**
 * Servlet implementation class PaymentListController
 */
public class PaymentListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private BookingDAO dao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentListController() {
        super();
        dao = new BookingDAO();
        // TODO Auto-generated constructor stub
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("book", BookingDAO.getAllBookings());
		RequestDispatcher view = request.getRequestDispatcher("PaymentList.jsp");
        view.forward(request, response);
	}

}

