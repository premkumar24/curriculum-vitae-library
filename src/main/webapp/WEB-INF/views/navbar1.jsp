    <%@ taglib uri = "http://www.springframework.org/security/tags" prefix = "security" %>
      <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
       <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
       <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
  <meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="shortcut icon" type="image/x-icon" href="resources/android-icon-96x96.png" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 
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
.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}
</style>

<style>
.w3-sidebar a {font-family: "Roboto", sans-serif}
body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Montserrat", sans-serif;}
/* Full-width input fields */
</style>

 
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
   
     
       <a href="updateprofile" class="w3-button w3-pink w3-padding-large w3-small" >EDIT PROFILE</a>  
       
       
  </div>
  
 
  <div class="w3-container w3-display-container w3-padding-16"STYLE="FONT-WEIGHT:BOLD">
    
    <security:authorize access="hasRole('ADMIN')">
       <a href="candidates" class="w3-button w3-green w3-padding-large w3-small" >CANDIDATES</a> 
       </security:authorize> 
  </div>
     
  <a href="#contact" >contact</a> 
    <a href="" >Feedback</a> 
  

</div>
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

<header class="w3-container w3-xlarge" >
   
    <p class="w3-left"><span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;<span class="w3-hide-small"> MENU</span></span>
                           
   </p>
     <div class="w3-display-topmiddle"> <h3>CURRICULUM VITAE LIBRARY </h3></div>
    <div class="w3-right" onclick="closeNav()">
    
      
      
        
      <span class="w3-hide-small">  
      
        
         <security:authorize access="hasAnyRole('USER','ADMIN')">
       <h3>Hii,${pageContext.request.userPrincipal.name}</h3>
       </security:authorize>
      
        <security:authorize access="!hasAnyRole('USER','ADMIN')">
       <h3>Hii, LOG-IN</h3>
       </security:authorize></span>
      
    </div>
   
   
    
  </header>

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
  

<sql:setDataSource var = "snapshot" driver = "org.h2.Driver"
         url = "jdbc:h2:tcp://localhost/~/prem"
         user = "sa"  password = ""/>
</body>