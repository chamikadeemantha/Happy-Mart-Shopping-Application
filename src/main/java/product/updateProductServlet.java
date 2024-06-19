package product;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateProductServlet")
public class updateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int id=Integer.parseInt(request.getParameter("id"));
		String name =request.getParameter("name");
		String price= request.getParameter("price");
		String quantity = request.getParameter("quantity");
		String description = request.getParameter("description");
		String category = request.getParameter("category");
		
		boolean isTrue;
		
		isTrue = productDBUtil.updateproduct(id,name, price,quantity,description,category);
		
		if(isTrue) {
			
			List<product> productDetails = productDBUtil.getproductDetails(id);
			request.setAttribute("productDetails", productDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("displayproduct.jsp");
			dis.forward(request, response);
		}
		else {
			List<product> productDetails = productDBUtil.getproductDetails(id);
			request.setAttribute("productDetails", productDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("displaycard.jsp");
			dis.forward(request, response);
		}
	}
}







	
        
	


