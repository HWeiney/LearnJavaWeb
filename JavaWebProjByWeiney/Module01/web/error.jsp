<%--
  Created by IntelliJ IDEA.
  User: Weiney
  Date: 2022/12/07
  Time: 21:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录失败</title>
</head>
<body style="text-align: center">
  <h1>Author：Weiney</h1>
  <%-- 使用链接标签，用于跳转到登录界面，此处的【/index.jsp】可写可不写 --%>
  <%-- 因为Tomcat服务器会默认打开名为index的文件作为启动页 --%>
  <h2><a href="${pageContext.request.contextPath}/index.jsp">用户名密码错误，点击我请重新登录</a></h2>
</body>
</html>
