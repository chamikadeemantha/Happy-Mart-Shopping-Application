package product;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@WebServlet("/productinsert")

public class productinsert extends HttpServlet {

		private static final long serialVersionUID = 1L;


		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        PrintWriter out = response.getWriter();
	        response.setContentType("text/html");
			
            int  id=Integer.parseInt(request.getParameter("id"));
			String name= request.getParameter("name");
			String price = request.getParameter("price");
			String quantity = request.getParameter("quantity");
			String description = request.getParameter("description");
			String category = request.getParameter("category");
					
			
			boolean isTrue;
					
			isTrue = productDBUtil.insertproduct(id,name,price,quantity,description,category);

			if(isTrue == true) {
				
				List<product> productDetails = productDBUtil.getproductDetails(id);
				
				//System.out.println("test data 001 :"+productDetails.get(0).geteDescription());
				
				request.setAttribute("productDetails", productDetails);
				
				RequestDispatcher disp = request.getRequestDispatcher("displayproduct.jsp");
				disp.forward(request, response);
				
			} else {
				RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
				dis2.forward(request, response);
			}
			
			
		}

	
}

