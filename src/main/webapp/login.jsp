<%--
  Created by IntelliJ IDEA.
  User: 28756
  Date: 2023/12/23
  Time: 22:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>welcome</title>
    <link rel="stylesheet" href="css\login.css">
</head>
<body id="container">
<div id="left">
    <div id="welcome">Welcome!</div>
    <div id="logo"><img src="img\Snipaste_2023-12-23_16-12-39.png" alt="Welcome!"></div>
    <div id="register"><a href="register.jsp" alt="register now!">Register now</a></div>
</div>
<div id="right">
    <div id="login">
        <div id="login_title">Log in</div>
        <span style="color: rgb(247, 84, 100); margin-left: 100px">${error}</span>
        <form id="actionForm" action="LoginServlet" method="post">
            <p>EMAIL OR USERNAME</p>
            <input type="text" placeholder="Email or Username" name="username">
            <p>PASSWORD</p>
            <input type="password" placeholder="Password" name="password">
            <br>
            <input type="checkbox" id="remember">
            <label for="remember">Keep me logged in</label>
            <br>
            <input id="log" type="submit" value="LOG IN NOW">
            <br>
            <a id="forgot" href="#">Forgot your password?</a>
        </form>
    </div>
    <div id="other">
        <div id="other_title">Or sign in with</div>
        <ul>
            <li><a href="#"><p><img src="img\Google-removebg-preview.png" alt="Google">Google</p></a></li>
            <li><a href="#"><p><img src="img\Facebook-removebg-preview.png" alt="Facebook">Facebook</p></a></li>
            <li><a href="#"><p><img src="img\Twitter-removebg-preview.png" alt="Twitter">Twitter</p></a></li>
        </ul>
    </div>
</div>
</body>
</html>
