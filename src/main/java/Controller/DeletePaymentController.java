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
 * Servlet implementation class DeletePaymentController
 */
public class DeletePaymentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private BookingDAO dao;
  /**
   * @see HttpServlet#HttpServlet()
   */
  public DeletePaymentController() {
      super();
      dao = new BookingDAO();
  }
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
      int bookId = Integer.parseInt(request.getParameter("bookId"));
      dao.deleteBook(bookId);;
      request.setAttribute("book", BookingDAO.getAllBookings());
      RequestDispatcher view = request.getRequestDispatcher("verifyPaymentStaff.jsp");
      view.forward(request, response);
  }
}
