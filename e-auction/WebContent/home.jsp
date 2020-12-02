<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/mystyle.css"/>
<script src="js/bootstrp.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
</head>
<body>
<%@include file="nav.jsp" %>
<div class="container-fluid p-0 m-0">
	<div class="jumbotron primary-background text-white">
		<div class="container ">
		<h3 class="display-3">Welcome To E-auction</h3>
		<p>The auction itself follows clearly defined rules which are obeyed by all market participants. This is similar to any usual auction, as the basic principle remains the same. </p>
		<button class="btn btn-outline-light btn-lg"><span class="fa fa-eye"></span>  READ RULES!</button>
		
		
		
		</div>
	</div>
</div>
<div class="conatiner">
	<div class=row>
		<div class="col-md-4">
			<div class="card">
 				 <div class="card-body">
   				 <h1 class="card-title">Railway</h1>
    			<p class="card-text">The Railway </p>
   				 <a href="railwayform.jsp" class="btn primary-background text-white"> <span class="fa fa-train"></span>  Visit</a>
   				 </div>
			</div>
		</div>
				<div class="col-md-4">
			<div class="card">
 				 <div class="card-body">
   				 <h1 class="card-title">Bank</h1>
    			<p class="card-text">The Bank</p>
   				 <a href="bankform.jsp" class="btn primary-background text-white"><span class="fa fa-bank"></span>  Visit</a>
   				 </div>
			</div>
		</div>
				<div class="col-md-4">
			<div class="card">
 				 <div class="card-body">
   				 <h1 class="card-title">Forest</h1>
    			<p class="card-text">The Forest</p>
   				 <a href="forestform.jsp" class="btn primary-background text-white"><span class="fa fa-tree"></span>  Visit</a>
   				 </div>
			</div>
		</div>
	</div>
</div>

</body>
</html>