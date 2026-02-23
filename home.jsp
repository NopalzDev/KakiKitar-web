<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KAKIKITAR - Home</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="images/logokakikitar.png" />
    <!-- Boxicons CSS -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <!-- Favfont-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="styles.css">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background: url('images/download.png') no-repeat center center fixed;
            background-size: cover;
        }
        
        body::before {
    		content: '';
    		position: fixed;
    		top: 0;
    		left: 0;
    		width: 100%;
    		height: 100%;
    		background: rgba(255, 255, 255, 0.4);
    		z-index: -1;
    		pointer-events: none;
		}

        .hero {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 85vh;
            color: white;
            text-align: center;
            padding: 10px;
            animation: fadeIn 1s ease-in;
        }

        .hero-logo {
            height: 200px;
            margin-bottom: 5px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.3);
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(10px);
            animation: scaleIn 1s ease-in-out;
        }

        .hero-content h1 {
            font-size: 3rem;
            margin: 0;
            text-shadow: 2px 6px 15px rgba(0, 0, 0, 0.8);
            animation: slideInFromTop 0.75s ease-in-out;
        }

        .hero-content p {
            font-size: 1.2rem;
            font-weight: 600;
            text-shadow: 1px 3px 10px rgba(0, 0, 0, 1);
            margin-bottom: 45px;
            animation: fadeIn 1s ease-in 0.25s;
        }

        .primary-button {
            background-color: #66bb6a;
            border: none;
            color: white;
            padding: 10px 20px;
            font-size: 1.2rem;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s;
            animation: fadeIn 1s ease-in 0.5s;
        }

        .primary-button:hover {
            background-color: #2e7d32;
        }

        .features {
            display: flex;
            height: 50vh;
            justify-content: space-around;
            padding: 75px 40px 50px;
            animation: fadeIn 1s ease-in;
        }

        .feature {
            text-align: center;
            padding: 30px;
            max-width: 300px;
            height: 220px;
            background: #66bb6a;
            border-radius: 15px;
            color: white;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            animation: slideInFromBottom 0.75s ease-in-out;
        }

        .feature:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        .feature h2 {
            font-size: 1.5rem;
            margin-bottom: 10px;
        }

        .feature p {
            font-size: 1rem;
            margin-bottom: 20px;
        }

        .feature-link {
            text-decoration: none;
            color: #2e7d32;
            font-weight: bold;
            background: white;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background 0.3s, color 0.3s;
        }

        .feature-link:hover {
            background: #2e7d32;
            color: white;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes scaleIn {
            from {
                transform: scale(0.5);
                opacity: 0;
            }
            to {
                transform: scale(1);
                opacity: 1;
            }
        }

        @keyframes slideInFromTop {
            from {
                transform: translateY(-100px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        @keyframes slideInFromBottom {
            from {
                transform: translateY(100px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }
    </style>
</head>
<body>
    <%@ include file="navbar.jsp" %>

    <main>
        <section class="hero">
            <div class="hero-content">
                <img src="images/logokakikitar.png" alt="KAKIKITAR Logo" class="hero-logo">
                <h1>Welcome to KAKIKITAR</h1>
                <p>Your one-stop platform for buying and selling recycled waste and products.</p>
                <button class="primary-button" onclick="location.href='howtorecycle.jsp'">Get Started</button>
            </div>
        </section>

        <section class="features">
            <div class="feature">
                <h2>Explore Products</h2>
                <p>Discover unique, eco-friendly items and upcycled creations.</p>
                <a href="explore.jsp" class="feature-link">Browse Now</a>
            </div>
            <div class="feature">
                <h2>Sell Your Waste</h2>
                <p>Turn waste into wealth by connecting with buyers who value sustainability.</p>
                <a href="sell.jsp" class="feature-link">Start Selling</a>
            </div>
            <div class="feature">
                <h2>Eco Tips</h2>
                <p>Learn how to live a more sustainable life with our expert tips.</p>
                <a href="howtorecycle.jsp" class="feature-link">Learn More</a>
            </div>
        </section>
    </main>

    <%@ include file="footer.jsp" %>
</body>
</html>
