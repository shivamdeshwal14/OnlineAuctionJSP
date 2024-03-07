package in.sp.backend;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/Bidpage")
public class BidPageSer extends HttpServlet {
	@Override
	  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        String ItemId = req.getParameter("ItemId");
        String ItemName = req.getParameter("ItemName");
        String YourName = req.getParameter("YourName");
        String Email = req.getParameter("Email");
        String Amount = req.getParameter("Amount");

        // Check if any parameter is null
        if (ItemId == null || ItemId.isEmpty() || ItemName == null || ItemName.isEmpty() ||
                YourName == null || YourName.isEmpty() || Email == null || Email.isEmpty() ||
                Amount == null || Amount.isEmpty()) {
            resp.setContentType("text/html");
            out.print("<h3 style='color:red'>Error: Please Enter All Details</h3>");
            RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
        	rd.include(req, resp);
        	
        } else {
        	
            req.setAttribute("ItemId", ItemId);
            req.setAttribute("ItemName", ItemName);
            req.setAttribute("YourName", YourName);
            req.setAttribute("Email", Email);
            req.setAttribute("Amount", Amount);

            RequestDispatcher rd = req.getRequestDispatcher("/BidPage.jsp");
            rd.forward(req, resp);
        }

    }
}