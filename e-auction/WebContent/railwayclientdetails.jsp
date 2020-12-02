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
<% String select = request.getParameter("item");
String cost  = request.getParameter("cost");
Connection con = Dbconnection.takeConnection();
String query = "insert into railwayclient(item,cost) values(?,?)";
PreparedStatement ps = con.prepareStatement(query);
ps.setString(1,select);
ps.setString(2,cost);
ps.executeUpdate();
con.close();
response.sendRedirect("home1.jsp");

%>
</body>
</html>