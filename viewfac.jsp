<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="commonthem.css">	
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
crossorigin="anonymous">

</head>
<body>   
<header> 
        <div class="header-content">
            <nav>
                <ul>
            <li><a class="active" href="home.html">Home</a></li>
            <li><a href="viewstd.jsp">View Student</a></li>
            <li><a href="viewfac.jsp">View Faculty</a></li>
            <li><a href="viewcir.jsp">View Circular</a></li>
            <li><a href="viewcomp.jsp">View Complaints</a></li>
            <li><a href="compose.jsp">Compose</a></li>
            <li><a href="circular.jsp">Post Circular</a></li>
             
                </ul>
            </nav>
            <div class="search-bar">
                <input type="text" placeholder="Search Now">
            </div>
        </div>
    </header>                 
 <%
 try {
		//1. register teh driver
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		//2.create connection
	Connection con1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sri1234");
		//3.create statement
		Statement st=con1.createStatement();
		out.println("<table class='table table-hover'>");
		out.print("<tr><td><b>FIRSTNAME</b></td><td><b>LASTNAME</b></td>");
		out.print("<td><b>USERNAME</b></td><td><b>PASSWORD</b></td><td><b>LOCATION</b></td>");
		out.print("<td><b>MOBILE NO</b></td><td><b>DEPARTMENT</b></td></tr>");
		//4.run the queries  insert query  
		ResultSet rs= st.executeQuery("select * from faculity");
		while(rs.next()){
		out.print("<tr><td>"+rs.getString(1)+"</td>");
		out.print("<td>"+rs.getString(2)+"</td>");
		out.print("<td>"+rs.getString(3)+"</td>");
		out.print("<td>"+rs.getString(4)+"</td>");
		out.print("<td>"+rs.getString(5)+"</td>");
		out.print("<td>"+rs.getString(6)+"</td>");
		out.print("<td>"+rs.getString(7)+"</td></tr>");
		}
		out.println("</table>");
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
