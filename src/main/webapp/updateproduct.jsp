<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Update Product</title>

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
		String name =request.getParameter("name");
		String price= request.getParameter("price");
		String quantity = request.getParameter("quantity");
		String description = request.getParameter("description");
		String category = request.getParameter("category");
%>

<div class="container">
    <h1>Update Product</h1>
    <form action="updateProduct" method="post">
         <table class="table table-bordered">
            <tr>
                <td>Product ID</td>
                <td><input type="text" name="id" class="form-control" value="<%= id %>"></td>
            </tr>
            <tr>
                <td>Product Name</td>
                <td><input type="text" name="name" class="form-control" value="<%= name%>"></td>
            </tr>
            <tr>
                <td>Product Price</td>
                <td><input type="text" name="price" class="form-control" value="<%= price %>"></td>
            </tr>
          
            <tr>
                <td>Quantity</td>
                <td><input type="text" name="quantity" class="form-control" value="<%= quantity %>"></td>
            </tr>
            
              <tr>
                <td>Description</td>
                <td><input type="text" name="description" class="form-control" value="<%= description %>"></td>
            </tr>
              <tr>
                <td>Category</td>
                <td><input type="text" name="category" class="form-control" value="<%= category %>"></td>
            </tr>
        </table>
        <br>
        <input type="submit" name="submit" class="btn btn-primary" value="Update Product Details">
    </form>
</div>

<!-- Include Bootstrap JS and jQuery (optional) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>