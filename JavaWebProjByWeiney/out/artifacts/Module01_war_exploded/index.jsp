<%--
  Created by IntelliJ IDEA.
  User: Weiney
  Date: 2022/12/06
  Time: 23:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>登录系统</title>
  </head>
  <%-- style属性text-align: center，使内容整体居中 --%>
  <body style="text-align: center">
  <%-- 标题标签 --%>
  <h1>Author：Weiney</h1>
  <h2>欢迎登录本系统</h2>
  <%-- 横线标签 --%>
  <hr>
  <%-- 此时我们先在form表单提交目的路径用 # 占位，之后确定了处理的Servlet之后再填写 --%>
  <form action= "${pageContext.request.contextPath}/LoginServlet" method="post">
    <h3>用户名：<input type="text" name="username"></h3>
    <%-- &nbsp; 这个是html中的占位符，相当于空格，因为在html中，不论有几个空格，默认还是一个空格处理--%>
    <h3>密&nbsp;&nbsp;码：<input type="password" name="password"></h3>
    <input type="submit" value="登录">
    <input type="reset" value="重置">
  </form>
  </body>
</html>
