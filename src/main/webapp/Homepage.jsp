<%-- 
    Document   : Homepage
    Created on : 24-Aug-2024, 10:24:43 am
    Author     : Chirag Badani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Jio Dhan Dhana Dhan</title>
        <link rel="icon" href="${pageContext.request.contextPath}/Images/Jio.jpg">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/Homepage.css">
    </head>
    <body>
        <div class="navbar">
            <a href="Homepage.jsp">
                <img src="${pageContext.request.contextPath}/Images/Jio.jpg" width="60px" height="60px" class="logo">
            </a>&emsp;&emsp;
            <ul><b>
                <li><a href="Mobile.jsp">Mobile</a></li>
                <li><a href="True5G.html">True 5G</a></li>
                <li><a href="JioFiber.jsp">Jio Fiber</a></li>
                <li><a href="AirFiber Us.html">Air Fiber</a></li>
                <li><a href="Business.html">Business</a></li>
                <li><a href="Devices.html">Devices</a></li>
                <li><a href="Apps.html">Apps</a></li>
                <li><a href="Support.html">Support</a></li>
                </b>
            </ul>
            <img src="${pageContext.request.contextPath}/Images/Search.png" width="60px" height="60px" class="Search">
            <img src="${pageContext.request.contextPath}/Images/Login.png" width="60px" height="60px" class="Login">
        </div>

        <div class="slideshow-container">
            <div class="mySlides fade">
                <img src="${pageContext.request.contextPath}/Images/Entertainment levelled up.png" style="width:100%; height:500px; position: relative; cursor: pointer;">
            </div>
            <div class="mySlides fade">
                <img src="${pageContext.request.contextPath}/Images/Recharge Once.png" style="width:100%; height:500px; position: relative; cursor: pointer;">
            </div>
            <div class="mySlides fade">
                <img src="${pageContext.request.contextPath}/Images/JioPhone Prima.png" style="width:100%; height:500px; position: relative; cursor: pointer;">
            </div>
        </div>
        <br>
        <div style="text-align:center">
            <span class="dot"></span> 
            <span class="dot"></span> 
            <span class="dot"></span> 
        </div>

        <div class="BG">
            <br><br>
            <div class="Boxy">
                <form action="Recharge.jsp">
                    <div class="input2">
                        &emsp;
                        <input type="radio" id="Recharge" name="PayBill" value="Recharge">
                        <label>Recharge</label>
                        &emsp;
                        <input type="radio" id="PayBill" name="PayBill" value="PayBill">
                        <label>Pay Bill</label><br><br><br>
                    </div>&emsp;
                    <label class="Chotu">Jio Mobile Number</label>
                    <br><input type="text" class="JioMobNum" name="nm">
                    <button class="Recharge"><b>Recharge</b></button>
                    <br><br><br>
                    <div class="percent">
                        <p style="font-size: 18px;">Recharge with a ₹2999 plan 
                            for a year 
                            full of digital 
                            delights.</p>
                    </div>
                </form>
            </div>
            <br><br><br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
            <button class="GetJioAirFiber"><b>Get JioAirFiber</b></button>
            <button class="GetJioSim"><b>Get Jio Sim</b></button>
            <button class="GetJioFiber"><b>Get Jio Fiber</b></button>
            <button class="PortToJio"><b>Port To Jio</b></button>
        </div>

        <br><br><br><br><br>
        <div class="bigthings">
            <p><b>Discover the next big things</b></p>
            <br>
            <img src="${pageContext.request.contextPath}/Images/Jio True 5G.png" height="600px" style="cursor: pointer;">
            <img src="${pageContext.request.contextPath}/Images/Available Across Towns.png" height="600px" style="cursor: pointer;">
            <br><br>
            <input type="submit" value="Check Availability" class="G5Button">                    
            <input type="submit" value="Know More" class="G6Button">
            <p><b>Connecting Bharat with JioBharat</b></p>
            <br>
            <video controls>
                <source src="${pageContext.request.contextPath}/Videos/Jio Bharat.mp4" type="video/mp4">
            </video><br>
            <button><b>Buy Now</b></button>
            <br><br>
            <p><b>Explore the digital world with Jio</b></p>
            <p style="font-size: 18px; color: rgb(97, 104, 104);">
                Exciting shopping deals, 
                a variety of entertainment and
                seamless digital experience.
            </p><br>
            <div class="i1">
                <input type="submit" value="Shop Now" class="G7Button">
            </div>
            <br><br>&emsp;&emsp;&nbsp;
            <div class="i2">
                <input type="submit" value="Get Jio Saavn" class="G8Button">
            </div>
            <div class="i3">
                <input type="submit" value="Get Jio Cinema" class="G9Button">
            </div>
            <div class="i4">
                <input type="submit" value="Shop Now" class="G10Button">
            </div>
            <div class="i5">
                <input type="submit" value="Try Jio Games" class="G11Button">
            </div>
            <div class="i6">
                <input type="submit" value="Explore Now" class="G12Button">
            </div>
        </div>

        <div class="BG">
            <p><b><strong>Get Bestsellers at best prices</strong></b></p>
            <br><br>
            <div class="i7">
                <input type="submit" value="View All Devices" class="G13Button">
            </div>
            <div class="i8">
                <input type="submit" value="Buy Now" class="G13Button">
            </div>
            <div class="i9">
                <input type="submit" value="Buy Now" class="G13Button">
            </div>
            <div class="i10">
                <input type="submit" value="Buy Now" class="G13Button">
            </div>
        </div>

        <div class="Other-BG">
            <div class="i11">
                <input type="submit" value="View Job Openings" class="G14Button">
            </div>
            <div class="i12">
                <input type="submit" value="View All Jio Stores" class="G15Button">
            </div>
            <br><br>
        </div>

        <br><br><br><br>
        &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
        <div class="i13">
            <input type="submit" value="Explore Jio Business style" class="G16Button">
        </div>

        <br><br><br><br>
        <div class="Bluee">
                    <br><br><br><br><br><br>
                    <h1><b>Need guidance?</b></h1>
                    <br><br>
                    <h5>We would love to help you.</h5>
                    <br><br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                    <button class="buttonn"><b>Support</b></button>
                    <button class="buttonn"><b>Chat With Us</b></button>
                    <button class="buttonn"><b>Call Us</b></button>
                    <button class="buttonn"><b>Find A Store</b></button>
                </div>

        <br><br><br><br><br>
        <footer>
    <div class="footer-container">
        <div class="footer-content">
            <p>&copy; 2024 Jio. All rights reserved.</p>
            <div class="footer-links">
                <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
            </div>
        </div>
    </div>
</footer>



        <script>
            let slideIndex = 0;
            showSlides();
            
            function showSlides() {
                let i;
                let slides = document.getElementsByClassName("mySlides");
                let dots = document.getElementsByClassName("dot");
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";  
                }
                slideIndex++;
                if (slideIndex > slides.length) {slideIndex = 1}    
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex-1].style.display = "block";  
                dots[slideIndex-1].className += " active";
                setTimeout(showSlides, 2000); // Change image every 2 seconds
            }
        </script>
    </body>
</html>
