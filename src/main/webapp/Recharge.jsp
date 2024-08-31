<%-- 
    Document   : Recharge
    Created on : 29-Aug-2024, 8:08:46 am
    Author     : Chirag Badani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <link rel="icon" href="${pageContext.request.contextPath}/Images/Jio.jpg">
            <style>
        /* Reset some default styles */
  
        footer {
    background-color: #f8f8f8;
    padding: 20px 0;
    text-align: center;
    border-top: 1px solid #e0e0e0;
    position: relative;
    bottom: 0;
    width: 100%;
    
}

.footer-container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
}

.footer-content {
    display: flex;
    flex-direction: column;
    align-items: center;
}

.footer-content p {
    margin: 0;
    font-size: 14px;
    color: #333;
}

.footer-links {
    margin-top: 10px;
}

.footer-links a {
    color: #007bff;
    text-decoration: none;
    margin: 0 10px;
}

.footer-links a:hover {
    text-decoration: underline;
}

        body,
        h1,
        h2,
        p,
        button,
        img {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            color: #333;
            background-color: #f4f4f4;
        }

        header {
            background: #0078d4;
            color: #fff;
            padding: 10px 0;
            width: 100%;
        }

        header .container {
            width: 80%;
            margin: 0 auto;
            text-align: center;
        }

        header h1 {
            font-size: 1.8em;
            /* Reduced font size for header */
        }

        main {
            padding: 20px;
            width: 80%;
            margin: 0 auto;
            /* Centered main content */
        }

        .plans {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
            /* Reduced gap between plan boxes */
            justify-content: center;
        }

        .plan-box {
            background: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 0 8px rgba(0, 0, 0, 0.1);
            padding: 15px;
            /* Reduced padding */
            width: 200px;
            /* Reduced width */
            text-align: center;
            position: relative;
        }

        .plan-box .plan-logo {
            width: 60px;
            /* Reduced logo size */
            height: auto;
            margin-bottom: 10px;
        }

        .plan-box h3 {
            font-size: 1.2em;
            /* Slightly smaller font size for plan titles */
            margin-bottom: 5px;
        }

        .plan-box .price {
            font-size: 1em;
            /* Reduced font size for price */
            margin-bottom: 5px;
            color: #0078d4;
        }

        .plan-box p {
            font-size: 0.9em;
            /* Reduced font size for plan details */
            margin-bottom: 5px;
        }

        .extra-benefits {
            margin: 10px 0;
            /* Reduced margin for extra benefits */
            display: flex;
            justify-content: center;
            gap: 8px;
            /* Reduced gap between benefit icons */
        }

        .extra-benefits .benefit-logo {
            width: 40px;
            /* Reduced size of benefit logos */
            height: 40px;
            border-radius: 50%;
            object-fit: contain;
        }

        .plan-box button {
            background: #0078d4;
            color: #fff;
            border: none;
            padding: 8px;
            /* Reduced padding for the button */
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 0.9em;
            /* Reduced font size for button text */
        }

        .plan-box button:hover {
            background: #005a9e;
        }

        
    </style>

        
    </head>
    <body>
         <header>
        <div class="container">
            <h1>Recharge Plans</h1>
        </div>
    </header>
<%
    String number = request.getParameter("nm");
