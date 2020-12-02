<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Date" %>
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
<% Date d = new Date(); %>
<div class="container-fluid p-0 m-0">
	<div class="jumbotron primary-background text-white">
		<div class="container ">
		<h3 class="display-3">Welcome To Railway</h3>
		<p>The auction itself follows clearly defined rules which are obeyed by all market participants. This is similar to any usual auction, as the basic principle remains the same. </p>
		<button class="btn btn-outline-light btn-lg"><span class="fa fa-eye"></span>  READ RULES!</button>
		
	</div>
	</div>
	</div>
<form method="post" action= "railwaysql.jsp" >
<div class="form-group">
<label>ITEM:</label>
<input type="text" name="item" placeholder="enter here"/>
</div>
<div class="form-group">
<label>COST:</label>
<input type="number" name="cost" placeholder="enter here"/>
</div>
<div class="form-group">
<label class="text-up">DESCRITION:</label>
 <textarea name="description"  class="form-control" id=""  rows="5" placeholder="Enter something about item"></textarea>

</div>
<div class="form-group">
<input type="text" name="date" value="<%=d %>" hidden/>
</div>
<div class="form-group">
<label>PHOTO:</label>
<input type="file" name="photo" placeholder="enter name"/>
</div>
 <button type="submit" class="btn btn-primary">Submit</button>
</form>
</body>
</html>