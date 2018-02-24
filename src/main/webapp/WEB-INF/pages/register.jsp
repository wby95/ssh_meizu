<%@ taglib prefix="s" uri="/struts-tags" %>
<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="user_registerin.action" method="post">
    <input name="username" type="text" placeholder="   Flyme账号/手机号" style="width: 300px;height: 46px;border: 1px solid #DADADA" v-model="username" required="required"><br>
    <input name="password" type="password" placeholder="   密码" style="width: 300px;height: 46px;border: 1px solid #DADADA;margin-top: 30px" v-model="password" required="required"><br>
    <button type="submit" >注册</button>
</form>