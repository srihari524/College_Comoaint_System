<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sri1234");
	Statement st=con.createStatement();
String u,p;
u=request.getParameter("name");
p=request.getParameter("pwd");
ResultSet rs=	st.executeQuery("select * from complaint_student where username='"+u+"' and password='"+p+"'");
if(rs.next())
{
	session.setAttribute("stdusername",u);
	response.sendRedirect("studenthome.jsp");
}
else
{
	out.println("<script>alert('Invalide datails....')</script>");

%>
<jsp:include page="student.jsp"></jsp:include>
<%}}
catch(Exception e)
{
	e.printStackTrace();

}
  %>
 


</body>
</html>