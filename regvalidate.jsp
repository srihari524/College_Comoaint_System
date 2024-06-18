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
String u,p,c,rno,m;
u=request.getParameter("name");
p=request.getParameter("pwd");
c=request.getParameter("college");
rno=request.getParameter("regno");
m=request.getParameter("mobile");


try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sri1234");
	Statement st=con.createStatement();
ResultSet rs=	st.executeQuery("select * from complaint_student where username='"+u+"'");
if(rs.next())
	out.print("username not avilable choose another....");
else
{
st.executeUpdate("insert into complaint_student values('"+u+"','"+p+"','"+c+"','"+rno+"','"+m+"')");


	out.println("<script>alert('Registeration successful......')</script>");
}
%>
<jsp:include page="student.jsp"></jsp:include>
 <%
}catch(Exception e)
{
	e.printStackTrace();

}
  %>

</body>
</html>