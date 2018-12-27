<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ include file="navbar1.jsp"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="shortcut icon" type="image/x-icon"
	href="resources/android-icon-96x96.png" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>







<hr>
<div class="container bootstrap snippet">
<form id="regForm" action="success" method ="POST" enctype="multipart/form-data">
    <div class="row">
  		<div class="col-sm-10"><h1>User name</h1></div>
    	<div class="col-sm-2"><a href="/users" class="pull-right"><img title="profile image" class="img-circle img-responsive" src="http://www.gravatar.com/avatar/28fd20ccec6865e2d5f0e1f4446eb7bf?s=100"></a></div>
    </div>
    <div class="row">
  		<div class="col-sm-3"><!--left col-->
              

      <div class="text-center">
        <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail " style="width:200px;height:200px;" alt="avatar">
        <h6>Upload a different photo...</h6>
        <input type="file" name="img" class="text-center center-block file-upload"  required >
      </div></hr><br>

               
          <div class="panel panel-default">
            <div class="panel-heading">Website <i class="fa fa-link fa-1x"></i></div>
            <div class="panel-body"><a href="http://bootnipets.com">bootnipets.com</a></div>
          </div>
          
          
          <ul class="list-group">
            <li class="list-group-item text-muted">Activity <i class="fa fa-dashboard fa-1x"></i></li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Shares</strong></span> 125</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Likes</strong></span> 13</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Posts</strong></span> 37</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Followers</strong></span> 78</li>
          </ul> 
               
          <div class="panel panel-default">
            <div class="panel-heading">Social Media</div>
            <div class="panel-body">
            	<i class="fa fa-facebook fa-2x"></i> <i class="fa fa-github fa-2x"></i> <i class="fa fa-twitter fa-2x"></i> <i class="fa fa-pinterest fa-2x"></i> <i class="fa fa-google-plus fa-2x"></i>
            </div>
          </div>
          
        </div><!--/col-3-->
    	<div class="col-sm-9">
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#Info">Info</a></li>
                <li><a data-toggle="tab" href="#Birthday">Birthday</a></li>
                <li><a data-toggle="tab" href="#Location">Location</a></li>
                <li><a data-toggle="tab" href="#Education">Education</a></li>
                <li><a data-toggle="tab" href="#Languages">Languages</a></li>
                <li><a data-toggle="tab" href="#Working experience">Working experience</a></li>
                <li><a data-toggle="tab" href="#Skills">Skills</a></li>
              </ul>

              
          <div class="tab-content">
            <div class="tab-pane active" id="Info">
                <hr>
                  
                      <div class="form-group">
                          
                          <div class="col-xs-12">
                              <label for="first_name"><h4>First name</h4></label>
                              <input placeholder="First name..." name="fname" class="form-control" required >
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-12">
                            <label for="last_name"><h4>Last name</h4></label>
                            <input placeholder="Last name..." name="lname"class="form-control" required>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-12">
                            <label for="last_name"><h4>Father's name</h4></label>
                           <input placeholder="Father's full name..." name="dadname"class="form-control" required >
                          </div>
                      </div>
          
                      <div class="form-group">
                          
                          <div class="col-xs-12">
                              <label for="phone"><h4>Phone</h4></label>
                              <input placeholder="Phone..." name="phone"class="form-control" required>
                          </div>
                      </div>
          
                      <div class="form-group">
                          <div class="col-xs-12">
                             <label for="mobile"><h4>Email-id</h4></label>
                             <input placeholder="E-mail..." name="email"class="form-control" required>
                          </div>
                      </div>
                      
                      
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                        <a data-toggle="tab" href="#Birthday"> <button class="btn btn-lg btn-success" type="submit"> Save </button></a>
                               	<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                            </div>
                      </div>
              	
              
              <hr>
              
             </div><!--/tab-pane-->
             <div class="tab-pane" id="Birthday">
               
               <h2></h2>
               
               <hr>
                  
                      <div class="form-group">
                          
                          <div class="col-xs-12">
                              <label for="first_name"><h4>DOB</h4></label>
                              <input placeholder="dd/mm/yyyy..." name="dob" class="form-control" required>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-12">
                            <label for="last_name"><h4>Age</h4></label>
                            <input placeholder="age..." name="age" class="form-control" required>
                          </div>
                      </div>
           <div class="form-group">
                          
                          <div class="col-xs-12">
                            <label for="last_name"><h4>Gender</h4></label>
                            <select name="gender" placeholder="gender" class="form-control" required>
			<option>Male</option>
			<option>Female</option>
			</select>
                          </div>
                      </div>
          
                    
                     
                    
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                               	<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                            </div>
                      </div>
              
               
             </div><!--/tab-pane-->
              <div class="tab-pane" id="Location">
               
               <h2></h2>
               
               <hr>
                  
                      <div class="form-group">
                          
                          <div class="col-xs-12">
                              <label for="first_name"><h4>Country Name</h4></label>
                         <input placeholder="country Name..." name="country" class="form-control" required>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-12">
                            <label for="last_name"><h4>State Name</h4></label>
                        <input placeholder="State Name..." name="state" class="form-control" required>
                          </div>
                      </div>
           <div class="form-group">
                          
                          <div class="col-xs-12">
                            <label for="last_name"><h4>District name</h4></label>
                           <input placeholder="District name..." name="district" class="form-control" required>
                          </div>
                      </div>
                       <div class="form-group">
                          
                          <div class="col-xs-12">
                            <label for="last_name"><h4>City Name</h4></label>
                         <input placeholder="City Name..." name="city" class="form-control" required>
                          </div>
                      </div>
                       <div class="form-group">
                          
                          <div class="col-xs-12">
                            <label for="last_name"><h4>Postal Number</h4></label>
                        <input placeholder="Postal no..." name="postalno" class="form-control" required>
                          </div>
                      </div>
                       <div class="form-group">
                          
                          <div class="col-xs-12">
                            <label for="last_name"><h4>Door Number</h4></label>
                        <input placeholder="Door no..." name="doorno" class="form-control" required>
                          </div>
                      </div>
          
                    
                     
                    
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                               	<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                            </div>
                      </div>
              
               
             </div><!--/tab-pane-->
             <div class="tab-pane" id="Education">
               
               <h2></h2>
               
               <hr>
                  
                      <div class="form-group">
                          
                          <div class="col-xs-12">
                              <label for="first_name"><h4>Degree</h4></label>
                         <select name="degree" placeholder="Degree (eg: B.E/B.Tech/B.Sc )"class="form-control" required>
						<option>B.E</option>
						<option>B.Tech</option>
						<option>B.Sc</option>
						<option>B.Com</option>
						<option>M.Sc</option>
						<option>M.E</option>
						<option>M.Tech</option>
