<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Details</title>

    <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <style type="text/css">
        body {
            font-family: 'Hind SemiBold';
        }
    </style>
</head>
<body>
        <div class="mb-3 text-end">
               <a href="login.jsp" class="btn btn-primary position-absolute top-0 start-0 m-3">Back to Login</a>
        </div>
    <div class="container">

        <h1>My Account</h1>
        <table class="table table-bordered">
            <c:forEach var="cus" items="${cusDetails}">
            
            <c:set var="id" value="${cus.id}"/>
			<c:set var="name" value="${cus.name}"/>
			<c:set var="email" value="${cus.email}"/>
			<c:set var="phone" value="${cus.phone}"/>
			<c:set var="address" value="${cus.address}"/>
			<c:set var="username" value="${cus.userName}"/>
			<c:set var="password" value="${cus.password}"/>
			
                <tr>
                    <th>Customer ID</th>
                    <td>${cus.id}</td>
                </tr>
                <tr>
                    <th>Customer Name</th>
                    <td>${cus.name}</td>
                </tr>
                <tr>
                    <th>Customer Email</th>
                    <td>${cus.email}</td>
                </tr>
                <tr>
                    <th>Customer Phone</th>
                    <td>${cus.phone}</td>
                </tr>
                <tr>
                    <th>Customer Address</th>
                    <td>${cus.address}</td>
                </tr>
                <tr>
                    <th>Customer User Name</th>
                    <td>${cus.userName}</td>
                </tr>
            </c:forEach>
        </table>

        <c:url value="updatecustomer.jsp" var="cusupdate">
            <c:param name="id" value="${id}" />
            <c:param name="name" value="${name}" />
            <c:param name="email" value="${email}" />
            <c:param name="phone" value="${phone}" />
            <c:param name="address" value="${address}" />
            <c:param name="username" value="${username}" />
            <c:param name="password" value="${password}" />
        </c:url>

		<a href="${cusupdate}">
		<input type="button" name="update" value="Update My Data"style="background-color: #F5055D; color: #fff;">
		</a>

        <c:url value="deletecustomer.jsp" var="cusdelete">
            <c:param name="id" value="${id}" />
            <c:param name="name" value="${name}" />
            <c:param name="email" value="${email}" />
            <c:param name="phone" value="${phone}" />
            <c:param name="address" value="${address}" />
            <c:param name="username" value="${username}" />
            <c:param name="password" value="${password}" />
        </c:url>

        	<a href="${cusdelete}">
	            <input type="button" name="delete" value="Delete My Account"style="background-color: #007bff; color: #fff;">
	        </a>
           <a href="cardinsert.jsp">
               	<input type="button" value="Add Card"style="background-color: #F5A505; color: #fff;">
           </a>	       
	       <a href="displaycard.jsp">
               	<input type="button" value="Card Details"style="background-color: #F5A505; color: #fff;">
           </a>


      </div>

    <!-- Include Bootstrap JS and jQuery (optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
