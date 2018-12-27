<!DOCTYPE html>
<html>
<%@ include file="navbar1.jsp"%>

<link rel="shortcut icon" type="image/x-icon"
	href="resources/android-icon-96x96.png" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Profile</title>
<style>
body {
	font-family: "Lato", sans-serif;
}

<
style>form {
	
}

input {
	width: 70%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 70%;
}
</style>

<body>
 <sql:query dataSource = "${snapshot}" var = "register">
            SELECT * from register  where pname='${pageContext.request.userPrincipal.name }';
         </sql:query>
         
	<div class="w3-display-middle" onclick="closeNav()">
	
		<h2>Profile Form</h2>
		<form  action="save" method="post">
		
			<div class="container">
		 <c:forEach var = "register" items = "${register.rows}">
				<label><b>Name </b></label> <br/>
				<input class="form-control" type="text"
					placeholder="Enter name" name="name" value="${pageContext.request.userPrincipal.name }" required> <br/>
					<label><b>Address</b></label><br/>
				<input class="form-control" type="text" placeholder="Enter Address" value="${register.address}"
					name="address" required> <br/>
					<label><b>Phone number</b></label><br/>
				<input class="form-control" type="number"value="${register.phone}"
					placeholder="Enter Phone Number" name="phone" required> <br/>

				<label><b>Email</b></label><br/>
				 <input class="form-control" type="email"value="${register.email}"
					placeholder="Enter Email" name="email" required> <br /> 
					<label><b>Password</b></label><br/>
				<input class="form-control" type="text" value="${register.password}"
					placeholder="Enter product name correctly" name="password"
					 required>

				<button type="submit">Save your profile</button>
</c:forEach>
			</div>

			
		</form>

	</div>
</body>
</html>
