<%--
  Created by IntelliJ IDEA.
  User: wei
  Date: 2020/4/13
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<form  action="${pageContext.request.contextPath }/dologin"  method="post" >
    <div class="info">${error }</div>
    <div class="inputbox">
        <%--@declare id="user"--%><label for="user">用户名：</label>
        <input type="text" class="input-text"  name="nickname" placeholder="请输入用户名" required/>
    </div>
    <div class="inputbox">
        <%--@declare id="mima"--%><label for="mima">密码：</label>
        <input type="password"  name="password" placeholder="请输入密码" required/>
    </div>
    <div class="subBtn">

        <input type="submit" value="登录"/>
        <input type="reset" value="重置"/>
    </div>
</form>
</body>
</html>
