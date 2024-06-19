package carddetail;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.time.LocalDate;
import java.util.List;

@WebServlet("/Cardinsert")

public class CardInsert extends HttpServlet {

		private static final long serialVersionUID = 1L;


		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        response.setContentType("text/html");
			
			int cardnumber = Integer.parseInt(request.getParameter("cardnumber"));
			int cvv= Integer.parseInt(request.getParameter("cvv"));
			LocalDate expdate = LocalDate.parse(request.getParameter("expdate"));
			String cardtype = request.getParameter("cardtype");
			
			boolean isTrue;
					
			isTrue = CardDBUtil.insertcard(cardnumber,cvv,expdate,cardtype);

			if(isTrue == true) {
				
				List<Card> cardDetails = CardDBUtil.getCardDetailByCardNumber(cardnumber);
				request.setAttribute("cardDetails", cardDetails);
				
				RequestDispatcher dis = request.getRequestDispatcher("displaycard.jsp");
				dis.forward(request, response);
				
			} else {
				RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
				dis2.forward(request, response);
			}
			
			
		}

	
}
