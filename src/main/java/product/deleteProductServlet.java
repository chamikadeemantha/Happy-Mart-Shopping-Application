package product;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteProductServlet")
public class deleteProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		 String idString = request.getParameter("id");
	        int id = Integer.parseInt(idString);

	        System.out.println("id : "+id);
	        boolean isTrue = productDBUtil.deleteproduct(id);

	        System.out.println("id : "+isTrue);
	        if (isTrue) {
	            response.sendRedirect("productinsert.jsp");
	        } 
	        else 
	        {
	            List<product> productDetails = productDBUtil.getproductDetails(id);
	            request.setAttribute("productDetails", productDetails);

	            RequestDispatcher dispatcher = request.getRequestDispatcher("displayproduct.jsp");
	            dispatcher.forward(request, response);
	        }
     }

}
