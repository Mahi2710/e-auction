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
 <%  HttpSession s = request.getSession();

            s.removeAttribute("currentUser");

            Message m = new Message("Logout Successfully", "success", "alert-success");

            s.setAttribute("msg", m);

            response.sendRedirect("login.jsp");

%>
</body>
</html>