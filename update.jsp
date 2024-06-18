<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String user,pwd1,pwd2;
user=request.getParameter("myuser");
pwd1=request.getParameter("mypwd1");
pwd2=request.getParameter("mypwd2");
try {
	//1. register teh driver
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	//2.create connection
Connection con1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sri1234");
	//3.create statement
	Statement st=con1.createStatement();
	
	//4.run the queries  insert query  
	ResultSet rs= st.executeQuery("select * from complaint_student where username='"+user+"'");
	if(rs.next())
	{
		 
		if(pwd1.equals(pwd2))
		{
			st.executeUpdate("update complaint_student set pwd='"+pwd1+"' where username='"+user+"'");
			out.println("<p style='color:red'>password updated</p>");
		}
		else{
			out.println("<p style='color:red'>password mismatched</p>");
		request.getRequestDispatcher("student.jsp").include(request, response);
		}
	}
	else
	{
		out.println("<script>alert('Invalide Username')</script>");
	
	}
	//5.close the connec
	con1.close();
}
catch (Exception e) {
	// TODO: handle exception
	e.printStackTrace();
} 
	 
		

%>
</body>
</html>