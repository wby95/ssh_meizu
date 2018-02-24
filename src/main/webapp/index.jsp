<%@ taglib prefix="s" uri="/struts-tags" %>
<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>魅族官网</title>
  <link href="${pageContext.request.contextPath}/css/index.css" type="text/css" rel="stylesheet">
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
  <link href="${pageContext.request.contextPath}/css/bootstrap.css" type="text/css" rel="stylesheet">
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js" ></script>
</head>

<body onLoad="handleLoad()">
<div class="contain">
  <div class="banner">
    <div class="banner-content">
      <ul id="bannerul">
        <li class="bimg"><div id="p1"></div> </li>
        <li class="bimg"><div id="p2"></div> </li>
        <li class="bimg"><div id="p3"></div> </li>
        <!--<li class="bimg"><div id="p4"></div> </li>-->
      </ul>
      <ul id="b_num">
        <li class="bno">&nbsp;&nbsp;&nbsp;&nbsp;</li>
        <li class="bno">&nbsp;&nbsp;&nbsp;&nbsp;</li>
        <li class="bno">&nbsp;&nbsp;&nbsp;&nbsp;</li>
        <!--<li class="bno">&nbsp;&nbsp;&nbsp;&nbsp;</li>-->
      </ul>
    </div>
  </div>
  <div class="header">
    <div class="clearfix">
      <h class="logo"><img src="./img/logo-new@2x_144f1bd.png" width="115px" height="30px"></h>
      <ul class="navs" id="navul">
        <li><a href="./index.html">首页</a></li>
        <li class="nav-product" id="nav-product"><a href="#">产品</a>
          <dl>
            <dd><a href="product_para.html"><img src="./img/pro6plus_e6bf23a.png" class="img-pro6p"><a class="nav-dd">PRO 6 Plus</a></a></dd>
            <dd><a href="product_para.html"><img src="./img/pro6s_e769573.png" class="img-pro6s"><a class="nav-dd" href="product_para.html">PRO 6s</a></a></dd>
            <dd><a href="product_para.html"><img src="./img/mx6_23e5fc6.png" class="img-mx6"><a class="nav-dd" href="product_para.html">MX6</a></a></dd>
            <dd><a href="product_para.html"><img src="./img/m3x_9846898.png" class="img-mlX"><a class="nav-dd" href="product_para.html">魅蓝X</a></a></dd>
          </dl>
        </li>
        <li><a href="mall_show.html">商城</a></li>
        <li><a href="javascript:void(0)">服务</a></li>
        <li><a href="flyme_index.html" target="_blank">Flyme</a></li>
      </ul>
      <div class="login">
        <a href="user_register.action">注册</a><a>|</a><a href="index.action">登陆</a>
      </div>
    </div>
  </div>
  <div class="clearfix row fourAd">
    <CENTER>
      <div class="col-md-3">
        <div class="adbox ad1 thumbnail" style="border: none">
          <a href="shopping_show.html">
            <img src="./img/1494576732598.png">
            <h4>魅友福利</h4>
            <span>各种惊喜等你开启</span>
          </a>
        </div>
      </div>
      <div class="col-md-3">
        <div class="adbox ad2 thumbnail" style="border: none">
          <a href="shopping_show.html">
            <img src="./img/1494414801303.jpg">
            <h4>Super mCharge</h4>
            <span>20分钟充满不发热</span>
          </a>
        </div>
      </div>
      <div class="col-md-3">
        <div class="adbox ad3 thumbnail" style="border: none">
          <a href="shopping_show.html">
            <img src="./img/Cgbj0FkT__6APeZnAADXNC3gCSc063.png">
            <h4>PRO 6Plus</h4>
            <span>购机赠EP2X耳机 12期免息</span>
          </a>
        </div>
      </div>
      <div class="col-md-3">
        <div class="adbox ad4 thumbnail" style="border: none">
          <a href="shopping_show.html">
            <img src="img/Cgbj0FkT__6Aa09AAABJoSnJFv8299.png">
            <h4>魅蓝Note5</h4>
            <span>16G版限时特惠 100元6期免息</span>
          </a>
        </div>
      </div>
    </CENTER>
  </div>
  <div class="fiveser clearfix row ">

    <ul class="serul container">
      <CENTER>
        <li class="col-md-3 ">
          <div class="thumbnail">
            <a href="javascript:void(0)">
              <img src="./img/icon-server_01@2x_35d4d97.png" width="60px" height="60px">
              <br><span>查询真伪</span>
            </a>
          </div>
        </li>
        <li class="col-md-3">
          <div class="thumbnail">
            <a href="javascript:void(0)">
              <img src="./img/icon-server_02@2x_3a3862d.png" width="60px" height="60px">
              <br><span>系统下载</span></div>
          </a>
        </li>
        <li class="col-md-3">
          <div class="thumbnail">
            <a href="javascript:void(0)">
              <img src="./img/icon-server_03@2x_df879f6.png" width="60px" height="60px">
              <br><span>注册产品</span>
            </a>
          </div>
        </li>
        <li class="col-md-3">
          <div class="thumbnail">
            <a href="javascript:void(0)">
              <img src="./img/icon-server_04@2x_7e0018e.png" width="60px" height="60px">
              <br><span>查找手机</span>
            </a>
          </div>
        </li>
        <li class="col-md-3">
          <div class="thumbnail">
            <a href="javascript:void(0)">
              <img src="./img/icon-server_05@2x_9fb6660.png" width="60px" height="60px">
              <br><span>换机助手</span>
            </a>
          </div>
        </li></CENTER>
    </ul>

  </div>
  <div class="care clearfix">
    <div class="care-desc">
      <h2>魅族授权服务体验中心</h2>
      <p>为您提供优质的售后服务</p>
      <a href="#">查看附近的服务中心</a>
    </div>
  </div>
  <div class="section footer">
    <div class="footer-link">
      <div class="clearfix">

        <table class="foottable">
          <tr>
            <td><img src="./img/sf.png" class="tinyicon"><a>顺丰包邮</a></td>
            <td><img src="./img/nextarrive.png"  class="tinyicon"><a>100+城市次日送达</a></td>
            <td><img src="./img/7days.png" class="tinyicon"><a>7天无理由退货</a></td>
            <td><img src="./img/15days.png" class="tinyicon"><a>15天换货保障</a></td>
          </tr>

          <tr>
            <td><img src="./img/1years.png" class="tinyicon"><a>1年免费保修</a></td>
            <td><img src="./img/2300.png" class="tinyicon"><a>2300+线下体验店</a></td>
            <td><img src="./img/further.png" class="tinyicon"><a>远程支持服务</a></td>
            <td><img src="./img/fix.png" class="tinyicon"><a>上门快修</a></td>
          </tr>
        </table>
      </div>
    </div>
    <div class="copyright">
      <p>©2017 ToZ LAB Design for Meizu Telecom Equipment Co., Ltd. All rights reserved. </p>
    </div>
  </div>
