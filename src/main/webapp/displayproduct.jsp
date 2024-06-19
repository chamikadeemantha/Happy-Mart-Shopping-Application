<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Details</title>

<!-- Include Bootstrap CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">

<style type="text/css">
body {
	font-family: 'Hind SemiBold';
}
</style>
</head>
<body>
	<div class="mb-3 text-end">
		<a href="index.jsp"
			class="btn btn-primary position-absolute top-0 start-0 m-3">Back
			to Home</a>
	</div>
	<div class="container">

		<h1>Store Product Details</h1>
		<table class="table table-bordered">
			<%--             <c:forEach var="pid" items="${productDetails}">           
            <c:set var="id" value="${pid.id}"/>
			<c:set var="name" value="${pid.name}"/>
			<c:set var="price" value="${pid.price}"/>
			<c:set var="quantity" value="${pid.quantity}"/>
			<c:set var="description" value="${pid.description}"/>
			<c:set var="category" value="${pid.category}"/> --%>

			<c:forEach var="product" items="${productDetails}">

				<c:set var="id" value="${product.id}" />
				<c:set var="name" value="${product.name}" />
				<c:set var="price" value="${product.price}" />
				<c:set var="quantity" value="${product.quantity}" />
 				<c:set var="description" value="${product.description}" />
				<c:set var="category" value="${product.catagory}" />



				<tr>
					<th>Product ID</th>
					<td>${id}</td>
				</tr>
				<tr>
					<th>Product Name</th>
					<td>${name}</td>
				</tr>
				<tr>
					<th>Price</th>
					<td>${price}</td>
				</tr>
				<tr>
					<th>Quantity</th>
					<td>${quantity}</td>
				</tr>
				<tr>
					<th>Description</th>
					<td>${description}</td>
				</tr>
				<tr>
					<th>Product Category</th>
					<td>${category}</td>
				</tr>
			</c:forEach>
		</table>

		<c:url value="updateproduct.jsp" var="productupdate">
			<c:param name="id" value="${id}" />
			<c:param name="name" value="${name}" />
			<c:param name="price" value="${price}" />
			<c:param name="quantity" value="${quantity}" />
			<c:param name="description" value="${description}" />
			<c:param name="category" value="${category}" />
		</c:url>

		<a href="${productupdate}"> <input type="button" name="update"
			value="Update Product Details"
			style="background-color: #F5055D; color: #fff;">
		</a>

		<c:url value="deleteproduct.jsp" var="productdelete">
			<c:param name="id" value="${id}" />
			<c:param name="name" value="${name}" />
			<c:param name="price" value="${price}" />
			<c:param name="quantity" value="${quantity}" />
			<c:param name="description" value="${description}" />
		</c:url>

		<a href="${productdelete}"> <input type="button" name="delete"
			value="Delete Product"
			style="background-color: #007bff; color: #fff;">
		</a>


	</div>

	<!-- Include Bootstrap JS and jQuery (optional) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>