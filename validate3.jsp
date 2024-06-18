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
String cmsg;
cmsg=request.getParameter("cir");


try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sri1234");
	Statement st=con.createStatement();
st.executeUpdate("insert into complaint_circular(msg) values('"+cmsg+"')");


	out.println("<script>alter('sent....')</script>");


%>
<jsp:include page="adminhome.jsp"></jsp:include>
 <%
}catch(Exception e)
{
	e.printStackTrace();

}
  %>

</body>
</html>