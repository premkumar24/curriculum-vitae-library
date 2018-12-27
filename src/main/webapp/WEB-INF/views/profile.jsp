<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="navbar1.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

<meta name="viewport" content="width=device-width">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<title>My profile</title>
<style type="text/css">

.emp-profile{
    padding: 3%;
    margin-top: 3%;
    margin-bottom: 3%;
    border-radius: 0.5rem;
    background: #fff;
}
.profile-img{
    text-align: center;
}
.profile-img img{
    width: 70%;
    height: 30%;
}
.profile-img .file {
    position: relative;
    overflow: hidden;
    margin-top: -20%;
    width: 70%;
    border: none;
    border-radius: 0;
    font-size: 15px;
    background: #212529b8;
}
.profile-img .file input {
    position: absolute;
    opacity: 0;
    right: 0;
    top: 0;
}
.profile-head h5{
    color: #333;
}
.profile-head h6{
    color: #ff0000;
}
.profile-edit-btn{
    border: none;
    border-radius: 1.5rem;
    width: 70%;
    padding: 2%;
    font-weight: 600;
    color: #6c757d;
    cursor: pointer;
}
.proile-rating{
    font-size: 12px;
    color: #818182;
    margin-top: 5%;
}
.proile-rating span{
    color: #495057;
    font-size: 15px;
    font-weight: 600;
}
.profile-head .nav-tabs{
    margin-bottom:5%;
}
.profile-head .nav-tabs .nav-link{
    font-weight:600;
    border: none;
}
.profile-head .nav-tabs .nav-link.active{
    border: none;
    border-bottom:2px solid #0062cc;
}
.profile-work{
    padding: 14%;
    margin-top: -15%;
    text-align: center;
}
.profile-work p{
    font-size: 12px;
    color: #00cc00;
    font-weight: 600;
    margin-top: 10%;
    text-align: center;
}
.profile-work a{
    text-decoration: none;
    color: #495057;
    font-weight: 600;
    font-size: 14px;
    text-align: center;
}
.profile-work ul{
    list-style: none;
}
.profile-tab label{
    font-weight: 600;
}
.profile-tab p{
    font-weight: 600;
    color: #0000ff;
    
}


