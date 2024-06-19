<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HappyMart</title>
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- CSS -->
    <style>
        body {
		    background-image: url('image/1.png');
            background-color:white;
            font-family: Arial, sans-serif;
        }

        .jumbotron {
            background-image: url('image/3.png'); 
            background-size: cover;
            color: white;
            text-align: center;
            padding: 200px 0;
        }

        .jumbotron h1 {
            font-size: 4rem;
        }

        .jumbotron p {
            font-size: 1.5rem;
        }

        .container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.2);
            margin-top: -100px;
        }

        .navbar {
            background-color:#040303;
        }

        .navbar-nav .nav-link {
            color: #040303; 
        }

        .navbar-toggler-icon {
            background-color: black; 
        }
    </style>
</head>
<body>
    <!-- Navigation bar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
		<li class="logo">
         <img src="image/logo.png" width ="130" height ="40">
        </li>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Home</a>
                </li>
				<li class="nav-item">
                    <a class="nav-link" href="customerinsert.jsp">SignUp</a>
                </li>
				<li class="nav-item">
                    <a class="nav-link" href="login.jsp">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Products</a>
                </li>
				<li class="nav-item">
                    <a class="nav-link" href="#">Cart</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="aboutus.jsp">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contactus.jsp">Contact</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Hero section -->
    <div class="jumbotron">
        <h1>Welcome to Our Grocery Store</h1>
        <p>Your One-Stop Shop for Fresh and Quality Products</p>
        <a class="btn btn-primary btn-lg" href="#" role="button">Shop Now</a>
    </div>

    <!-- Featured products or categories section -->
    <div class="container">
        <h2>Featured Products</h2>
        <div class="row">
            <!-- product -->
            <div class="col-md-4">
                <div class="card">
                    <img src="image/vegetables.jpg" alt="Product 1" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Vegetables</h5>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="image/bakery.jpg" alt="Product 2" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Bakery Items</h5>
                    </div>
                </div>
            </div>
		  <div class="col-md-4">
                <div class="card">
                    <img src="image/fruits.jpg" alt="Product 3" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Fruits</h5>
                    </div>
                </div>
            </div>
           <div class="col-md-4">
                <div class="card">
                    <img src="image/snacks.jpg" alt="Product 4" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Snacks</h5>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="image/spices.jpg" alt="Product 5" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Spices</h5>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="image/juices.jpg" alt="Product 6" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">Juices</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>

<!-- Footer -->
<footer class="bg-dark text-white text-center py-3">
    &copy;Happy Mart
    <div class="footer-links">
        <a href="#">Privacy Policy</a> |
        <a href="#">Terms of Service</a> |
        <a href="#">Refund Policy</a>
    </div>
    <div class="social-icons">
        <a href="#"><i class="fab fa-facebook"></i></a>
        <a href="#"><i class="fab fa-twitter"></i></a>
        <a href="#"><i class="fab fa-instagram"></i></a>
    </div>
</footer>


    <!-- Bootstrap JS scripts (jQuery and Popper.js) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
