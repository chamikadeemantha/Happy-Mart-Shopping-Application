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
	String name = request.getParameter("name");
	String price= request.getParameter("price");
	String quantity = request.getParameter("quantity");
	String description = request.getParameter("description");
	String category = request.getParameter("catagory");
	%>

<div class="container">
    <h1>Delete Account</h1>
    <form action="deleteProduct" method="post">
         <table class="table table-bordered">
            <tr>
                <td>ID</td>
                <td><input type="text" name="id" class="form-control" value="<%= id %>" readonly></td>
            </tr>
            <tr>
                <td>Product Name</td>
                <td><input type="text" name="name" class="form-control" value="<%= name %>"readonly></td>
            </tr>
            <tr>
                <td>Price</td>
                <td><input type="text" name="price" class="form-control" value="<%= price %>"readonly></td>
            </tr>
           
            <tr>
                <td>Qunatity</td>
                <td><input type="text" name="quantity" class="form-control" value="<%= quantity %>"readonly></td>
            </tr>
            
            <tr>
                <td>Description</td>
                <td><input type="text" name="quantity" class="form-control" value="<%= description %>"readonly></td>
            </tr>
            <tr>
                <td>Category</td>
                <td><input type="text" name="quantity" class="form-control" value="<%= category %>"readonly></td>
            </tr>
        </table>
        <br>
        <input type="submit" name="submit" class="btn btn-primary" value="Delete Product">
    </form>
</div>

</body>
</html>