<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

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
    <Script>
        function Login()
        {
            
            alert("Admin,You Have Successfully Logged In...")
        }
        function Logout()
        {
            alert("Admin,You Have Successfully logged out...")
        }
    </Script>
</head>
<body onload="Login()">
    <!--header section-->
    <header class="header">
        <a href="#" class="logo"><i class="fa fa-shopping-basket" aria-hidden="true"></i> Grocery</a>

        <!--navigation bar-->    
        <nav class="navbar">
        <a href="#products">PRODUCTS</a>
        <a href="#review">REVIEW</a>
        </nav>
        <div class="icons">
            <form action="Logout.jsp" method="post">
                <input type="submit" onclick="Logout()" name="submit" value="logout" style="height: 4rem;width: 4em;font-size: medium;margin-right:-4rem;cursor: pointer;">
            </form>   
        </div>
    </header>
    
    <!--banner section-->
    <section class="home" id="home">
        <div class="content">
            <h3>Fresh And <span>Organic</span> Products For You</h3>
            <p>This Website Is Designed By Cyber Warriors YouTube Channel So That Everyone Can Learn In An Easy Way That How To Create A Website.</p>

        </div>
    </section>
    
    <!--our products-->
    <section class="products" id="products">
        <h1 class="heading"> Our <span>Products</span></h1>

        <form action="price.jsp" method="post">
        <div class="product-container">
                <div class="box">
                    <img src="./IMAGES/product-1.png" alt="">
                    <h1>Fresh Orange</h1>
                    <div class="price"><input type="number" class="input-box" name="price1" placeholder="change price"></div>
                    <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half"></i>
                    </div>
                    
                </div>

                <div class="box">
                    <img src="./IMAGES/product-2.png" alt="">
                    <h1>Onion</h1>
                    <div class="price"><input type="number" class="input-box" name="price2" placeholder="change price"></div>
                    <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half"></i>
                    </div>
                    
                </div>

                <div class="box">
                    <img src="./IMAGES/product-3.png" alt="">
                    <h1>Dragron Fruit</h1>
                    <div class="price"><input type="number" class="input-box" name="price3" placeholder="change price"></div>
                        <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half"></i>
                    </div>
                    
                </div>
        </div>
        <div class="product-container">
                <div class="box">
                    <img src="./IMAGES/product-4.png" alt="">
                    <h1>Cabbage</h1>
                    <div class="price"><input type="number" class="input-box" name="price4" placeholder="change price"></div>
                    <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half"></i>
                    </div>
                    
                </div>

                <div class="box">
                    <img src="./IMAGES/product-5.png" alt="">
                    <h1>Potato</h1>
                    <div class="price"><input type="number" class="input-box" name="price5" placeholder="change price"></div>
                    <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half"></i>
                    </div>
                  
                </div>

                <div class="box">
                    <img src="./IMAGES/product-6.png" alt="">
                    <h1>Avocado</h1>
                    <div class="price"><input type="number" name="price6" placeholder="change price" class="input-box"></div>
                    <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half"></i>
                    </div>
                    
                </div>
            </div>
            <input type="submit" name="Update" value="Update" class="btn">
        </section>
        
    </form>


    <!-- Feedbacks-->
    
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



<section class="footer">
    <div class="credit">
        Creadited By <span>Avadh Solanki | Meet Sanghani</span>
    </div>
    </section>
    <!--code for javascript-->
    <script src="JAVA_SCRIPT/script.js"></script>
</body>
</html>