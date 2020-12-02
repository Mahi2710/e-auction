<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import=" java.sql.*" %>
    <%@ page import=" com.helper.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/mystyle.css"/>
<link rel="stylesheet" href="css/mystyle1.css"/>
<script src="js/bootstrp.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
</head>
<body>
<%@include file="home1nav.jsp"%>
<div class="container-fluid p-0 m-0">
	<div class="jumbotron primary-background1 text-white">
		<div class="container ">
		<h3 class="display-3">Welcome To Forest</h3>
		<p>The auction itself follows clearly defined rules which are obeyed by all market participants. This is similar to any usual auction, as the basic principle remains the same. </p>
		<button class="btn btn-outline-light btn-lg"><span class="fa fa-eye"></span>  READ RULES!</button>
	</div>
	</div>
	</div>
	<div class = "container well">
	<table class="table table-striped" >
	<tr>
	<th>ID</th>
	<th>ITEM</th>
	<th>COST</th>
	<th>DESCRIPTION</th>
	<th>IMAGE</th>
	<th>DATE</th>
		<th>YOUR RATE</th>
	
	</tr>
<%
Statement statement = null;
ResultSet resultSet = null;
Connection con = Dbconnection.takeConnection();
Statement st = con.createStatement();
String sql ="select * from forest";
resultSet = st.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("item") %></td>
<td><%=resultSet.getString("cost") %></td>
<td><%=resultSet.getString("description") %></td>
<td><%=resultSet.getString("photo") %></td>
<td><%=resultSet.getString("date") %></td>
<form action="forestclientdetail.jsp" method="post">
<td><input type="text" name="item" value="<%=resultSet.getString("item") %>"hidden/></td>
<td><input type="number" name="cost" placeholder="max than cost"></td>

</tr>
 <%
}
con.close();
%>

	</table>
</div>
<div class="container text-center">
	<button type="submit" class="btn btn-primary">Submit</button>
</div>
</form>
	
</body>
</html>