package customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class Loginservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");

        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        boolean isTrue;
        //for Admin
        if ("admin".equals(userName) && "123".equals(password)) {
            RequestDispatcher Admin = request.getRequestDispatcher("Admin.jsp");
            Admin.forward(request, response);
        } else {
            isTrue = CustomerDBUtil.validate(userName, password);

            if (isTrue) {
            	
                List<Customer> cusDetails = CustomerDBUtil.getCustomerByUsernameAndPassword(userName, password);
                request.setAttribute("cusDetails", cusDetails);

                RequestDispatcher userAccount = request.getRequestDispatcher("useraccount.jsp");
                userAccount.forward(request, response);
                //validate correct username and password
            } else {
                out.println("<script type='text/javascript'>");
                out.println("alert('Your username or password is incorrect');");
                out.println("location='login.jsp'");
                out.println("</script>");
            }
        }
    }
}
