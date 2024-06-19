package carddetail;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteCardServlet")
public class DeleteCardServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idString = request.getParameter("id");
        int id = Integer.parseInt(idString);

        System.out.println("id : "+id);
        boolean isTrue = CardDBUtil.deleteCard(id);

        System.out.println("id : "+isTrue);
        if (isTrue) {
            response.sendRedirect("cardinsert.jsp");
        } else {
            List<Card> CardDetails = CardDBUtil.getCardDetails(id);
            request.setAttribute("cardDetails", CardDetails);

            RequestDispatcher dispatcher = request.getRequestDispatcher("displaycard.jsp");
            dispatcher.forward(request, response);
        }
    }
}
