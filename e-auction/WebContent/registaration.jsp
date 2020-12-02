<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register  here</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/mystyle.css"/>
<script src="js/bootstrp.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark primary-background">
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <form class="form-inline my-2 my-lg-0">
      <a class="btn btn-outline-light my-2 my-sm-0"  href="login.jsp" type="submit">Login as admin</a>
    </form>
  </div>
</nav>

	<main class="primary-background p-5">
		<div class="conatiner">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header text-center primary-background text-white">
					<span class="fa fa-3x fa-user-circle"></span>
					<h1>Register here</h1>
					</div>
					<div class="card-body">
						<form id ="reg-form" action ="Registersql.jsp" method  ="post">
								 <div class="form-group">
							    <label for="exampleInputEmail1" >User_name</label>
							    <input type="text"  name="user_name" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter name">
							    
							    </div>
						
						
							  <div class="form-group">
							    <label for="exampleInputEmail1" >Email address</label>
							    <input type="email" name="user_email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
							    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
							  </div>
							  
							  
							  <div class="form-group" >
							    <label for="exampleInputPassword1" >Mobile number</label>
							    <input type="number"name="user_phone" class="form-control" id="exampleInputnumber1" placeholder="phone number">
							  </div>
							  
							   <div class="form-group">
							    <label for="gender">Select gender</label>
							    <br/>
							    <input type="radio"  id="gender" name="gender" value="male" >MALE
							     <input type="radio"  id="gender" name="gender" value="female">FEMALE
							  </div>
							    <input type="text"  id="gender" name="client" value="client" hidden/ >
							  <div class="form-group ">
							    <input type="checkbox" name="check" class="form-check-input" id="exampleCheck1">
							    <label class="form-check-label" for="exampleCheck1" >Agree terms and condition</label>
							  </div>
							   <div class="container text-center" id="loader" style="display: none;">
                                    <span class="fa fa-refresh fa-spin fa-4x"></span>
                                    <h4>Please wait..</h4>
                                </div>
							  
							  <button type="submit" id="sumbimt-btn"  class="btn btn-primary">Sign up</button>
							</form>
					</div>
					<div class="card-footer">
					<h6>THANK YOU</h6>
					</div>
				
				
				</div>
			
			</div>
		
		</div>
	</main>
	
</body>
</html>