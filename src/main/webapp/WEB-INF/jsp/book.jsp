<%--
  Created by IntelliJ IDEA.
  User: wei
  Date: 2020/4/13
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>图书界面</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/layui/css/layui.css" media="all">
    <script typet="text/javascript" src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/layui/css/layui.css">
    <script src="<%=request.getContextPath()%>/resources/layui/layui.all.js"></script>
</head>
<body>
<!--  通过三元表单式判断身份 -->
<div  style="font-size: 25px;color: #FD482C;padding-left: 40%">
${sessionScope.userSession.usertype == 1 ? "系统管理员" : "普通用户"}
</div>


</body>
</html>