%>
    <main>
        <section class="plans">
            <div class="plan-box">
                <form action="${pageContext.request.contextPath}/RechargeSer" method="POST">
                <img src="${pageContext.request.contextPath}/Images/jIO.png" alt="Jio Logo" class="plan-logo">
                <h3>Plan 1</h3>
                <p class="price">Price: ₹199</p>
                <p>Data: 3GB/day</p>
                <p>Validity: 84 Days</p>
                <div class="extra-benefits">
                    <img src="https://d3t3ozftmdmh3i.cloudfront.net/staging/podcast_uploaded_nologo/360773/360773-1520262091652-fa603e15cdcd2.jpg"
                        alt="Netflix" class="benefit-logo">
                    <img src="${pageContext.request.contextPath}/Images/Primee.png" alt="Prime Video" class="benefit-logo">
                </div>
                <button type="submit">Select Plan</button>
                </form>
            </div>

            <div class="plan-box">
                <img src="${pageContext.request.contextPath}/Images/jIO.png" alt="Jio Logo" class="plan-logo">
                <h3>Plan 2</h3>
                <p class="price">Price: ₹299</p>
                <p>Data: 3GB/day</p>
                <p>Validity: 28 Days</p>
                <div class="extra-benefits">
                    <img src="https://d3t3ozftmdmh3i.cloudfront.net/staging/podcast_uploaded_nologo/360773/360773-1520262091652-fa603e15cdcd2.jpg"
                        alt="Netflix" class="benefit-logo">
                    <img src="${pageContext.request.contextPath}/Images/Primee.png" alt="Prime Video" class="benefit-logo">
                </div>
                <button>Select Plan</button>
            </div>

            <div class="plan-box">
                <img src="${pageContext.request.contextPath}/Images/jIO.png" alt="Jio Logo" class="plan-logo">
                <h3>Plan 3</h3>
                <p class="price">Price: ₹599</p>
                <p>Data: 1.5GB/day</p>
                <p>Validity: 84 Days</p>
                <div class="extra-benefits">
                    <img src="https://d3t3ozftmdmh3i.cloudfront.net/staging/podcast_uploaded_nologo/360773/360773-1520262091652-fa603e15cdcd2.jpg"
                        alt="Netflix" class="benefit-logo">
                    <img src="${pageContext.request.contextPath}/Images/Primee.png" alt="Prime Video" class="benefit-logo">
                </div>
                <button>Select Plan</button>
            </div>

            <div class="plan-box">
                <img src="${pageContext.request.contextPath}/Images/jIO.png" alt="Jio Logo" class="plan-logo">
                <h3>Plan 4</h3>
                <p class="price">Price: ₹999</p>
                <p>Data: 2GB/day</p>
                <p>Validity: 365 Days</p>
                <div class="extra-benefits">
                    <img src="https://d3t3ozftmdmh3i.cloudfront.net/staging/podcast_uploaded_nologo/360773/360773-1520262091652-fa603e15cdcd2.jpg"
                        alt="Netflix" class="benefit-logo">
                    <img src="${pageContext.request.contextPath}/Images/Primee.png" alt="Prime Video" class="benefit-logo">
                </div>
                <button>Select Plan</button>
            </div>

            <!-- New Plans -->
            <div class="plan-box">
                <img src="${pageContext.request.contextPath}/Images/jIO.png" alt="Jio Logo" class="plan-logo">
                <h3>Plan 5</h3>
                <p class="price">Price: ₹149</p>
                <p>Data: 1GB/day</p>
                <p>Validity: 21 Days</p>
                <div class="extra-benefits">
                    <img src="https://d3t3ozftmdmh3i.cloudfront.net/staging/podcast_uploaded_nologo/360773/360773-1520262091652-fa603e15cdcd2.jpg"
                        alt="Netflix" class="benefit-logo">
                </div>
                <button>Select Plan</button>
            </div>

            <div class="plan-box">
                <img src="${pageContext.request.contextPath}/Images/jIO.png" alt="Jio Logo" class="plan-logo">
                <h3>Plan 6</h3>
                <p class="price">Price: ₹349</p>
                <p>Data: 4GB/day</p>
                <p>Validity: 30 Days</p>
                <div class="extra-benefits">
                    <img src="${pageContext.request.contextPath}/Images/Primee.png" alt="Prime Video" class="benefit-logo">
                </div>
                <button>Select Plan</button>
            </div>

            <div class="plan-box">
                <img src="${pageContext.request.contextPath}/Images/jIO.png" alt="Jio Logo" class="plan-logo">
                <h3>Plan 7</h3>
                <p class="price">Price: ₹699</p>
                <p>Data: 2GB/day</p>
                <p>Validity: 56 Days</p>
                <div class="extra-benefits">
                    <img src="https://d3t3ozftmdmh3i.cloudfront.net/staging/podcast_uploaded_nologo/360773/360773-1520262091652-fa603e15cdcd2.jpg"
                        alt="Netflix" class="benefit-logo">
                    <img src="${pageContext.request.contextPath}/Images/Primee.png" alt="Prime Video" class="benefit-logo">
                </div>
                <button>Select Plan</button>
            </div>

            <div class="plan-box">
                <img src="${pageContext.request.contextPath}/Images/jIO.png" alt="Jio Logo" class="plan-logo">
                <h3>Plan 8</h3>
                <p class="price">Price: ₹899</p>
                <p>Data: 2.5GB/day</p>
                <p>Validity: 84 Days</p>
                <div class="extra-benefits">
                    <img src="https://d3t3ozftmdmh3i.cloudfront.net/staging/podcast_uploaded_nologo/360773/360773-1520262091652-fa603e15cdcd2.jpg"
                        alt="Netflix" class="benefit-logo">
                    <img src="${pageContext.request.contextPath}/Images/Primee.png" alt="Prime Video" class="benefit-logo">
                </div>
                <button>Select Plan</button>
            </div>

            <div class="plan-box">
                <img src="${pageContext.request.contextPath}/Images/jIO.png" alt="Jio Logo" class="plan-logo">
                <h3>Plan 9</h3>
                <p class="price">Price: ₹1199</p>
                <p>Data: 3GB/day</p>
                <p>Validity: 365 Days</p>
                <div class="extra-benefits">
                    <img src="https://d3t3ozftmdmh3i.cloudfront.net/staging/podcast_uploaded_nologo/360773/360773-1520262091652-fa603e15cdcd2.jpg"
                        alt="Netflix" class="benefit-logo">
                    <img src="${pageContext.request.contextPath}/Images/Primee.png" alt="Prime Video" class="benefit-logo">
                </div>
                <button>Select Plan</button>
            </div>

            <div class="plan-box">
                <img src="${pageContext.request.contextPath}/Images/jIO.png" alt="Jio Logo" class="plan-logo">
                <h3>Plan 10</h3>
                <p class="price">Price: ₹499</p>
                <p>Data: 5GB/day</p>
                <p>Validity: 56 Days</p>
                <div class="extra-benefits">
                    <img src="https://d3t3ozftmdmh3i.cloudfront.net/staging/podcast_uploaded_nologo/360773/360773-1520262091652-fa603e15cdcd2.jpg"
                        alt="Netflix" class="benefit-logo">
                </div>
                <button>Select Plan</button>
            </div>

            <div class="plan-box">
                <img src="${pageContext.request.contextPath}/Images/jIO.png" alt="Jio Logo" class="plan-logo">
                <h3>Plan 11</h3>
                <p class="price">Price: ₹799</p>
                <p>Data: 3GB/day</p>
                <p>Validity: 84 Days</p>
                <div class="extra-benefits">
                    <img src="${pageContext.request.contextPath}/Images/Primee.png" alt="Prime Video" class="benefit-logo">
                </div>
                <button>Select Plan</button>
            </div>

            <div class="plan-box">
                <img src="${pageContext.request.contextPath}/Images/jIO.png" alt="Jio Logo" class="plan-logo">
                <h3>Plan 12</h3>
                <p class="price">Price: ₹1299</p>
                <p>Data: 4GB/day</p>
                <p>Validity: 84 Days</p>
                <div class="extra-benefits">
                    <img src="https://d3t3ozftmdmh3i.cloudfront.net/staging/podcast_uploaded_nologo/360773/360773-1520262091652-fa603e15cdcd2.jpg"
                        alt="Netflix" class="benefit-logo">
                    <img src="${pageContext.request.contextPath}/Images/Primee.png" alt="Prime Video" class="benefit-logo">
                </div>
                <button>Select Plan</button>
            </div>

                <div class="plan-box" style="margin-bottom: 50px;">
                <img src="${pageContext.request.contextPath}/Images/jIO.png" alt="Jio Logo" class="plan-logo">
                <h3>Plan 13</h3>
                <p class="price">Price: ₹1499</p>
                <p>Data: 5GB/day</p>
                <p>Validity: 365 Days</p>
                <div class="extra-benefits">
                    <img src="https://d3t3ozftmdmh3i.cloudfront.net/staging/podcast_uploaded_nologo/360773/360773-1520262091652-fa603e15cdcd2.jpg"
                        alt="Netflix" class="benefit-logo">
                    <img src="${pageContext.request.contextPath}/Images/Primee.png" alt="Prime Video" class="benefit-logo">
                </div>
                <button>Select Plan</button>
            </div>
        </section>
    </main>

     <footer>
    <div class="footer-container">
        <div class="footer-content">
            <p>&copy; 2024 Jio. All rights reserved.</p>
            <div class="footer-links">
                <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
            </div>
        </div>
    </div>
</footer

    </body>
</html>
