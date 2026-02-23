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
    
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background: url('images/download.png') no-repeat center center fixed;
            background-size: cover;
        }
        .navbar {
            position: sticky;
            top: 0;
            background-color: #2e7d32;
            z-index: 1000;
            padding: 10px 40px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            font-family: 'Poppins', sans-serif;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .logo {
            display: flex;
            align-items: center;
        }
        .logo-link {
            display: flex;
            align-items: center;
            text-decoration: none;
        }
        .logo img {
            height: 40px;
            margin-right: 10px;
            max-width: 100%;
        }
        .logo-text {
            font-size: 1.8rem;
            font-weight: bold;
            color: white;
        }
        .navbar a {
            text-decoration: none;
            color: white;
            font-weight: bold;
            padding: 10px 15px;
            transition: color 0.3s;
        }
        .navbar a:hover {
            color: #a5d6a7;
        }
        .navbar .login-signup {
            display: flex;
            gap: 10px;
        }
        .about-section, .features-section {
            padding: 50px;
            text-align: center;
            margin: 30px auto;
            border-radius: 10px;
            width: 80%;
            background: rgba(255, 255, 255, 0.4);
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(5px);
            border: 1px solid rgba(255, 255, 255, 0.3);
            opacity: 0;
            transform: translateY(20px);
            animation: fadeInUp 1s ease-in-out forwards;
        }
        .about-section h1, .features-section h1 {
            color: white;
            text-shadow: 2px 6px 15px rgba(0, 0, 0, 0.8);
            font-size: 2.5rem;
            margin: 0;
        }
        
        .features-grid {
            display: flex;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
        }
        .feature-item {
            flex: 1;
            min-width: 250px;
            padding: 20px;
            margin-top: 22px;
            background: rgba(240, 240, 240, 0.9);
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .feature-item:hover {
            transform: perspective(600px) rotateX(10deg) rotateY(-10deg);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.4);
        }
        .feature-item h2 {
            font-size: 1.5rem;
            color: #2e7d32;
            margin-bottom: 10px;
        }
        .feature-item p {
            font-size: 1rem;
            color: #555;
        }
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <nav class="navbar">
        <div class="logo">
            <a href="index.jsp" class="logo-link">
                <img src="images/logokakikitar.png" alt="KAKIKITAR Logo" class="logo-image">
                <span class="logo-text">KAKIKITAR</span>
            </a>
        </div>
        <div class="links">
            <a href="#about">About</a>
            <a href="#features">Features</a>
        </div>
        <div class="login-signup">
            <a href="login.jsp" class="button">Login</a>
            <a href="registration.jsp" class="button">Sign Up</a>
        </div>
    </nav>

    <%-- Popup message based on servlet response --%>
    <% 
        String message = (String) request.getAttribute("message");
        if (message != null && !message.isEmpty()) {
    %>
        <script>
            alert("<%= message %>");
        </script>
    <% } %>

    <section class="about-section" id="about">
        <h1>Welcome to KAKIKITAR</h1>
        <p>KAKIKITAR is your trusted platform for recycling and upcycling. Our mission is to reduce waste and promote sustainable living by connecting individuals and businesses with eco-friendly solutions. Whether you want to sell your recyclable waste or explore unique upcycled products, KAKIKITAR is here to help.</p>
    </section>

    <section class="features-section" id="features">
        <h1>Key Features of KAKIKITAR</h1>
        <p>Discover what makes KAKIKITAR the ultimate platform for recycling and upcycling:</p>
        <div class="features-grid">
            <div class="feature-item">
                <h2>Easy Waste Management</h2>
                <p>Seamlessly list, track, and manage recyclable materials from your home or business.</p>
            </div>
            <div class="feature-item">
                <h2>Secure Transactions</h2>
                <p>Engage in secure, transparent buying and selling of recyclable items.</p>
            </div>
            <div class="feature-item">
                <h2>Community Collaboration</h2>
                <p>Connect with like-minded individuals and businesses committed to sustainability.</p>
            </div>
        </div>
    </section>
    <%@ include file="footer.jsp" %>
</body>
</html>
