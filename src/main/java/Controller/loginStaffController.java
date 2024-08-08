package Controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import dao.StaffDAO;
import model.StaffBean;

@WebServlet("/loginStaffController")
public class loginStaffController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private StaffDAO dao;

    public loginStaffController() {
        super();
        dao = new StaffDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String StaffName = request.getParameter("StaffName");
        String StaffPass = request.getParameter("StaffPass");

        // Authenticate the customer
        StaffBean staff = dao.getStaffrByName(StaffName);

        if ( staff != null && staff.getStaffPass().equals(StaffPass)) {
     	   
            // Customer authentication successful
            HttpSession session = request.getSession();
            session.setAttribute("staff", staff);
            
            // Redirect to the home page or a success page
             response.sendRedirect("1homestaffacc.jsp");
        } else {
            // Customer authentication failed
            // Redirect to a different page for failed authentication
            response.sendRedirect("loginin.jsp");
        }
    }
}
