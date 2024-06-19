<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>SignUP</title>

    <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <div class="container">
        <h1>Insert A Card</h1>

     <form action="CardInsert" method="post">

    <div class="form-group">
        <label for="cardnumber">Card Number</label>
        <input type="number" class ="form-control" id="cardnumber" name="cardnumber" required>
    </div>

    <div class="form-group">
        <label for="cvv">CVV</label>
        <input type="number" class="form-control" id="cvv" name="cvv" required>
    </div>

    <div class="form-group">
        <label for="expdate">Expire Date</label>
        <input type="date" class="form-control" id="expdate" name="expdate" required>
    </div>

    <div class="form-group">
        <label for="cardtype">Card Type</label>
        <input type="text" class="form-control" id="cardtype" name="cardtype" required>
    </div>


            <button type="submit" class="btn btn-primary" name="submit">Add Card</button>
            <a href="index.jsp" class="btn btn-primary">Back to Home</a>
        </form>
    </div>
    
    <!-- Include Bootstrap JS and jQuery (optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>