</style>
<style>
	
       

       .image_outer_container{
       	margin-top: auto;
       	margin-bottom: auto;
       	border-radius: 50%;
       	position: relative;
       }

       .image_inner_container{
       	border-radius: 50%;
       	padding: 5px;
        background: #833ab4; 
        background: -webkit-linear-gradient(to bottom, #fcb045, #fd1d1d, #833ab4); 
        background: linear-gradient(to bottom, #fcb045, #fd1d1d, #833ab4);
       }
       .image_inner_container img{
       	height: 200px;
       	width: 200px;
       	border-radius: 50%;
       	border: 5px solid white;
       }
 .image_outer_container .green_icon{
         background-color: #4cd137;
         position: absolute;
         right: 30px;
         bottom: 10px;
         height: 30px;
         width: 30px;
         border:5px solid white;
         border-radius: 50%;
       }
      
</style>
</head>
<body>

<sql:query dataSource = "${snapshot}" var = "details">
       SELECT * FROM DETAILS  where email='${pageContext.request.userPrincipal.name }';
         </sql:query>

<div class="container emp-profile" onclick="closeNav()">
<c:forEach var = "details" items = "${details.rows}">
            <form method="post">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                        
                            	<div class="container">
		<div class="d-flex justify-content-center h-30">
			<div class="image_outer_container">
				<div class="green_icon"></div>
				<div class="image_inner_container">
				  <img src="resources/images/${details.img}" alt=""/>
				</div>
			</div>
		</div>
	</div>
              
                            
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="profile-head">
                                    <h5>
                                      ${details.fname} ${details.lname}
                                    </h5>
                                    <h6>
                                       ${details.profession}
                                    </h6>
                                    <p class="proile-rating"> <span> ${details.degree} /  ${details.dept}</span></p>
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="education-tab" data-toggle="tab" href="#education" role="tab" aria-controls="education" aria-selected="false">Education</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="work-tab" data-toggle="tab" href="#work" role="tab" aria-controls="work" aria-selected="false">work</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="address-tab" data-toggle="tab" href="#address" role="tab" aria-controls="address" aria-selected="false">Address</a>
                                </li>
                                 <li class="nav-item">
                                    <a class="nav-link" id="skills-tab" data-toggle="tab" href="#skills" role="tab" aria-controls="skills" aria-selected="false">Skills</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2">
                         <a href="updateprofile" class="profile-edit-btn" >Edit Profile</a>
                    </div>
                </div>                                          
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-work">
                            <p>WORK LINK</p>
                            <a href="">Website Link</a><br/>
                            <a href="">Bootsnipp Profile</a><br/>
                            <a href="">Bootply Profile</a>
                            <p>SKILLS</p>
                            <a href="">Web Designer</a><br/>
                            <a href="">Web Developer</a><br/>
                            <a href="">WordPress</a><br/>
                            <a href="">WooCommerce</a><br/>
                            <a href="">PHP, .Net</a><br/>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                       
                                        <div class="row">
                                            <div class="col-md-3">
                                                <label>Name</label>
                                            </div>
                                            <div class="col-md-3">
                                                <p> ${details.fname} ${details.lname}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3">
                                                <label>Email</label>
                                            </div>
                                            <div class="col-md-3">
                                                <p> ${details.email}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3">
                                                <label>Phone Number</label>
                                            </div> 
                                            <div class="col-md-3">
                                                <p> ${details.phone}</p>
                                            </div>
                                        </div>
                                          <div class="row">
                                            <div class="col-md-3">
                                                <label>Father's Name</label>
                                            </div> 
                                            <div class="col-md-3">
                                                <p> ${details.dadname}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3">
                                                <label>Date of Birth</label>
                                            </div>
                                            <div class="col-md-3">
                                                <p> ${details.dob}</p>
                                            </div>
                                        </div>
                                         <div class="row">
                                            <div class="col-md-3">
                                                <label>Age</label>
                                            </div>
                                            <div class="col-md-3">
                                                <p> ${details.age}</p>
                                            </div>
                                        </div>
                                         <div class="row">
                                            <div class="col-md-3">
                                                <label>Gender</label>
                                            </div>
                                            <div class="col-md-3">
                                                <p> ${details.gender}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3">
                                                <label>Location</label>
                                            </div>
                                            <div class="col-md-3">
                                                <p> ${details.city}</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3">
                                                <label>Mother Language</label>
                                            </div>
                                            <div class="col-md-3">
                                                <p> ${details.motherlang}</p>
                                            </div>
                                        </div>
                                       <div class="row">
                                            <div class="col-md-3">
                                                <label>Languages Known</label>
                                            </div>
                                            <div class="col-md-3">
                                                <p> ${details.languagesknown}</p>
                                            </div>
                                        </div>
                                        
                            </div>
                            <div class="tab-pane fade" id="education" role="tabpanel" aria-labelledby="education-tab">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <label>Degree/Course</label> 
                                            </div>
                                            <div class="col-md-3">
                                                <p>${details.degree}/${details.dept}</p>
                                            </div>
                                        </div>
                                      
                                         <div class="row">
                                            <div class="col-md-3">
                                                <label>CGPA</label>
                                            </div>
                                            <div class="col-md-3">
                                                <p>${details.cgpa}</p>
                                            </div>
                                        </div>
                                          <div class="row">
                                            <div class="col-md-3">
                                                <label>Batch</label>
                                            </div>
                                            <div class="col-md-3">
                                                <p>${details.startyear} - ${details.finishyear} </p>
                                            </div>
                                        </div>
                                         <div class="row">
                                            <div class="col-md-3">
                                                <label>Percentage In 10th</label>
                                            </div>
                                            <div class="col-md-3">
                                                <p>${details.per10}</p>
                                            </div>
                                        </div>
                                         <div class="row">
                                            <div class="col-md-3">
                                                <label>Percentage In 12th</label>
                                            </div>
                                            <div class="col-md-3">
                                                <p>${details.per12}</p>
                                            </div>
                                        </div>
                               
                            </div>
                             <div class="tab-pane fade" id="work" role="tabpanel" aria-labelledby="work-tab">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <label>Company</label>
                                            </div>
                                            <div class="col-md-3">
                                                <p>${details.companyname}</p>
                                            </div>
                                        </div>
                                        
                                      
                                         <div class="row">
                                            <div class="col-md-3">
                                                <label>Worked As</label>
                                            </div>
                                            <div class="col-md-3">
                                                <p>${details.workedas}</p>
                                            </div>
                                        </div>
                                         <div class="row">
                                            <div class="col-md-3">
                                                <label>Salary</label>
                                            </div>
                                            <div class="col-md-3">
                                                <p>${details.salary} P.M</p>
                                            </div>
                                        </div>
                                          <div class="row">
                                            <div class="col-md-3">
                                                <label>Worked From</label>
                                            </div>
                                            <div class="col-md-3">
                                                <p>${details.workfrom}</p>
                                            </div>
                                        </div>
                                         <div class="row">
                                            <div class="col-md-3">
                                                <label>Worked To</label>
                                            </div>
                                            <div class="col-md-3">
                                                <p>${details.workto}</p>
                                            </div>
                                        </div>
                                        
                            </div>
                              <div class="tab-pane fade" id="address" role="tabpanel" aria-labelledby="address-tab">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <label>Address</label>
                                            </div>
                                            <div class="col-md-3">
                                                <p>${details.doorno},  ${details.city} , ${details.district} District , ${details.state} , ${details.country} , ${details.postalnumber}</p>
                                            </div>
                                        </div>
                                        
                                      
                                       
                                        
                            </div>
                              <div class="tab-pane fade" id="skills" role="tabpanel" aria-labelledby="skills-tab">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <label>Skills</label>
                                            </div>
                                            <div class="col-md-3">
                                                <p>${details.skill}</p>
                                            </div>
                                        </div>
                                      
                                         <div class="row">
                                            <div class="col-md-3">
                                                <label>Profession</label>
                                            </div>
                                            <div class="col-md-3">
                                                <p>${details.profession}</p>
                                            </div>
                                        </div>
                                          <div class="row">
                                            <div class="col-md-3">
                                                <label>Achievements</label>
                                            </div>
                                            <div class="col-md-3">
                                                <p>${details.achievement}</p>
                                            </div>
                                        </div>
                                         <div class="row">
                                            <div class="col-md-3">
                                                <label>Hobby</label>
                                            </div>
                                            <div class="col-md-3">
                                                <p>${details.hobby}</p>
                                            </div>
                                        </div>
                                       
                               
                            </div>
                        </div>
                    </div>
                </div>
            </form>   
            </c:forEach>        
        </div>

</body>
</html>