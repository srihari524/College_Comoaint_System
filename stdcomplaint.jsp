<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="commonthem.css">
<link rel="stylesheet" href="textarea.css">		
</head>
<body>
<header> 
        <div class="header-content">
            <nav>
                <ul>
            <li><a class="active" href="home.html">Home</a></li>
            <li><a href="stdcomplaint.jsp">Raise Complaint</a></li>
            <li><a href="viewcir.jsp">View Circluars</a></li>
             <li><a href="stdinbox.jsp">InBox</a></li>
                </ul>
            </nav>
            <div class="search-bar">
                <input type="text" placeholder="Search Now">
            </div>
        </div>
    </header>
<h1>Hi....<%=session.getAttribute("stdusername").toString() %></h1>    
<div class="form-container">
        <form action="validate4.jsp" method="post">
            <h2>Raise Complaint</h2>
            <label for="comp">Complaint</label>
            <textarea id="comp" rows="5" cols="50" name="comp" placeholder="Enter your message"></textarea><br>
            <input type="submit" value="Post"/>
        </form>
    </div>     
</body>
</html>