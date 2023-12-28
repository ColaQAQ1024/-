<%--
  Created by IntelliJ IDEA.
  User: 28756
  Date: 2023/12/24
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
    <title>注册猫猫星球</title>
    <style>
        /* 设置网页的字体和背景颜色 */
        body {
            font-family: Arial, sans-serif;
            background-color: rgba(233, 233, 233);
        }
        /* 设置一个类名为container的样式，用于居中网页内容 */
        .container {
            width: 80%;
            margin: auto;
        }
        /* 设置一个类名为logo的样式，用于显示猫猫星球的logo */
        .logo {
            width: 200px;
            height: 200px;
            margin: 20px auto;
            display: block;
        }
        /* 设置一个类名为form的样式，用于显示注册表单 */
        .form {
            width: 400px;
            margin: 20px auto;
            padding: 20px;
            background-color: white;
            /* 使用Win11风格的圆角和阴影效果 */
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        /* 设置表单内的元素的样式 */
        .form h1 {
            text-align: center;
            color: #333;
        }
        .form label {
            display: block;
            margin: 10px 0;
            color: #333;
        }
        .form input {
            display: block;
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            /* 使用Win11风格的圆角效果 */
            border-radius: 5px;
        }
        .form button {
            display: block;
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            background-color: #333;
            color: white;
            border: none;
            /* 使用Win11风格的圆角效果 */
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<div class="container">
    <!-- 使用猫猫星球的logo图片 -->
    <img src="img\logo.png" alt="猫猫星球" class="logo">
    <span style="color: rgb(247, 84, 100); margin: auto; display: block; width: 160px">${errorByRegister}</span>
    <!-- 创建一个注册表单，包括用户名、密码、邮箱、生日和提交按钮 -->
    <div class="form">
        <h1>注册猫猫星球</h1>
        <form action="RegisterServlet" method="post">
            <label for="username">用户名</label>
            <input type="text" id="username" name="username" placeholder="请输入用户名" required>
            <label for="password">密码</label>
            <input type="password" id="password" name="password" placeholder="请输入密码" required>
            <label for="email">邮箱</label>
            <input type="email" id="email" name="email" placeholder="请输入邮箱" required>
            <!-- 添加一个日期选择器，让用户可以选择他们的生日 -->
            <label for="birthday">生日</label>
            <input type="date" id="birthday" name="birthday" required>
            <button type="submit">注册</button>
        </form>
    </div>
</div>

<script>
    // 在这里添加你的JavaScript代码
</script>
</body>
</html>
