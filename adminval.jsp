<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String u=request.getParameter("user");
String p=request.getParameter("pwd");
if(u.equals("admin") && p.equals("admin"))
{
	response.sendRedirect("adminhome.jsp");
}
else
{
	out.println("<script>alert('invalid login details...')</script>");
%>
<jsp:include page="adminlogin.jsp"></jsp:include>
<%} %>
</body>
</html>