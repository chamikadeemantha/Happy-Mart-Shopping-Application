package carddetail;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateCardServlet")
public class UpdateCardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
		int id=Integer.parseInt(request.getParameter("id"));
		int cardnumber = Integer.parseInt(request.getParameter("cardnumber"));
		int cvv= Integer.parseInt(request.getParameter("cvv"));
		//LocalDate expdate = LocalDate.parse(request.getParameter("expdate"));
		String cardtype = request.getParameter("cardtype");
		
		boolean isTrue;
		
		isTrue = CardDBUtil.updatecard(id,cardnumber, cvv,cardtype);
		
		if(isTrue) {
			
			List<Card> cardDetails = CardDBUtil.getCardDetails(id);
			request.setAttribute("cardDetails", cardDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("displaycard.jsp");
			dis.forward(request, response);
		}
		else {
			List<Card> cardDetails = CardDBUtil.getCardDetails(id);
			request.setAttribute("cardDetails", cardDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("displaycard.jsp");
			dis.forward(request, response);
		}
	}

}
