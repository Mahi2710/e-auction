<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.entites.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Message msg = new Message("invalid detail","error","alert-danger");
HttpSession s = request.getSession();
s.setAttribute("msg", msg);
response.sendRedirect("login.jsp");


%>
</body>
</html>