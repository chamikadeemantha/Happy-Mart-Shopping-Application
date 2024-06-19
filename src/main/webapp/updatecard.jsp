<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>UpdateCard</title>

    <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <style type="text/css">
        table {
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid black;
        }
    </style>
</head>
<body>

<%
        int id = Integer.parseInt(request.getParameter("id"));
		int cardnumber = Integer.parseInt(request.getParameter("cardnumber"));
		int cvv= Integer.parseInt(request.getParameter("cvv"));
		String cardtype = request.getParameter("cardtype");
%>

<div class="container">
    <h1>Update Account</h1>
    <form action="updateCard" method="post">
         <table class="table table-bordered">
            <tr>
                <td>ID</td>
                <td><input type="text" name="id" class="form-control" value="<%= id %>" readonly></td>
            </tr>
            <tr>
                <td>Card Number</td>
                <td><input type="text" name="cardnumber" class="form-control" value="<%= cardnumber %>"></td>
            </tr>
            <tr>
                <td>CVV</td>
                <td><input type="text" name="cvv" class="form-control" value="<%= cvv %>"></td>
            </tr>
          
            <tr>
                <td>Card Type</td>
                <td><input type="text" name="cardtype" class="form-control" value="<%= cardtype %>"></td>
            </tr>
        </table>
        <br>
        <input type="submit" name="submit" class="btn btn-primary" value="Update My Data">
    </form>
</div>

<!-- Include Bootstrap JS and jQuery (optional) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
