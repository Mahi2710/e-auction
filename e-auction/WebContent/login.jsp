<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.entites.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login page</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/mystyle.css"/>
<script src="js/bootstrp.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
</head>
<style>
</style>
<body>
<%@include file="login nav.jsp" %>
<div class= "nav well primary-background" ></div>
	<main class="d-flex align-items-center primary-background " style="height:80vh">
		<div class="container">
			<div class="row">
				<div class="col-md-4 offset-md-4">
					<div class="card">
						<div class="card-header primary-background text-white">
						<span class="fa fa-user-plus fa-3x"></span>
						<h1>login here</h1>
						</div>
						<%
							Message m =(Message)session.getAttribute("msg");
								if(m!=null) {
									%>
									<div class="alert <%=m.getCssclass()%>" role="alert">
 										 <%= m.getContent() %>
									</div>
									
								<% 	
								session.removeAttribute("msg");
								}
						
						
						%>
						
						<div class="card-body">
						<form action="loginjsp.jsp" method="post">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input name="email" required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Password</label>
                                        <input name="password" required type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                    </div>

                                    <div class="container text-center">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                </form>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
</html>