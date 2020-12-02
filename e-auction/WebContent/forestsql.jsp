<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import=" java.sql.*" %>
    <%@ page import=" com.helper.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String item = request.getParameter("item");
String cost  = request.getParameter("cost");
String description = request.getParameter("description");
String photo = request.getParameter("photo");
String date = request.getParameter("date");
Connection con = Dbconnection.takeConnection();
String query = "insert into forest(item,cost,description,date,photo) values(?,?,?,?,?)";
PreparedStatement ps = con.prepareStatement(query);
ps.setString(1,item);
ps.setString(2,cost);
ps.setString(3,description);
ps.setString(4,date);
ps.setString(5,photo);
ps.executeUpdate();
con.close();
response.sendRedirect("home.jsp");
%>

</body>
</html>