</div>
<script type="text/javascript">
    var interval,hasstarted=false,curIndex=0;
    $(function(){
        var length=$(".bimg").length;
        $(".bimg:not(:first)").hide();
        $(".bno:first").css("background","rgba(255,255,255,0)");
        $(".bno:first").addClass("b_num_selected");

        $(".bno").click(function(){
            var preIndex=$(".bno").filter(".b_num_selected").index();
            curIndex=$(this).index();
            play(preIndex,curIndex);
            stop();
            start();
        });

        function play(preIndex,curIndex){
            $(".bimg").eq(preIndex).fadeOut(10);
            $(".bimg").eq(curIndex).fadeIn(10);
            $(".bno").removeClass("b_num_selected");
            $(".bno").eq(preIndex).css("background","#fff");
            $(".bno").eq(curIndex).addClass("b_num_selected");
            $(".bno").eq(curIndex).css("background","rgba(255,255,255,0)");
        }

        function start(){
            if(!hasstarted){
                hasstarted=true;
                interval=setInterval(next,5000);
            }
        }

        function next(){
            var preIndex=$(".bno").filter(".b_num_selected").index();
            curIndex=++curIndex%length;
            play(preIndex,curIndex);
        }

        function stop(){
            clearInterval(interval);
            hasstarted=false;
        }
        start();

    });
    function showItem(obj)
    {

        setVisable(obj,true);
    }

    function hideItem(obj)
    {
        setVisable(obj,false);
    }
    function setVisable(obj,flag){
        var childs=obj.childNodes;

        for(var i=0;i<childs.length;i++){
            if(childs[i].nodeType==1 && childs[i].nodeName=="DL"){
                if(flag)
                {
                    childs[i].style.display="block";
                }
                else{
                    childs[i].style.display="none";
                }
            }

        }
    }
    function handleLoad(){
        var list=document.getElementById("nav-product");
        var header=$('.header');
        var headera=$('.header a');
        var logo=$('.logo img');
        list.onmouseover=function(){
            header.css("background","#fff");
            headera.css("color","#000");
            logo.attr("src","./img/logo-new-toggle_294da7f.png");
            showItem(this);
        }
        list.onmouseout=function(){
            hideItem(this);
            header.css("background","");
            headera.css("color","#fff");
            logo.attr("src","./img/logo-new@2x_144f1bd.png");
        }
    }


</script>
</body>
</html>
