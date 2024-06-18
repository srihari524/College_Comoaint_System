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
cmsg=request.getParameter("comp");
String u=session.getAttribute("stdusername").toString();    

    
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","computer");
	Statement st=con.createStatement();
st.executeUpdate("insert into complaint_std(stdname,msg) values('"+u+"','"+cmsg+"')");


	out.println("sent....");


%>
<jsp:include page="studenthome.jsp"></jsp:include>
 <%
}catch(Exception e)
{
	e.printStackTrace();

}
  %>

</body>
</html>