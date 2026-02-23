<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>KAKIKITAR - Explore</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/logokakikitar.png" />
    <!-- Favfont-->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
	
	<style>
    	body {
            margin: 0;
            background-color: #f4f4f9;
            font-family: 'Poppins', sans-serif;
            background: url('images/download.png') no-repeat center center fixed;
            backdrop-filter: blur(5px);
            background-size: cover;
        }
        
        h2 { 
            font-weight: bold;
            color: #333;
            text-align: center;
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding-bottom: 50px;
        }
        
        .grid-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
            margin-top: 50px;
        }
        
        .grid-item {
            border: 1px solid #ddd;
            padding: 15px;
            border-radius: 10px;
            text-align: center;
            background-color: #fff;
            transition: transform 0.2s, box-shadow 0.2s;
            box-shadow: 0px 2px 6px rgba(0, 0, 0, 0.1);
        }
        
        .grid-item:hover {
            transform: translateY(-5px);
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.2);
        }
        
        .grid-item img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
        }
        
        .grid-item h5 {
            margin: 10px 0 5px 0;
            font-size: 20px;
            font-weight: bold;
            color: #007bff;
        }
        
        .grid-item p {
            margin: 0 0 10px 0;
            font-size: 14px;
            color: #555;
        }
        
        .grid-item .btn {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 14px;
            transition: background-color 0.3s;
        }
        
        .grid-item .btn:hover {
            background-color: #218838;
        }
        
        .header {
            background-color: white;
            padding: 15px 0;
            border-bottom: 1px solid #ddd;
            box-shadow: 0px 2px 6px rgba(0, 0, 0, 0.1);
        }
        
        .header form {
            display: flex;
            justify-content: center;
            gap: 10px;
        }
        
        .header input {
            width: 50%;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 10px;
        }
        
        .header button {
            border: none;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        
        .header button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <jsp:include page="navbar.jsp" />

    <%-- Check for success or failure parameters in the URL --%>
    <%
        String success = request.getParameter("success");
        if ("true".equals(success)) {
    %>
        <script>
            alert("Purchase successful!");
        </script>
    <%
        } else if ("false".equals(success)) {
    %>
        <script>
            alert("Purchase failed. Please try again.");
        </script>
    <%
        }
    %>

    <div class="header">
        <div class="container">
            <h2 class="text-center">Explore Waste Items</h2>
            <form action="ExploreServlet" method="get">
                <input type="text" name="query" placeholder="Search by waste name..." class="form-control">
                <button type="submit">Search</button>
            </form>
        </div>
    </div>

    <div class="container">
        <div class="grid-container">
            <%-- Fetch items from the database and display them here --%>
            <%
                java.sql.Connection conn = null;
                java.sql.PreparedStatement stmt = null;
                java.sql.ResultSet rs = null;
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/nopaltest?useSSL=false", "root", "root");
                    String query = "SELECT * FROM WasteListings";
                    String searchQuery = request.getParameter("query");
                    if (searchQuery != null && !searchQuery.trim().isEmpty()) {
                        query += " WHERE name LIKE ?";
                        stmt = conn.prepareStatement(query);
                        stmt.setString(1, "%" + searchQuery + "%");
                    } else {
                        stmt = conn.prepareStatement(query);
                    }
                    rs = stmt.executeQuery();
                    while (rs.next()) {
                        String id = rs.getString("id");
                        String name = rs.getString("name");
                        String imagePath = rs.getString("image_path");
                        String description = rs.getString("description");
                        String price = rs.getString("price");
                        String weight = rs.getString("weight");
            %>
                        <div class="grid-item">
                            <img src="<%= imagePath %>" alt="<%= name %>">
                            <h5><%= name %></h5>
                            <p>Price: RM <%= price %></p>
                            <p>Weight: <%= weight %> kg</p>
                            <p><%= description %></p>
                            <form action="PurchaseServlet" method="post">
                                <input type="hidden" name="wasteId" value="<%= id %>">
                                <button type="submit" class="btn">Buy Now</button>
                            </form>
                        </div>
            <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    if (rs != null) rs.close();
                    if (stmt != null) stmt.close();
                    if (conn != null) conn.close();
                }
            %>
        </div>
    </div>
    
    <%@ include file="footer.jsp" %>
</body>
</html>
