<%--
  Created by IntelliJ IDEA.
  User: 28756
  Date: 2023/12/23
  Time: 22:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body id="container">
<div id="left">
    <div id="welcome">Welcome</div>
    <div id="logo"><img src="img\Snipaste_2023-12-23_16-12-39.png" alt="Welcome!"></div>
    <div id="register"><a href="" alt="register now!">Register now</a></div>
</div>
<div id="right">
    <div id="login">
        <div id="login_title">Log in</div>
        <form action="LoginServlet" method="post">
            <input type="text" placeholder="Email or Username" name="username">
            <br>
            <input type="password" placeholder="Password" name="password">
            <br>
            <input type="checkbox" id="remember" name="remember">
            <label for="remember">Keep me logged in</label>
            <br>
            <input type="submit" value="Log in">
            <a href="#">Forgot your password?</a>
        </form>
    </div>
    <div id="other">
        <div id="other_title">Or sign in with</div>
        <ul>
            <li><a href="#">Google</a></li>
            <li><a href="#">Facebook</a></li>
            <li><a href="#">Twitter</a></li>
        </ul>
    </div>
</div>
</body>
</html>
