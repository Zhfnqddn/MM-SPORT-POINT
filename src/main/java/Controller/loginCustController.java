package Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import dao.CustDAO;
import model.CustomerBean;

@WebServlet("/loginCustController")
/**
 * Servlet implementation class loginCustController
 */
public class loginCustController extends HttpServlet {
 private static final long serialVersionUID = 1L;
    private CustDAO dao;   
    /**
     * @see HttpServlet#HttpServlet()
     */
 public loginCustController() {
        super();
        dao = new CustDAO();
       
        // TODO Auto-generated constructor stub
    }

 /**
  * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
  */
 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  // TODO Auto-generated method stub
  response.getWriter().append("Served at: ").append(request.getContextPath());
 }

 /**
  * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
  */
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  // TODO Auto-generated method stub
  doGet(request, response);
   String custName = request.getParameter("CustName");
         String custPass = request.getParameter("CustPass");
         System.out.println(custName);
         CustomerBean cust = dao.validateLogin(custName, custPass);

         if (cust != null) {
             // Login successful
             // Redirect to appropriate dashboard or perform cust-specific actions
             HttpSession session = request.getSession();
             session.setAttribute("CustID", cust.getCustID());
             session.setAttribute("CustName", cust.getCustName());
             session.setAttribute("CustPhoneNum", cust.getCustPhoneNum());
             session.setAttribute("CustEmail", cust.getCustEmail());
             session.setAttribute("CustPass", cust.getCustPass());




             System.out.println(session.getAttribute("CustName"));
             //response.sendRedirect(request.getContextPath() + "/1homecusacc.jsp");
             String targetPage = "1homecusacc.jsp";
             RequestDispatcher dispatcher = request.getRequestDispatcher(targetPage);
             dispatcher.forward(request, response);

         } else {
             // Login failed
             System.out.println("Login failed.");

             // You can handle the failed login scenario here, such as displaying an error message or redirecting to a login page
             //response.sendRedirect(request.getContextPath() + "loginin.jsp");
             String targetPage = "loginin.jsp";
             RequestDispatcher dispatcher = request.getRequestDispatcher(targetPage);
             dispatcher.forward(request, response);
         }
     }
  
 }
