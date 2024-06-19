<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - HappyMart</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    <style>
        .contact-container {
            background-image: url('image/contactus.jpg'); /* Replace 'your-image.jpg' with the actual image URL */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            padding: 100px 0; /* Adjust the padding as needed */
        }
        /* Override Bootstrap text color classes to make text black */
        .display-4, .lead, h2, p, ul, li {
            color: #000 !important; /* Set text color to black */
        }
    </style>
</head>
<body>
    <header>
    </header>

    <div class="container contact-container">
        <section class="contact-us">
            <h1 class="display-4">Contact Us</h1>
            <p class="lead">Have questions or feedback for us? We'd love to hear from you! Contact HappyMart through the following options:</p>

            <h2>Contact Information</h2>
            <address>
                <p><strong>Address:</strong> 123 Happy Street, Happy City, Happyland</p>
                <p><strong>Email:</strong> <a href="mailto:info@happymart.com">info@happymart.com</a></p>
                <p><strong>Phone:</strong> <a href="tel:+123456789">+1 (234) 567-89</a></p>
            </address>

            <h2>Contact Form</h2>
            <form>
                <div class="form-group">
                    <label for="name">Your Name</label>
                    <input type="text" class="form-control" id="name" placeholder="Enter your name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" class="form-control" id="email" placeholder="Enter your email" required>
                </div>
                <div class="form-group">
                    <label for="message">Message</label>
                    <textarea class="form-control" id="message" rows="4" placeholder="Enter your message" required></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </section>
    </div>

    <footer>
    </footer>
</body>
</html>
