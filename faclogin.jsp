<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="login.css">
</head>
<body>
    <div class="container">
        <div class="left-panel">
            <div class="brand">
                 <h2>Student Login Form</h2>
            </div>
            <p>Create New Account <a href="facregister.jsp">Click</a></p>
            <p class="description"></p>
            <button class="learn-more">Learn More</button>
        </div>
        <div class="right-panel">
            <form class="login-form" action="facvalide.jsp" method="post">
                <h2>Login</h2>
                <label for="name">Username</label>
                <input type="text" id="name" name="name" >
                <label for="password">Password</label>
                <input type="password" id="password" name="pwd">
                <input type="submit" value="Login" class="signup-button">
             </form>
        </div>
    </div>
</body>
</html>