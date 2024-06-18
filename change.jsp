<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<div class="right-panel">
            <form class="login-form" action="update.jsp" method="post">
                <h2>Register</h2>
                <label for="name">Username</label>
                <input type="text" id="name" name="myuser" >
                <label for="password">New Password</label>
                <input type="password" id="password" name="mypwd1">
                <label for="password">Confirm Password</label>
                <input type="text" id="password" name="mypwd2">
                <input type="submit" value="Change Password" class="signup-button">
             </form>
        </div>
</div>
</body>
</html>