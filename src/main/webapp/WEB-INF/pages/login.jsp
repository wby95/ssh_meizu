<%@ taglib prefix="s" uri="/struts-tags" %>
<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"  content="width=device-width, initial-scale=1">
    <meta name="format-detection" content="telephone=no">
    <title>Flyme账号 - 登陆</title>
    <link href="${pageContext.request.contextPath}/css/login.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/animate.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/vue.js"></script>
</head>
<body>
<div class="container">
    <div class="header clearfix">
        <div class="header_logo">
            <a href="index.html" class="navbar-brand"><img src="./img/logo-new-toggle@2x_52c2068.png" width="115px" height="20px"> </a>
        </div>
    </div>
    <div class="login_container">
        <div class="login_box" style="width: 350px;height: 400px;background-color: white">
            <div class="login_box_header">
                <a href="javascript:void(0)" style="margin-right: 20px" class="on">账号登陆</a> |
                <a href="javascript:void(0)" style="margin-left: 20px">验证码登陆</a>
            </div>
            <div class="login_box_form" >
              <%--  <form action="shopping_cart.html">--%>
                <form action="user_login.action" method="post">
                    <input name="username" type="text" placeholder="   Flyme账号/手机号" style="width: 300px;height: 46px;border: 1px solid #DADADA" v-model="username" required="required"><br>
                    <input name="password" type="password" placeholder="   密码" style="width: 300px;height: 46px;border: 1px solid #DADADA;margin-top: 30px" v-model="password" required="required"><br>
                    <div style="margin-top: 20px;margin-left: 30px"><input type="checkbox" style="position: relative;left: 0px">记住登陆状态</div>
                    <button class="btn btn-primary" style="width: 300px;height: 46px;background-color: #00a7ea;border: none;margin-top: 20px" @click="submit()">登陆</button>
                    <br>
                    <div class="login_box_footer clearfix" style="margin-top: 10px;margin-left: 30px;width: 300px">
                        <a href="javascript:void(0)" style="float: left">注册</a>
                        <a href="javascript:void(0)" style="float: right">忘记密码?</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div id="footer">
        <p>&copy;2017 ToZ LAB Design for Meizu Telecom Equipment Co., Ltd. All rights reserved. </p>
    </div>
</div>
<script>
    new Vue({
        el:".container",
        data:{
            password:"",
            username:""
        },
        methods:{
            submit(){
                if(this.username==null||this.username==""||this.password==null||this.password==""){

                }
            }
        }
    });
</script>
</body>
</html>