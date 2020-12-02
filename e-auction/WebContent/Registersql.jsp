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

String check = request.getParameter("check");
if(check == null) {
	out.println("box unchecked");
}

else {
	
String name = request.getParameter("user_name");
String email  = request.getParameter("user_email");
String phone = request.getParameter("user_phone");
String gender = request.getParameter("gender");
String choice = request.getParameter("client");
Connection con = Dbconnection.takeConnection();
String query = "insert into user(name,email,phone,gender,choice) values(?,?,?,?,?)";
PreparedStatement ps = con.prepareStatement(query);
ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,phone);
ps.setString(4,gender);
ps.setString(5,choice);
ps.executeUpdate();
con.close();
out.println("register sucessfully");
response.sendRedirect("home1.jsp");
}
%>
</body>
</html>