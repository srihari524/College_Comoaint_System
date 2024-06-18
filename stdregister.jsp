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
                <h1>Fauget</h1>
            </div>
            <h2>Create New Account</h2>
            <p>Already Registered? <a href="stdlogin.jsp">Login</a></p>
            <p class="description"><ul>
            <li>Password must conatain 8 letters.</li>
            <li>Password should atleat one @,#,_.</li>
            <li>Password should atleat one Capital Letter.</li>
            </ul></p>
        </div>
        <div class="right-panel">
            <form class="login-form" action="regvalidate.jsp" method="post">
                <h2>Register</h2>
                <label for="name">Username</label>
                <input type="text" id="name" name="name" >
                <label for="password">Password</label>
                <input type="password" id="password" name="pwd">
                <label for="password">Department</label>
                <input type="text" id="password" name="college">
                <label for="password">Register No</label>
                <input type="text" id="password" name="regno">
                <label for="password">Mobile No</label>
                <input type="text" id="password" name="mobile">
                <input type="submit" value="Sign-Up" class="signup-button">
             </form>
        </div>
    </div>
</body>
</html>