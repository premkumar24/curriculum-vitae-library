<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ include file="navbar1.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- jQuery core, needed if not already present! -->
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

<!-- AJAX-ZOOM core, needed! -->
<link href="../axZm/axZm.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="../axZm/jquery.axZm.js"></script>

<!-- Include mousewheel script, optional -->
<script type="text/javascript"
	src="../axZm/extensions/axZmThumbSlider/lib/jquery.mousewheel.min.js"></script>

<!-- Include thumbSlider JS & CSS, optional -->
<link rel="stylesheet" type="text/css"
	href="../axZm/extensions/axZmThumbSlider/skins/default/jquery.axZm.thumbSlider.css" />
<script type="text/javascript"
	src="../axZm/extensions/axZmThumbSlider/lib/jquery.axZm.thumbSlider.js"></script>

<!-- Include mouseOverZoomTiles JS & CSS, needed! -->
<link rel="stylesheet" type="text/css"
	href="../axZm/extensions/jquery.axZm.mouseOverZoomTiles.css" />
<script type="text/javascript"
	src="../axZm/extensions/jquery.axZm.mouseOverZoomTiles.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon"
	href="resources/android-icon-96x96.png" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>User profile</title>


<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 400px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.title {
  color: #ff0000;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
 
  font-size: 22px;
  
}


</style>


<body>


    <sql:query dataSource = "${snapshot}" var = "details">
       SELECT * FROM DETAILS ;
         </sql:query>
    

	<div class="w3-main" style="margin-left: 10px" onclick="closeNav()">
		<div class="w3-main" style="margin-right: 5px">


			<div class="header" onclick="closeNav()">

				<h2 align="center">Users Blog</h2>
			</div>


			<br />
			<c:forEach items="${details.rows}" var="details">

				<div class="w3-col l3 s6">
					<div class="w3-card-4 w3-black" style="width: 75%">
						<div class="w3-row w3-center">
							<div class="w3-display-container">
								 <div class="card">
								 <a href="userprofileview?email=${details.email}">
  <img src="resources/images/${details.img}" alt="" width="250px" height="300px" ></a>
  <h1>${details.fname} ${details.lname} </h1>
  <p class="title"> ${details.profession}</p>
  <p>${details.workedas},${details.companyname}</p>
  

</div>
							
							
							</div>
						</div>
					</div>
					
				</div>
			</c:forEach>

		</div>
	</div>


	
	
	
	

</body>
</html>