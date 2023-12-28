<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<!—使用taglib指令导入JSTL  -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 如果session中没有user信息则跳转到login.jsp页面 -->
<c:if test="${empty sessionScope.user}">
    <c:if test="${not empty cookie['userId']}">
        <jsp:forward page="cookie"></jsp:forward><%-- 使用<jsp:forward>跳转  --%>
    </c:if>
    <jsp:forward page="login.jsp" ></jsp:forward><%-- 使用<jsp:forward>跳转  --%>
</c:if>
<html>
<head>
    <title>我的个人网站</title>
    <style>
        /* 设置网页的背景颜色为黑色 */
        body {
            font-family: Arial, sans-serif;
            background-color: black;
        }
        .container {
            width: 80%;
            margin: auto;
        }
        #bio, #resume, #contact {
            margin-bottom: 50px;
        }
        /* 设置标题的颜色为白色 */
        h1, h2 {
            color: white;
        }
        /* 设置段落的颜色为灰色 */
        p {
            color: gray;
        }
        /* 设置一个类名为cat的样式，用于显示猫猫的图片 */
        .cat {
            width: 200px;
            height: 200px;
            border-radius: 50%;
            margin: 10px;
            display: inline-block;
        }
        /* 设置一个类名为rotate的样式，用于给猫猫的图片添加旋转的动画效果 */
        .rotate {
            animation: spin 3s linear infinite;
        }
        /* 定义一个名为spin的关键帧动画，让元素从0度旋转到360度 */
        @keyframes spin {
            from {
                transform: rotate(0deg);
            }
            to {
                transform: rotate(360deg);
            }
        }
    </style>
</head>
<body>
<div class="container">
    <h1>欢迎来到${sessionScope.user.username}的个人网站</h1>

    <div id="bio">
        <h2>个人简介</h2>
        <p>在这里写下你的个人简介。</p>
        <img src="img\cat1.png" alt="一只白色的猫猫" class="cat rotate">
        <img src="img\cat2.png" alt="一只黑色的猫猫" class="cat">
        <img src="img\cat3.png" alt="一只橘色的猫猫" class="cat rotate">
    </div>

    <div id="resume">
        <h2>简历</h2>
        <p>在这里写下你的简历。</p>
        <img src="img\cat4.png" alt="一只灰色的猫猫" class="cat">
        <img src="img\cat5.png" alt="一只花色的猫猫" class="cat rotate">
        <img src="img\cat6.png" alt="一只棕色的猫猫" class="cat">
    </div>

    <div id="contact">
        <h2>联系方式</h2>
        <p>在这里写下你的联系方式。</p>
        <img src="img\cat7.png" alt="一只白黑相间的猫猫" class="cat rotate">
        <img src="img\cat8.png" alt="一只白橘相间的猫猫" class="cat">
        <img src="img\cat9.png" alt="一只黑灰相间的猫猫" class="cat rotate">
    </div>
</div>

<script>
    // 在这里添加你的JavaScript代码
</script>
</body>
</html>
