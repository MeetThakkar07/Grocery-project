<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%

    String namel = request.getParameter("temp1");
    String emaill = request.getParameter("temp2");
    String cnol = request.getParameter("temp3");
    String price1 = "";
    String price2 = "";
    String price3 = "";
    String price4 = "";
    String price5 = "";
    String price6 = "";
try
{
    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grocery","root","");
    Statement st = cn.createStatement();
    ResultSet rs= st.executeQuery("SELECT * FROM Prices");
    while(rs.next())
    {
        price1=rs.getString(1);
        price2=rs.getString(2);
        price3=rs.getString(3);
        price4=rs.getString(4);
        price5=rs.getString(5);
        price6=rs.getString(6);
    }
}
catch(Exception e)
{
    out.println(e);
}
    %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>GROCERY STORE</title>

    <link rel="icon" type="IMAGES/icon" href="IMAGES/favicon.PNG">

    <!--code for css-->
    <link rel="stylesheet" href="CSS/style.css">
    <!--code for font awesome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script>
        function Login()
        { 
            alert("User , You Have Successfully Logged In...")
        }
    </script>
</head>
<body onload="login()">
    <!--header section-->
    <header class="header">
        <a href="#" class="logo"><i class="fa fa-shopping-basket" aria-hidden="true"></i> Grocery</a>

        <!--navigation bar-->    
        <nav class="navbar">
        <a href="#home">HOME</a>
        <a href="#features">FEATURES</a>
        <a href="#products">PRODUCTS</a>
        <a href="#categories">CATEGORIES</a>
        <a href="#review">REVIEW</a>
        </nav>
        <div class="icons">
            <div class="fa fa-bars" id="menu-btn"></div>
            <div class="fa fa-search" id="search-btn"></div>
            <div class="fa fa-shopping-cart" id="cart-btn"></div>
            <div class="fa fa-user" id="login-btn"></div>
        </div>

       <!--search bar-->
       
       <form class="search-form">
        <input type="text" name="" id="search-box" placeholder="Search here..">
        <label for="search-box" class="fa fa-search"></label>
       </form>


    <!--cart-->
    <div class="shopping-cart">
        <div class="box">
            <i class="fa fa-trash"></i>
            <img src="IMAGES/cart-img-1.png">
            <div class="content">
                <h3>Watermelon</h3>
                <span class="pirce">99/-</span>
                <span class="quantity">Qty:1</span>
            </div>
        </div>

        
        <div class="box">
            <i class="fa fa-trash"></i>
            <img src="IMAGES/cart-img-2.png">
            <div class="content">
                <h3>Onion</h3>
                <span class="pirce">39/-</span>
                <span class="quantity">Qty: 1 KG</span>
            </div>
        </div>
  
        <div class="box">
            <i class="fa fa-trash"></i>
            <img src="IMAGES/cart-img-3.png">
            <div class="content">
                <h3>Paneer</h3>
                <span class="pirce">299/-</span>
                <span class="quantity">Qty:1KG</span>
            </div>
        </div> 

        <div class="total">Total :437/-</div>
        <a href="#" class="btn">CheckOut</a>
    </div>

    <form method="get" class="login-form">
        <h3>Profile</h3>
        <p>Name :<% out.println("<output  value='"+namel+"'>"+namel+"</output>"); %></p>
        <p>Email : <% out.println("<output  value='"+emaill+"'>"+emaill+"</output>"); %></p>
        <p>Contact NO : <% out.println("<output value='"+cnol+"'>"+cnol+"</output>"); %> </p>
        
        <div id="create-btn" class="btn"><a href="index.jsp"><p>LOGOUT</p></a></div>
    </form>

    <!--<div class="popup" id="popup">
        <img src="IMAGES/sucess.png">
        <h1>Login Sucesfully..</h1>
        <button type="button" class="btn" onclick="closepopup()">OK</button>
    </div>-->

    </header>

    <!--banner section-->
    <section class="home" id="home">
        <div class="content">
            <h3>Fresh And <span>Organic</span> Products For You</h3>
            <p>This Website Is Designed By Cyber Warriors YouTube Channel So That Everyone Can Learn In An Easy Way That How To Create A Website.</p>

            <a href="#" class="btn">
                SHOP NOW
            </a>
        </div>
    </section>

    <!--our features section -->
    <section class="features" id="features">
        <h1 class="heading"> Our <span>Features</span> </h1>
        
        <div class="box-container">
            <div class="box"><img src="./IMAGES/feature-img-1.png" alt="">
                <h3>Fresh And Organic</h3>
                <p>Lorem, Ipsum Dolor Sit Amet Consectetur adipisicing Elit. Deserunt, Earum!</p>

                <a href="#" class="btn">Read More</a>
            </div>
            
            <div class="box"><img src="./IMAGES/feature-img-2.png" alt="">
                <h3>1St Order free delivery</h3>
                <p>Lorem, Ipsum Dolor Sit Amet Consectetur adipisicing Elit. Deserunt, Earum!</p>

                <a href="#" class="btn">Read More</a>
            </div>

            <div class="box"><img src="./IMAGES/feature-img-3.png" alt="">
                <h3>Easy Payments</h3>
                <p>Lorem, Ipsum Dolor Sit Amet Consectetur adipisicing Elit. Deserunt, Earum!</p>

                <a href="#" class="btn">Read More</a>
            </div>
        </div>
    </section>

    <!--our products-->
    <section class="products" id="products">
        <h1 class="heading"> Our <span>Products</span></h1>

        <div class="product-container">
                <div class="box">
                    <img src="./IMAGES/product-1.png" alt="">
                    <h1>Fresh Orange</h1>
                    <div class="price"><%=price1%></div>
                    <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half"></i>
                    </div>
                    <a href="" class="btn">Add To Cart</a>
                </div>

                <div class="box">
                    <img src="./IMAGES/product-2.png" alt="">
                    <h1>Onion</h1>
                    <div class="price"><%=price2%></div>
                    <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half"></i>
                    </div>
                    <a href="" class="btn">Add To Cart</a>
                </div>

                <div class="box">
                    <img src="./IMAGES/product-3.png" alt="">
                    <h1>Dragron Fruit</h1>
                    <div class="price"><%=price3%></div>
                        <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half"></i>
                    </div>
                    <a href="" class="btn">Add To Cart</a>
                </div>
        </div>
        <div class="product-container">
                <div class="box">
                    <img src="./IMAGES/product-4.png" alt="">
                    <h1>Cabbage</h1>
                    <div class="price"><%=price4%></div>
                    <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half"></i>
                    </div>
                    <a href="" class="btn">Add To Cart</a>
                </div>

                <div class="box">
                    <img src="./IMAGES/product-5.png" alt="">
                    <h1>Potato</h1>
                    <div class="price"><%=price5%></div>
                    <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half"></i>
                    </div>
                    <a href="" class="btn">Add To Cart</a>
                </div>

                <div class="box">
                    <img src="./IMAGES/product-6.png" alt="">
                    <h1>Avocado</h1>
                    <div class="price"><%=price6%></div>
                    <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half"></i>
                    </div>
                    <a href="" class="btn">Add To Cart</a>
                </div>
        </div>
    </section>
    <!--our categories-->
    <section class="categories" id="categories">
        <h1 class="heading"> Product <span>Categories</span></h1>
        <div class="box-container">
            <div class="box">
                <img src="IMAGES/cat-1.png">
                <h3>Vegetables</h3>
                <p>Upto 8% Off</p>
                <a href="#" class="btn">Shop Now</a>
            </div>

            <div class="box">
                <img src="IMAGES/cat-2.png">
                <h3>Fresh Fruits</h3>
                <p>Upto 8% Off</p>
                <a href="#" class="btn">Shop Now</a>
            </div>

            <div class="box">
                <img src="IMAGES/cat-3.png">
                <h3>Mailk Products</h3>
                <p>Upto 8% Off</p>
                <a href="#" class="btn">Shop Now</a>
            </div>

            <div class="box">
                <img src="IMAGES/cat-4.png">
                <h3>Pulses Product</h3>
                <p>Upto 8% Off</p>
                <a href="#" class="btn">Shop Now</a>
            </div>
        </div>
    </section>


    <%@ page import="java.sql.*" %>
    <%
        String cmt = "";
        String name = "";
    try
    {
        Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grocery","root","");
        Statement st = cn.createStatement();
        ResultSet rs= st.executeQuery("SELECT * FROM feedback");
    %>   
    
    
    <!-- Reviews section-->
    <section class="reviews" id="review">
        <h1 class="heading"> Customer's <span>Reviews</span></h1>

        <div class="review-container">
           <%
            while(rs.next())
            {
                name=rs.getString(2);
                cmt=rs.getString(5);
                %>
                <div class="box">
                    <img src="./IMAGES/quote.png" alt="" width="10%" height="10% ">
                    <p><% out.println(cmt); %></p>
                    <h3><%=name%></h3> 
                </div>
                <%
            }
           
            
        }
        catch(Exception e){
            out.println(e);
        }
    
        %>
    </section>

    <!--Footer Section-->
    <section class="footer">
        <div class="box-container">
            <div class="box">
                <h3>GROCERY <i class="fa fa-shopping-basket"></i></h3>
                <p>Feel Free To Follow Us On Our Social Media Handlers All The Links Are Given Below.</p>

                <div class="media">
                    <a href="https://www.facebook.com/profile.php?id=100016861530227&sfnsn=wiwspmo&mibextid=RUbZ1f" class="fa fa-facebook"></a>
                    <a href="https://x.com/MEETGAM41751341?t=zw337LToudog9L6AEE7hrQ&s=09" class="fa fa-twitter"></a>
                    <a href="https://www.instagram.com/mr.avadh_solanki?igsh=MWplMXVybmRwaTU1aQ==" class="fa fa-instagram"></a>
                    <a href="https://www.linkedin.com/in/sanghani-meet-717676282?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app" class="fa fa-linkedin"></a>
                </div>
            </div>

            <div class="box">
                <h3>Contact Info</h3>

                <a href="#" class="links"><i class="fa fa-phone"></i> +91 8866942070</a>
                <a href="#" class="links"><i class="fa fa-phone"></i> +91 9512386656</a>
                <a href="#" class="links"><i class="fa fa-envelope"></i> avadhsolanki50@gmail.com</a>
                <a href="#" class="links"><i class="fa fa-map-marker"></i> Junagadh , Gujarat ,India , 362001</a>
            </div>

            <div class="box">
                <h3>Quick Links</h3>

                <a href="#home" class="links"><i class="fa fa-arrow-right"></i> HOME</a>
                <a href="#features" class="links"><i class="fa fa-arrow-right"></i> FEATURES</a>
                <a href="#products" class="links"><i class="fa fa-arrow-right"></i> PRODUCTS</a>
                <a href="#categories" class="links"><i class="fa fa-arrow-right"></i> CATEGORIES</a>
                <a href="#review" class="links"><i class="fa fa-arrow-right"></i> REVIEW</a>
            </div>
            <div class="box">
                <form action="feedback.jsp" method="post">
                    <h3>FEEDBACK</h3>
                    <input type="text" placeholder="Enter Your Full Name" name="name" class="txtbox"><br>
                    <input type="email" placeholder="Your Email" name="email"class="txtbox">
                    <p><input type="radio" name="gender" value="male" class="box"> Male <input type="radio" name="gender" value="female" class="box"> Female</p>
                    <textarea type="text" cols="27" rows="4" name="message" class="txtbox" placeholder="Give Your Feedback"></textarea><br>
                    <input type="submit" value="SUBMIT" class="btn">
                </form>
            </div>
        </div>

        
    <div class="credit">
        Creadited By <span>Avadh Solanki | Meet Sanghani</span>
    </div>
    </section>
    <!--code for javascript-->
    <script src="JAVA_SCRIPT/script.js"></script>
</body>
</html>