<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About KAKIKITAR</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="images/logokakikitar.png" />
    <!-- Boxicons CSS -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <!-- Favfont-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    
</head>
<body>
	<%@ include file="navbar.jsp" %>
	
    <section class="about-section" id="about">
        <h1>KAKIKITAR</h1>
        <p>KAKIKITAR is your trusted platform for recycling and upcycling. Our mission is to reduce waste and promote sustainable living by connecting individuals and businesses with eco-friendly solutions. Whether you want to sell your recyclable waste or explore unique upcycled products, KAKIKITAR is here to help.</p>
        <div class="nav-buttons">
            <button onclick="location.href='explore.jsp'">Explore</button>
            <button onclick="location.href='howtorecycle.jsp'">Learn More</button>
        </div>
    </section>

    <section class="contact-section" id="contact">
        <h1>Contact Us</h1>
        <p>If you have any questions or need assistance, feel free to reach out to us. We're here to help!</p>
        <form action="contact.jsp" method="post">
            <input type="text" name="name" placeholder="Your Name" required>
            <input type="email" name="email" placeholder="Your Email" required>
            <textarea name="message" rows="5" placeholder="Your Message" required></textarea>
            <button type="submit">Send Message</button>
        </form>
    </section>

    <%@ include file="footer.jsp" %>
    
    <style>
        /* Custom styles for this page */
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background: url('images/download.png') no-repeat center center fixed;
            backdrop-filter: blur(5px);
            background-size: cover;
        }
        
        .nav-buttons {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        
        .nav-buttons button {
            background-color: #66bb6a;
            border: none;
            color: white;
            padding: 10px 20px;
            font-size: 1rem;
            cursor: pointer;
            margin: 0 10px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .nav-buttons button:hover {
            background-color: #2e7d32;
        }

        .about-section {
            padding: 50px;
            text-align: center;
            background: rgba(255, 255, 255, 0.7);
            margin: 30px auto;
            border-radius: 10px;
            width: 80%;
        }

        .about-section h1, .contact-section h1 {
            font-size: 2.5rem;
            margin: 0;
            margin-bottom: 20px;
        }

        .about-section p {
            font-size: 1.2rem;
            line-height: 1.8;
            color: #555;
        }

        .contact-section {
            padding: 50px;
            text-align: center;
            background: rgba(240, 240, 240, 0.9);
            margin: 30px auto;
            border-radius: 10px;
            width: 80%;
        }

        .contact-section form {
            padding: 8px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .contact-section input, .contact-section textarea {
            width: 80%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .contact-section button {
            background-color: #66bb6a;
            border: none;
            color: white;
            padding: 10px 20px;
            font-size: 1rem;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .contact-section button:hover {
            background-color: #2e7d32;
        }

        .footer {
            text-align: center;
            padding: 10px 0;
            background: #2e7d32;
            color: white;
        }

    </style>
</body>
</html>
