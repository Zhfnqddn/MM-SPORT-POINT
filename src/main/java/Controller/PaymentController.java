package Controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import model.BookingBean;
import model.PaymentBean;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import dao.BookingDAO;
import dao.CustDAO;
import dao.PaymentDAO;
import jakarta.servlet.http.Part;
import java.io.InputStream;

public class PaymentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private CustDAO dao;

    public PaymentController() {
        super();
        dao = new CustDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String custPass = request.getParameter("CustPass");
        request.setAttribute("c", CustDAO.getCustomerByPass(custPass));
        RequestDispatcher view = request.getRequestDispatcher("payment.jsp");
        view.forward(request, response);
    }
}
