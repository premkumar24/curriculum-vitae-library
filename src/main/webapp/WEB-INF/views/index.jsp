<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    <%@ taglib uri = "http://www.springframework.org/security/tags" prefix = "security" %>
    <%@ page isELIgnored="false" %>
     <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
   
   <%@ include file="navbar1.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">


<style type="text/css">
 body {
        
}

.navbar {
    z-index: 16;
    position: fixed;
    top: 0;
        left: 0;
    right: 0;
    width: 100%;
    -webkit-transition: all .2s ease;
    -o-transition: all .2s ease;
    transition: all .2s ease;
    height: 77px;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
    -webkit-box-orient: horizontal;
    -webkit-box-direction: normal;
    -ms-flex-direction: row;
    flex-direction: row;
    border-bottom: 1px solid transparent;
}
        .navbar span {
            position:relative;
            top:5px;
    background-image: url(https://goo.gl/NLUdLH);
    background-position: 0px 0px;
    height: 51px;
    width: 177px;
    display: inline-block;
    -webkit-transition: .3s cubic-bezier(0.18, 0.89, 0.32, 1.28);
    -o-transition: .3s cubic-bezier(0.18, 0.89, 0.32, 1.28);
    transition: .3s cubic-bezier(0.18, 0.89, 0.32, 1.28);
}
.navbar a i {
    position:relative;
    top:-10px;
    font-size: 45px;
    height: 43px;
    width: 43px;
    line-height: 42px;
    text-align: center;
    margin-right: 10px;
    border-radius: 6px;
    -webkit-transition: all .5s ease;
    -o-transition: all .5s ease;
    transition: all .5s ease;
}

.carousel-control-prev, .carousel-control-next{
    /*background: black;*/
    width: 4.5% !important;
    transition: opacity .2s ease-in;
}
.carousel-control-next-icon {
    background-image: url(https://image.flaticon.com/icons/svg/481/481146.svg) !important;
    transform: rotate(180deg);
}
.carousel-control-prev-icon {
    background-image: url(https://image.flaticon.com/icons/svg/481/481146.svg) !important;
}
.carousel-control-next-icon, .carousel-control-prev-icon {
    display: inline-block;
    width: 50px;
    height: 50px;
    background: transparent no-repeat center center;
    background-size: 100% 100%;
}
.carousel-control-next{right:-70px;}
.carousel-control-prev{left:-70px;}
.bisc {
    color: white;
    margin-right: 0px;
    background: -webkit-gradient(linear, right top, left bottom, from(#4c68d7), color-stop(#8a3ab9), color-stop(#cd486b), color-stop(#fb8750), to(#FF9800));
    background: -webkit-linear-gradient(right top, #4c68d7, #8a3ab9, #cd486b, #fb8750, #FF9800);
    background: -o-linear-gradient(right top, #4c68d7, #8a3ab9, #cd486b, #fb8750, #FF9800);
    background: linear-gradient(to left bottom, #4c68d7, #8a3ab9, #cd486b, #fb8750, #FF9800);
    -webkit-transform: rotate(360deg) scale(1.1);
    -ms-transform: rotate(360deg) scale(1.1);
    transform: rotate(360deg) scale(1.1);
}
        
      
        
        
      
        
        
        .card {
            position: relative;
            display: -ms-flexbox;
            display: flex;
            -ms-flex-direction: column;
            flex-direction: column;
          
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border: none;
           
        }
        
        .myback-img {
            display: flex;
            justify-content: center;
            height: 372px;
            overflow: hidden;
            object-fit: cover;
           
        }
        
        .myoverlay {
            position: absolute;
           
            height: 50%;
            width: 100%;
            top: 0;
        }
        
        .card-body {
            -ms-flex: 1 1 auto;
            flex: 1 1 auto;
            padding: 0;
        }
        
        .avatar-profile img {
            width: 90px;
            height: 90px;
            border-radius: 100%;
            overflow: hidden;
            opacity: 0.9;
            object-fit: cover;
            -o-object-fit: cover;
        }
        
        .borders {
            position: relative;
            border: 5px solid #fff;
            border-radius: 100%;
        }
        
        .borders:before {
            content: " ";
            position: absolute;
            z-index: -1;
            top: -10px;
            left: -10px;
            right: -10px;
            bottom: -10px;
            border-radius: 100%;
            background-image: linear-gradient(90deg, #FDA240, #C5087E), linear-gradient(90deg, #FDA240, #C5087E);
            background-position: 0 0px, 100% 100%;
            background-size: 100% 5px;
            border-left: 5px solid #FDA240;
            border-right: 5px solid #C5087E;
            padding: 10px 5px;
        }
        
        .profile-img {
            position: absolute;
            top: 41%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
        
        .profile-title {
            text-align: center;
            position: relative;
            top: -39px;
            margin-bottom: -26px;
        }
        
        .profile-title h3 {
            font-size: 18px;
            color: #fff;
            font-weight: bold;
            margin-bottom: 0;
        }
        
        a:hover {
            text-decoration: none !important;
        }
        /*--carousel css--*/
        
        @media (min-width: 768px) {
            /* show 3 items */
            .carousel-inner .active,
            .carousel-inner .active + .carousel-item,
            .carousel-inner .active + .carousel-item + .carousel-item,
            .carousel-inner .active + .carousel-item + .carousel-item + .carousel-item {
                display: block;
            }
            .carousel-inner .carousel-item.active:not(.carousel-item-right):not(.carousel-item-left),
            .carousel-inner .carousel-item.active:not(.carousel-item-right):not(.carousel-item-left) + .carousel-item,
            .carousel-inner .carousel-item.active:not(.carousel-item-right):not(.carousel-item-left) + .carousel-item + .carousel-item,
            .carousel-inner .carousel-item.active:not(.carousel-item-right):not(.carousel-item-left) + .carousel-item + .carousel-item + .carousel-item {
                transition: none;
            }
            .carousel-inner .carousel-item-next,
            .carousel-inner .carousel-item-prev {
                position: relative;
                transform: translate3d(0, 0, 0);
            }
            .carousel-inner .active.carousel-item + .carousel-item + .carousel-item + .carousel-item + .carousel-item {
                position: absolute;
                top: 0;
                right: -25%;
                z-index: -1;
                display: block;
                visibility: visible;
            }
            /* left or forward direction */
            .active.carousel-item-left + .carousel-item-next.carousel-item-left,
            .carousel-item-next.carousel-item-left + .carousel-item,
            .carousel-item-next.carousel-item-left + .carousel-item + .carousel-item,
            .carousel-item-next.carousel-item-left + .carousel-item + .carousel-item + .carousel-item,
            .carousel-item-next.carousel-item-left + .carousel-item + .carousel-item + .carousel-item + .carousel-item {
                position: relative;
                transform: translate3d(-100%, 0, 0);
                visibility: visible;
            }
            /* farthest right hidden item must be abso position for animations */
            .carousel-inner .carousel-item-prev.carousel-item-right {
                position: absolute;
                top: 0;
                left: 0;
                z-index: -1;
                display: block;
                visibility: visible;
            }
            /* right or prev direction */
            .active.carousel-item-right + .carousel-item-prev.carousel-item-right,
            .carousel-item-prev.carousel-item-right + .carousel-item,
            .carousel-item-prev.carousel-item-right + .carousel-item + .carousel-item,
            .carousel-item-prev.carousel-item-right + .carousel-item + .carousel-item + .carousel-item,
            .carousel-item-prev.carousel-item-right + .carousel-item + .carousel-item + .carousel-item + .carousel-item {
                position: relative;
                transform: translate3d(100%, 0, 0);
                visibility: visible;
                display: block;
                visibility: visible;
            }
        }
</style>
</head>
<title>CURRICULUM VITAE</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="resources/android-icon-96x96.png" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
 body {
    font-family: "Lato", sans-serif;
} 

.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidenav a:hover {
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>

<style>
.w3-sidebar a {font-family: "Roboto", sans-serif}
body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Montserrat", sans-serif;}
/* Full-width input fields */
input[type=text], input[type=password],input[type=email],input[type=number],input[type=radio] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 20%;
    border-radius: 20%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
  <style>
  /* Style the input field */
  #myInput {
    padding: 20px;
    background: #f1f1f1;
  }
  </style>
<body class="w3-content" style="max-width:2000px" >
<sql:query dataSource = "${snapshot}" var = "details">
       SELECT * FROM DETAILS ;
         </sql:query>


                      <!-- Sidebar/menu -->
                      
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
   
   
  <div class="w3-container w3-display-container w3-padding-16"STYLE="FONT-WEIGHT:BOLD">
   <security:authorize access="!hasAnyRole('USER','ADMIN')">
       <a href="javascript:void(0)" class="w3-button w3-red w3-padding-large w3-small"onclick="document.getElementById('REGISTER').style.display='block'" >REGISTER</a>  
       </security:authorize>
        </div>
 
  
    <security:authorize access="!hasAnyRole('USER','ADMIN')">
   <div class="w3-container w3-display-container w3-padding-16"STYLE="FONT-WEIGHT:BOLD">
 
       <a href="login"  class="w3-button w3-green w3-padding-large w3-small" >LOGIN</a>  
  </div>
  
  </security:authorize>
   <div class="w3-container w3-display-container w3-padding-16"STYLE="FONT-WEIGHT:BOLD">
   
     <security:authorize access="hasAnyRole('USER','ADMIN')">
       <a href="logout" class="w3-button w3-red w3-padding-large w3-small" >LOGOUT</a>  
       </security:authorize>
  </div>
 
  
  <div class="w3-container w3-display-container w3-padding-16"STYLE="FONT-WEIGHT:BOLD">
   
      <security:authorize access="hasAnyRole('USER','ADMIN')">
       <a href="profile" class="w3-button w3-yellow w3-padding-large w3-small" >MY PROFILE</a>  
       </security:authorize>
       
  </div>
   <div class="w3-container w3-display-container w3-padding-16"STYLE="FONT-WEIGHT:BOLD">
   
      <security:authorize access="hasAnyRole('USER','ADMIN')">
       <a href="userprofile" class="w3-button w3-blue w3-padding-large w3-small" >USERS</a>  
       </security:authorize>
       
  </div>
   <div class="w3-container w3-display-container w3-padding-16"STYLE="FONT-WEIGHT:BOLD">
   
      <security:authorize access="hasAnyRole('USER','ADMIN')">
       <a href="updateprofile" class="w3-button w3-pink w3-padding-large w3-small" >EDIT PROFILE</a>  
       </security:authorize>
       
  </div>
  
 
  <div class="w3-container w3-display-container w3-padding-16"STYLE="FONT-WEIGHT:BOLD">
    
    <security:authorize access="hasRole('ADMIN')">
       <a href="javascript:void(0)" class="w3-button w3-yellow w3-padding-large w3-small" onclick="document.getElementById('ADMINISTRATE').style.display='block'">ADMINISTRATE</a> 
       </security:authorize> 
  </div>
     
  <a href="#contact" >contact</a> 
    <a href="" >Feedback</a> 
  

</div>
 



                   <!-- Overlay effect when opening sidebar on small screens -->

<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

                                 <!-- !PAGE CONTENT! -->
                                 
<div class="w3-main" style="margin-left:0px"onclick="w3_close()">

  <!-- Push down content on small screens -->
  <div class="w3-hide-large" style="margin-top:0px"></div>
  
                                   <!-- Top header -->
  
  
  
  
 <div id="close" onclick="closeNav()">
  <!-- Image header -->
  
<div class="container" style="width:100%;">

  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="http://www.adepttraining.com.au/resources/images/resume_002.jpg" alt="Los Angeles" style="width:100%;">
        <div class="carousel-caption">
         
        </div>
      </div>

      <div class="item">
        <img src="https://media.istockphoto.com/vectors/curriculum-vitae-banner-and-icons-vector-id636223658" alt="Jeans" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="https://spunout.ie/images/made/images/articles/curriculum_vitae_800_440_80_c1.jpg" alt="New York" style="width:100%;">
        <div class="carousel-caption">
          
        </div>
      </div>
  
    </div>

                             <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
</div>

                              <!-- profile cards -->
   <div class="container">
<h1><p align="center">People you may know</p></h1>
        <div class="container">
            <div id="carouselExample" class="carousel slide" data-ride="carousel" >
                <div class="carousel-inner row w-100 mx-auto" role="listbox">
                    <div class="carousel-item col-md-3  active">
                        <div class="card h-100">
                            <div class="card-body">
                                <div class="myback-img ">
                                    <img src="https://images.pexels.com/photos/907267/pexels-photo-907267.jpeg?auto=compress&cs=tinysrgb&h=350" class="">
                                </div>
                                <div class="myoverlay"></div>
                                <div class="profile-img">
                                    <div class="borders avatar-profile">
                                        <img src="https://images.pexels.com/photos/907267/pexels-photo-907267.jpeg?auto=compress&cs=tinysrgb&h=350">
                                    </div>
                                </div>
                                <div class="profile-title">
                                    <a href="#">
                                        <h3>Diane</h3>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                 
                    
                   
                   <c:forEach var = "details" items = "${details.rows}">
                   
                    <div class="carousel-item col-md-3 ">
                    
                        <div class="card h-100">
                            <div class="card-body">
                                <div class="myback-img ">
                                    <img src="resources/images/${details.img}" class="img-rectangle img-thumbnail">
                                </div>
                                <div class="myoverlay"></div>
                                <div class="profile-img">
                                    <div class="borders avatar-profile">
                                        <img src="resources/images/${details.img}">
                                    </div>
                                </div>
                                <div class="profile-title">
                                    <a href="#">
                                        <h3>${details.fname} ${details.lname}</h3>
                                    </a>
                                </div>
                            </div>
                        </div>
                       
                    </div>
                    </c:forEach>
                    <div class="carousel-item col-md-3  ">
                        <div class="card h-100">
                            <div class="card-body">
                                <div class="myback-img ">
                                    <img src="https://images.pexels.com/photos/734725/pexels-photo-734725.jpeg?auto=compress&cs=tinysrgb&h=350" class="">
                                </div>
                                <div class="myoverlay"></div>
                                <div class="profile-img">
                                    <div class="borders avatar-profile">
                                        <img src="https://images.pexels.com/photos/211050/pexels-photo-211050.jpeg?auto=compress&cs=tinysrgb&h=350">
                                    </div>
                                </div>
                                <div class="profile-title">
                                    <a href="#">
                                        <h3>Ipsum</h3>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExample" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next text-faded" href="#carouselExample" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
  </div>
                             

  
 
  <footer class="w3-padding-64 w3-ligh w3-small w3-center" id="footer" onclick="closeNav()">

<!-- Container (Contact Section) -->
<div class="w3-content w3-container w3-padding-64" id="contact" onclick="w3_close()">
  <h3 class="w3-center">WHERE I WORK</h3>
  <p class="w3-center"><em>I'd love your feedback!</em></p>

  <div class="w3-row w3-padding-32 w3-section" onclick="w3_close()">
   
    <div class="w3-center" onclick="w3_close()">
      <div class="w3-large w3-margin-bottom" onclick="w3_close()">
        <i class="fa fa-map-marker fa-fw w3-hover-text-black w3-xlarge w3-CENTER"></i> Chennai, INDIA<br>
        <i class="fa fa-phone fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i> Phone: +00 151515<br>
        <i class="fa fa-envelope fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i> Email: mail@mail.com<br>
      </div>
      <p>Swing by for a cup of <i class="fa fa-coffee"></i>, or leave me a note:</p>
      <form action="/action_page.php" target="_blank">
        <div class="w3-row-padding" style="margin:0 -16px 8px -16px">
          <div class="w3-half">
            <input class="w3-input w3-border" type="text" placeholder="Name" required name="Name">
          </div>
          <div class="w3-half">
            <input class="w3-input w3-border" type="text" placeholder="Email" required name="Email">
          </div>
        </div>
        <input class="w3-input w3-border" type="text" placeholder="Message" required name="Message">
        <button class="w3-button w3-black w3-right w3-section" type="submit">
          <i class="fa fa-paper-plane"></i> SEND MESSAGE
        </button>
      </form>
    </div>
  </div>
</div>

<!-- Footer -->

 
<!-- Add Google Maps -->

                                    <!-- End page content -->
                                    
  <div class="w3-black w3-center w3-padding-24" onclick="closeNav()">
  <a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a><br/>
</div>


</div>

                          
                  <!-- Register Modal -->
<div id="REGISTER" class="w3-modal">
  <div class="w3-modal-content w3-animate-zoom" style="padding:32px">
    <div class="w3-container w3-white w3-center">
      <i onclick="document.getElementById('REGISTER').style.display='none'" class="fa fa-remove w3-right w3-button w3-transparent w3-xxlarge"></i>
      <form action="register" method ="POST">
       <h2 class="w3-wide">REGISTER</h2>
      <p>Fill it up to update your registration.</p>
      <p><input name="name" class="w3-input w3-border" type="text" placeholder="Enter user NAME  " required></p>
      <p><input name="email"class="w3-input w3-border" type="email" placeholder="Enter E-MAIL" required onblur="checkRegister(this)"></p>
      <p><input name="phoneno"class="w3-input w3-border" type="number" placeholder="Enter PHONE NO" required></p>
      <p><input name="country"class="w3-input w3-border" type="text" placeholder="Enter COUNTRY" required></p>
      <p><input name="address"class="w3-input w3-border" type="text" placeholder="Enter ADDRESS" required></p>
       <p><input name="password"class="w3-input w3-border" type="password" placeholder="Enter PASSWORD" required></p>
       
       <button type="submit" class="w3-button w3-red w3-padding-large w3-small">Register</button>
          <input type="checkbox" checked="checked">
          </form>
    </div>
  </div>
</div>           


                           
<script>
// Accordion 
function myAccFunc() {
    var x = document.getElementById("demoAcc");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}

// Click on the "Jeans" link on page load to open the accordion for demo purposes
document.getElementById("myBtn").click();


                 // Script to open and close sidebar
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}
</script>
<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>
             

              

<script type="text/javascript">
   $('#carouselExample').on('slide.bs.carousel', function(e) {

       var $e = $(e.relatedTarget);
       var idx = $e.index();
       var itemsPerSlide = 4;
       var totalItems = $('.carousel-item').length;

       if (idx >= totalItems - (itemsPerSlide - 1)) {
           var it = itemsPerSlide - (totalItems - idx);
           for (var i = 0; i < it; i++) {
               // append slides to end
               if (e.direction == "left") {
                   $('.carousel-item').eq(i).appendTo('.carousel-inner');
               } else {
                   $('.carousel-item').eq(0).appendTo('.carousel-inner');
               }
           }
       }
   });

   $('#carouselExample').carousel({
       interval: 2000
   });

   </script>
    <!-- Page Content -->
</body>
</html>
  