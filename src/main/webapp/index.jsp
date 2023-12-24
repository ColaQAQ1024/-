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
<body>
<h2>${sessionScope.user.username},欢迎进入主页面！</h2>
</body>
</html>