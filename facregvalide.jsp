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
String u,p,c,f,l,m,loc,d;
f=request.getParameter("fname");
l=request.getParameter("lname");
u=request.getParameter("name");
p=request.getParameter("pwd");
loc=request.getParameter("loc");
m=request.getParameter("mobile");
d=request.getParameter("dept");



try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sri1234");
	Statement st=con.createStatement();
ResultSet rs=	st.executeQuery("select * from faculity where username='"+u+"'");
if(rs.next())
	out.print("username not avilable choose another....");
else
{
st.executeUpdate("insert into faculity values('"+f+"','"+l+"','"+u+"','"+p+"','"+loc+"','"+m+"','"+d+"')");


	out.println("<script>alert('Registeration successful......')</script>");
}
%>
<jsp:include page="faculty.jsp"></jsp:include>
 <%
}catch(Exception e)
{
	e.printStackTrace();

}
  %>

</body>
</html>