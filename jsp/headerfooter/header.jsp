<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>    
<!DOCTYPE html>
    <html lang="zxx" class="no-js">
    <head>
        <!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon-->
        <link rel="shortcut icon" href="img/fav.png">
        <!-- Author Meta -->
        <meta name="author" content="CodePixar">
        <!-- Meta Description -->
        <meta name="description" content="">
        <!-- Meta Keyword -->
        <meta name="keywords" content="">
        <!-- meta character set -->
        <meta charset="UTF-8">
        <!-- Site Title -->
        <title>Shop</title>

        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
            <!--
            CSS
            ============================================= -->
            <link rel="stylesheet" href="../css/linearicons.css">
            <link rel="stylesheet" href="../css/owl.carousel.css">            
            <link rel="stylesheet" href="../css/font-awesome.min.css">
            <link rel="stylesheet" href="../css/nice-select.css">
            <link rel="stylesheet" href="../css/ion.rangeSlider.css" />
            <link rel="stylesheet" href="../css/ion.rangeSlider.skinFlat.css" />
            <link rel="stylesheet" href="../css/bootstrap.css">
            <link rel="stylesheet" href="../css/main.css">
        </head>
        <body>

            <!-- Start Header Area -->
            <div id="undefined-sticky-wrapper" class="sticky-wrapper" style="height: 109px;">
            <header class="default-header">
                <div class="menutop-wrap">
                    <div class="menu-top container">
                        <div class="d-flex justify-content-between align-items-center">
                            <ul class="list">
                            <c:choose>
                            	<c:when test="${not empty sessionsProfile.getLogin()}">
                            		<li><a href="#">Hi ${sessionsProfile.getLogin()}</a></li>
                            		<li><a href="#">LOGOUT</li>
                            	</c:when>
                            	<c:otherwise>
                            	<li><a href="http://localhost:8080/CheckoutPro/jsp/login/login.jsp">LOGIN</li>
                            	<li><a href="#">REGISTER</li>
                            	</c:otherwise>
                            </c:choose>
                            </ul>
                        </div>
                    </div>                  
                </div>
                <nav class="navbar navbar-expand-lg navbar-light">
                    <div class="container">
                          <a class="navbar-brand" href="index.html">
                            <img src="../img/logo_cart.png" alt="">
                          </a>
                          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                          </button>
                          <div class="collapse navbar-collapse justify-content-end align-items-center" id="navbarSupportedContent">
                            <ul class="navbar-nav">
                                <li><a href="http://localhost:8080/CheckoutPro/jsp/home/index.jsp">Home</a></li>
                                <li><a href="http://localhost:8080/CheckoutPro/jsp/friendlist/friendList.jsp">Cart Members</a></li>
                                <li><a href="http://localhost:8080/CheckoutPro/jsp/sessions/viewSharedCarts.jsp">View Shared Carts</a>
</a></li>
                                <li><a href="http://localhost:8080/CheckoutPro/jsp/sessions/carts.jsp">My Cart</a></li>

                            </ul>
                          </div>                        
                    </div>
                </nav>
            </header>
            </div>
            <!-- End Header Area -->
            
            