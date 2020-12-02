<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import=" java.sql.*" %>
    <%@ page import=" com.helper.*" %>
     <%@ page import="com.entites.*" %>
     <%@ page import="com.entites.*" %>
   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>

<%
String email = request.getParameter("email");
String password = request.getParameter("password");
Connection con = Dbconnection.takeConnection();
String sql = "select * from admin where email=? and password=?";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, email);
ps.setString(2, password);
 ResultSet rs = ps.executeQuery();
if(rs.next())
{ 
 String useremail = rs.getString("email");
 String userdbPassword = rs.getString("password");
if(email.equals(useremail) && password.equals(userdbPassword))
{
	
	response.sendRedirect("home.jsp");
}

}
else {
	
	 response.sendRedirect("loginerrordisplay.jsp");
	
rs.close();
ps.close(); 
}
 
	

%>
</body>
</html>