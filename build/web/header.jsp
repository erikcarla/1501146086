<%-- 
    Document   : header
    Created on : Mar 31, 2014, 11:53:11 AM
    Author     : Erik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body{
                margin-left:0px;
                margin-right:-8px;
                background-color:white;
                color:black;
                text-align:center;
                margin-bottom:0px;
            }
            #top{
                width:100%;
                height:80px;		
                float:left;
                font:bold;
            }
            #menutop{
                font-size:20px;
                color:white;
                width:100%;
                margin-top:-8px;
                margin-right:10px;
                background-color:#de0101;
                z-index:999px;
                position:fixed;
            }
            #logo{
                font-size:26px;
                color:#0CF;

            }
            #menu{
                padding-top:6px;
                padding-bottom:6px;
                margin-left:10px;
            }
            #menu a{
                text-decoration:none;
                color:#d6d6d6;
                padding:20px;
                font:bold;
            }
            #menu a:hover{
                color:white;
                -webkit-border-radius: 10px;
                border-radius: 10px;
            }
            #mid{
                background:url(images/blue_light__5_1600x9001.jpg);
                background-size:cover;
                height:300px;
                margin-top:50px;
                width:100%;
            }
        </style>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>

    <body>
        <div id="top">
            <div id="menutop">
                <!--<table id="menu">
                    <tr>
                        <td style="width:250px;"><span id="logo"><center><strong><blink>Bluelight</blink><br/>OnlineShop</strong></center></span></td>
                        <td><a href="home.jsp">Home</a></td>
                        <td><a href="password.jsp">Change Password</a></td>
                        <td><a href="product.jsp">Product</a></td>
                        <td><a href="testimonial.jsp">Testimonial</a></td>
                        <td><a href="services.jsp">Services</a></td>
                        <td><a href="home.jsp">Logout</a></td>
                    </tr>
                </table> 
                <table id="menu">
                    <tr>
                        <td style="width:250px;"><span id="logo"><center><strong><blink>Bluelight</blink><br/>OnlineShop</strong></center></span></td>
                        <td><a href="home.jsp">Home</a></td>
                        <td><a href="password.jsp">Change Password</a></td>
                        <td><a href="product.jsp">Product</a></td>
                        <td><a href="testimonial.jsp">Testimonial</a></td>
                        <td><a href="services.jsp">Services</a></td>               
                        <td><a href="home.jsp">Logout</a></td>
                    </tr>
                </table> -->
                <table id="menu">
                    <tr>
                        <td style="width:220px;background:#ff9227;-webkit-border-radius: 10px;
                            -moz-border-radius: 10px;
                            border-radius: 10px;"><span id="logo"><strong><span style="color:red;">Pizza</span><br/><span style="color:green;">Grazie Delivery</span></strong></span></td>
                        <td><a href="index.jsp">Home</a></td>
                        <td><a href="menu.jsp">Menu</a></td>
                    </tr>
                </table> 
            </div>
            <div id="mid"></div>
        </div>
    </body>
</html>
