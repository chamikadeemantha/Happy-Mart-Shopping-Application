<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

	<%
    int id = Integer.parseInt(request.getParameter("id"));
	int cardnumber = Integer.parseInt(request.getParameter("cardnumber"));
	int cvv= Integer.parseInt(request.getParameter("cvv"));
	
	String cardtype = request.getParameter("cardtype");
	%>

<div class="container">
    <h1>Delete Account</h1>
    <form action="deleteCard" method="post">
         <table class="table table-bordered">
            <tr>
                <td>ID</td>
                <td><input type="text" name="id" class="form-control" value="<%= id %>" readonly></td>
            </tr>
            <tr>
                <td>Card Number</td>
                <td><input type="text" name="cardnumber" class="form-control" value="<%= cardnumber %>"readonly></td>
            </tr>
            <tr>
                <td>CVV</td>
                <td><input type="text" name="cvv" class="form-control" value="<%= cvv %>"readonly></td>
            </tr>
            <%-- <tr>
                <td>Expiration Date</td>
                <td><input type="text" name="expdate" class="form-control" value="<%= expdate %>"readonly></td>
            </tr> --%>
            <tr>
                <td>Card Type</td>
                <td><input type="text" name="cardtype" class="form-control" value="<%= cardtype %>"readonly></td>
            </tr>
        </table>
        <br>
        <input type="submit" name="submit" class="btn btn-primary" value="Delete My Card">
    </form>
</div>

</body>
</html>