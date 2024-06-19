<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Product View</title>

    <!-- Include Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">   
    
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
   
   
    <style>
        .insert-container {
            background-image: url('image/aboutus.jpg'); /* Replace 'your-image.jpg' with the actual image URL */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            padding: 150px 50px; /* Adjust the padding as needed */
        }
        /* Override Bootstrap text color classes to make text black */
        .display-4, .lead, h2, p, ul, li {
            color: #000 !important; /* Set text color to black */
        }
    </style>
    
    
</head>

<body>
    <div class="container insert-container">
        <h1>Insert Product</h1>

     <form action="productInsert" method="post">
    <div class="form-group">
        <label for="name">ID</label>
        <input type="text" class="form-control" id="id" name="id" required>
    </div>

    <div class="form-group">
        <label for="name">Product Name</label>
        <input type="text" class="form-control" id="name" name="name" required>
    </div>

    <div class="form-group">
        <label for="price">Product Price</label>
        <input type="text" class="form-control" id="price" name="price" required>
    </div>
    
    <script>
document.getElementById("price").addEventListener("input", function () {
    const input = this;
    const value = input.value;
    if (!Number.isInteger(parseFloat(value))) {
        input.value = "";
    }
});
</script>
    
    

    <div class="form-group">
        <label for="quantity">Quantity</label>
        <input type="text" class="form-control" id="quantity" name="quantity" required>
    </div>
     <script>
                document.getElementById("quantity").addEventListener("input", function () {
                    const input = this;
                    const value = input.value;
                    if (!Number.isInteger(parseFloat(value))) {
                        input.value = "";
                    }
                });
            </script>
    <div class="form-group">
        <label for="description">Description</label>
        <input type="text" class="form-control" id="description" name="description" required>
    </div>
    
    
    <div class="form-group">
        <label for="category">Category</label>
        <input type="text" class="form-control" id="category" name="category" required>
    </div>


            <button type="submit" class="btn btn-primary" name="submit">Add Product</button>
            <a href="index.jsp" class="btn btn-primary">Back to Home</a>
        </form>
    </div>
    
    <!-- Include Bootstrap JS and jQuery (optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

</html>
