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
               <a href="index.jsp" class="btn btn-primary position-absolute top-0 start-0 m-3">Back to Home</a>
        </div>
    <div class="container">

        <h1>My Card Details</h1>
        <table class="table table-bordered">
            <c:forEach var="cardid" items="${cardDetails}">           
            <c:set var="id" value="${cardid.id}"/>
			<c:set var="cardnumber" value="${cardid.cardnumber}"/>
			<c:set var="cvv" value="${cardid.cvv}"/>
			<c:set var="expdate" value="${cardid.expdate}"/>
			<c:set var="cardtype" value="${cardid.cardtype}"/>
			
                <tr>
                    <th>Card ID</th>
                    <td>${cardid.id}</td>
                </tr>
                <tr>
                    <th>Card Number</th>
                    <td>${cardid.cardnumber}</td>
                </tr>
                <tr>
                    <th>Cvv</th>
                    <td>${cardid.cvv}</td>
                </tr>
                <tr>
                    <th>Expire Date</th>
                    <td>${cardid.expdate}</td>
                </tr>
                <tr>
                    <th>Card Type</th>
                    <td>${cardid.cardtype}</td>
                </tr>
            </c:forEach>
        </table>

        <c:url value="updatecard.jsp" var="cardupdate">
            <c:param name="id" value="${id}" />
            <c:param name="cardnumber" value="${cardnumber}" />
            <c:param name="cvv" value="${cvv}" />
            <c:param name="expdate" value="${expdate}" />
            <c:param name="cardtype" value="${cardtype}" />
        </c:url>

		<a href="${cardupdate}">
		<input type="button" name="update" value="Update My cardDetails"style="background-color: #F5055D; color: #fff;">
		</a>

        <c:url value="deletecard.jsp" var="carddelete">
            <c:param name="id" value="${id}" />
            <c:param name="cardnumber" value="${cardnumber}" />
            <c:param name="cvv" value="${cvv}" />
            <c:param name="expdate" value="${expdate}" />
            <c:param name="cardtype" value="${cardtype}" />
        </c:url>

        	<a href="${carddelete}">
	            <input type="button" name="delete" value="Delete My Card"style="background-color: #007bff; color: #fff;">
	        </a>


      </div>

    <!-- Include Bootstrap JS and jQuery (optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
