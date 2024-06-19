<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>UpdateCustomer</title>

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
    String id = request.getParameter("id");

System.out.println("user Id : "+id);



    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");
    String userName = request.getParameter("username");
    String password = request.getParameter("password");
%>

<div class="container">
    <h1>Update Account</h1>
    <form action="update" method="post">
        <table class="table table-bordered">
            <tr>
                <td>Customer ID</td>
                <td><input type="text" name="cusid" class="form-control" value="<%= id %>" readonly></td>
            </tr>
            <tr>
                <td>Name</td>
                <td><input type="text" name="name" class="form-control" value="<%= name %>"></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="text" name="email" class="form-control" value="<%= email %>"></td>
            </tr>
            <tr>
                <td>Phone number</td>
                <td><input type="text" name="phone" class="form-control" value="<%= phone %>"></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><input type="text" name="address" class="form-control" value="<%= address %>"></td>
            </tr>
            <tr>
                <td>User name</td>
                <td><input type="text" name="username" class="form-control" value="<%= userName %>"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="password" class="form-control" value="<%= password %>"></td>
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
