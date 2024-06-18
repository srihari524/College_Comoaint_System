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
<link rel="stylesheet" href="textarea.css">	
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
            <li><a href="about.jsp">About us</a></li>
            <li><a href="contact.jsp">Contact us</a></li>
                </ul>
            </nav>
            <div class="search-bar">
                <input type="text" placeholder="Search Now">
            </div>
        </div>
    </header> 
   <div class="form-container">
        <form action="validate5.jsp" method="post">
            <h2>Compose Form</h2>
            <label for="name">Student Username</label>
            <input type="text" id="name" name="name" placeholder="Enter student name"/><br>
            <label for="comp">RESPONSE</label>
            <textarea id="comp" rows="5" cols="50" name="comp" placeholder="Enter your comments"></textarea><br>
            <input type="submit" value="Post"/>
        </form>
    </div>     
</body>
</html>
