<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/15
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

     登录用户名：<s:property  value="#session.existUser.username"></s:property><br>
     登录用户名：${existUser.username}

<a href="user_logout.action">退出：</a>
</body>
</html>