</select>

                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-12">
                            <label for="last_name"><h4>Dept</h4></label>
                     <input placeholder=" Dept..." name="dept"class="form-control" required>
                          </div>
                      </div>
           <div class="form-group">
                          
                          <div class="col-xs-12">
                            <label for="last_name"><h4>Started year</h4></label>
                       <input placeholder="Started year..." name="startyear"class="form-control" required>
                          </div>
                      </div>
                       <div class="form-group">
                          
                          <div class="col-xs-12">
                            <label for="last_name"><h4>Finished Year</h4></label>
                       <input placeholder="Finished Year..." name="finishyear"class="form-control" required>
                          </div>
                      </div>
                       <div class="form-group">
                          
                          <div class="col-xs-12">
                            <label for="last_name"><h4>Percentage/Cgpa in degree</h4></label>
                       
                       <input placeholder="Percentage/Cgpa in degree..." name="cgpa"class="form-control" required>   </div>
                      </div>
                       <div class="form-group">
                          
                          <div class="col-xs-12">
                            <label for="last_name"><h4>Percentage in 12th/polytechnic</h4></label>
                      
                      <input placeholder="Percentage in 12th/polytechnic" name="per12"class="form-control" required>    </div>
                      </div>
          <div class="form-group">
                          
                          <div class="col-xs-12">
                            <label for="last_name"><h4>Percentage in 10th</h4></label>
                      <input placeholder="Percentage in 10th" name="per10"class="form-control" required>
                     
                      </div>
                    
                     
                    
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                               	<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                            </div>
                      </div>
              
               
             </div><!--/tab-pane-->
            
               
              </div><!--/tab-pane-->
              <div class="tab-pane" id="Languages">
               
               <h2></h2>
               
               <hr>
                  
                      <div class="form-group">
                          
                          <div class="col-xs-12">
                              <label for="first_name"><h4>Mother Tongue</h4></label>
                            <input placeholder="Mother tongue (eg:tamil)" name="motherlang" class="form-control" required>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-12">
                            <label for="last_name"><h4>languages known</h4></label>
                            <input placeholder=" languages known.(eg: tamil,english,hindi)..." name="lk" class="form-control" required>
                            
                          </div>
                      </div>
           
          
                    
                     
                    
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                               	<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                            </div>
                      </div>
              
               
             </div><!--/tab-pane-->
             <div class="tab-pane" id="Working experience">
               
               <h2></h2>
               
               <hr>
                  
                      <div class="form-group">
                          
                          <div class="col-xs-12">
                              <label for="first_name"><h4>Company Name</h4></label>
                        <input placeholder="company name...." name="cname" class="form-control" required>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-12">
                            <label for="last_name"><h4>Worked As</h4></label>
                     <input placeholder="worked as...." name="workedas" class="form-control" required>
                          </div>
                      </div>
           <div class="form-group">
                          
                          <div class="col-xs-12">
                            <label for="last_name"><h4>Salary P/M</h4></label>
                          <input placeholder="salary p/m...." name="salary" class="form-control" required>
                          </div>
                      </div>
                       <div class="form-group">
                          
                          <div class="col-xs-12">
                            <label for="last_name"><h4>Work From</h4></label>
                      <input placeholder="from (eg:march 2018)" name="workfrom" class="form-control" required>
                          </div>
                      </div>
                       <div class="form-group">
                          
                          <div class="col-xs-12">
                            <label for="last_name"><h4>Work To</h4></label>
                       <input placeholder=" to (eg:may 2018)...." name="workto" class="form-control" required>
                          </div>
                      </div>
                      
                    
                     
                    
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                               	<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                            </div>
                      </div>
              
               
             </div><!--/tab-pane-->
             <div class="tab-pane" id="Skills">
               
               <h2></h2>
               
               <hr>
                  
                      <div class="form-group">
                          
                          <div class="col-xs-12">
                              <label for="first_name"><h4>Hobby</h4></label>
                          <input placeholder="hobbies(eg:playing,reading books" name="hobby" class="form-control" required>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-12">
                            <label for="last_name"><h4>Skills</h4></label>
                          
                            <input placeholder="skills...." name="skill" class="form-control" required>
                          </div>
                      </div>
                        <div class="form-group">
                          
                          <div class="col-xs-12">
                            <label for="last_name"><h4>Achievements</h4></label>
                          
                          <input placeholder="achievements...." name="achievement" class="form-control" required>
                          </div>
                      </div>
           
          
                      <div class="form-group">
                          
                          <div class="col-xs-12">
                            <label for="last_name"><h4>Profession</h4></label>
                          
                       <select name="profession" placeholder="profession " class="form-control" required>
						<option>Engineer</option>
						<option>Teacher</option>
						<option>Researcher</option>
						<option>computer based Engineer</option>
						<option>Designer in any field</option>
						<option>Web developer</option>
						<option>Android developer</option>
						<option>Others</option>

					</select>
                          </div>
                      </div>
                     
                    
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="btn btn-lg btn-success" type="submit"> Save</button>
                               	<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button>
                            </div>
                      </div>
              
               
             </div><!--/tab-pane-->
              
          </div><!--/tab-content-->

        </div><!--/col-9-->
        </form>
    </div><!--/row-->
                                                                 
                                                      
<script>
$(document).ready(function() {

    
    var readURL = function(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('.avatar').attr('src', e.target.result);
            }
    
            reader.readAsDataURL(input.files[0]);
        }
    }
    

    $(".file-upload").on('change', function(){
        readURL(this);
    });
});
</script>
<script>
function validateForm() {
	// This function deals with validation of the form fields
	var x, y, i, valid = true;
	x = document.getElementsByClassName("tab-pane");
	y = x[currentTab].getElementsByTagName("input");
	// A loop that checks every input field in the current tab:
	for (i = 0; i < y.length; i++) {
		// If a field is empty...
		if (y[i].value == "") {
			// add an "invalid" class to the field:
			y[i].className += " invalid";
			// and set the current valid status to false
			valid = false;
		}
	}
	// If the valid status is true, mark the step as finished and valid:
	if (valid) {
		document.getElementsByClassName("step")[currentTab].className += " finish";
	}
	return valid; // return the valid status
}

</script>
</body>
</html>