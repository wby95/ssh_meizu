<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="S" uri="/struts-tags" %>
<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>魅族PRO 6s - 魅族商城</title>
    <link href="css/shopping_show.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
</head>

<body onLoad="handleLoad()">
<div class="content">
    <div class="header">
        <div class="clearfix">
            <h class="logo"><img src="./img/logo-new-toggle@2x_52c2068.png" width="115px" height="20px"></h>
            <ul class="nav" id="navul">
                <li><a href="./index.html">首页</a></li>
                <li class="nav-product" id="nav-product"><a href="#">产品</a>
                    <dl>
                        <dd><a href="product_para.html"><img src="./img/pro6plus_e6bf23a.png" class="img-pro6p"><a class="nav-dd-pro6p">PRO 6 Plus</a></a></dd>
                        <dd><a href="product_para.html"><img src="./img/pro6s_e769573.png" class="img-pro6s"><a class="nav-dd-pro6s" href="product_para.html">PRO 6s</a></a></dd>
                        <dd><a href="product_para.html"><img src="./img/mx6_23e5fc6.png" class="img-mx6"><a class="nav-dd-mx6" href="product_para.html">MX6</a></a></dd>
                        <dd><a href="product_para.html"><img src="./img/m3x_9846898.png" class="img-mlX"><a class="nav-dd-mlX" href="product_para.html">魅蓝X</a></a></dd>
                    </dl>
                </li>
                <li><a href="#">商店</a></li>
                <li><a href="#">服务</a></li>
                <li><a href="flyme_index.html">Flyme</a></li>
            </ul>
            <div class="login">
                <a href="login.html">注册</a><a>|</a><a href="login.html">登陆</a>
            </div>
        </div>
    </div>
    <div class="details clearfix">
        <section class="row clearfix">
            <div class="imgdesc">
                <div class="preview">
                    <img src="${pageContext.request.contextPath}/<s:property value="model.image"/>" width="395" class="bigimg">
                </div>
                <div class="smallimg">
                    <ul>
                        <li>
                            <img src="./img/CnQOjVgaoHCAElUeAAt-NlibcLE021.png680x680.jpg" width="75" class="simg-1 simg-selected simg" onClick="imgchange(simg1)">
                        </li>
                        <li>
                            <img src="./img/CnQOjVgaoG6AFdBvAARSVT1Ofl4789.png680x680 (1).jpg" width="75" class="simg-2 simg" onClick="imgchange(simg2)">
                        </li>
                        <li>
                            <img src="./img/Cix_s1gaoHCAXy2aAAV67G8l3X0685.png680x680 (1).jpg" width="75" class="simg-3 simg" onClick="imgchange(simg3)">
                        </li>
                        <li>
                            <img src="./img/CnQOjVgaoHKAdz42AAJngEiD5r0412.png680x680 (1).jpg" width="75" class="simg-4 simg" onClick="imgchange(simg4)">
                        </li>
                    </ul>
                </div>
            </div>
            <div class="property clearfix">
                <div class="property-hd">
                    <h1><S:property value="model.pname"></S:property></h1>
                    <p><s:property value="model.pdesc"></s:property></p>
                </div>
                <div class="property-price">
                    <a>价&nbsp;&nbsp;&nbsp;&nbsp;
                        格：</a><span><s:property value="model.price"></s:property></span>
                </div>
                <div class="property-select">
                    <dl>
                        <dt>网络类型：</dt>
                        <dd class="property-select-nettype"><a href="#"><span>全网通公开版</span></a></dd>
                        <dt class="property-select-color-lab">颜色分类：</dt>
                        <dd class="property-select-color rose" onClick="rosechange()"><a href="#"><img src="./img/Cix_s1gaoBuAJthwAA1jPCtyxxQ181.png80x80.png" width="32"><span>玫瑰金</span></a></dd>
                        <dd class="property-select-color gold" onClick="goldchange()"><a href="#" ><img src="./img/CnQOjVgaoE2AeO-qAA2BsUgqVWc879.png80x80.png" width="32"><span>香槟金</span></a></dd>
                        <dd class="property-select-color black selected" onClick="blackchange()"><a href="#"><img src="./img/Cix_s1gaoG-AJ-cpAAqULbIBw-M082.png80x80.png" width="32"><span>星空黑</span></a></dd>
                        <dt>内存容量：</dt>
                        <dd class="property-select-rom"><a href="#"><span>64G</span></a></dd>
                    </dl>
                </div>
                <div class="property-support clearfix">
                    <dl>
                        <dt>支&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;持：</dt>
                        <dd class="support-dd"><img src="img/对勾.png"><span>花呗分期</span></dd>
                        <dd class="support-dd"><img src="img/对勾.png"><span>百城速达</span></dd>
                        <dd class="support-dd"><img src="img/对勾.png"><span>顺丰包邮</span></dd>
                        <dd class="support-dd"><img src="img/对勾.png"><span>7天无理由退货</span></dd>
                        <dt>服&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;务：</dt>
                        <dd><span>本商品由 魅族 负责发货并提供售后服务</span></dd>
                    </dl>
                </div>
                <div class="numandbuy clearfix">
                    <div class="num">
                        <dt>数&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;量：</dt>
                        <div class="num-box">
                            <input type="number" value="1" max="5" min="1"  name="buynum" onkeyup="numCheck()" onChange="pricechange()" >
                        </div>
                    </div>
                    <a class="buy" href="shopping_cart.html"><span>立即购买</span></a>
                </div>
            </div>
        </section>

    </div>
    <div class="productdetail">
        <div class="pd-header">
            <ul>
                <li class="pd-hd-selected"><a>商品详情</a></li>
                <li><a>规格参数</a></li>
                <li><a>常见问题</a></li>
            </ul>
        </div>

        <section class="pd-section clearfix">
            <p>
                <img src="./img/CnQOjVgb8CmAFK1FAANdR22LNqk020.jpg">
                <img src="./img/CnQOjVgbBSmAHD3CAAEmRmHbK6A573.jpg">
                <img src="./img/CnQOjVgbBSqAH9C6AAEBdMVpaDA739.jpg">
                <img src="./img/Cix_s1gbBSqAeO08AAF2aYXzG14562.jpg">
                <img src="./img/CnQOjVgbBSqASj-RAAGORXNJAlk080.jpg">
                <img src="./img/Cix_s1gbBSuAVnTQAAD7uwL4bbg312.jpg">
                <img src="./img/CnQOjVgbBSuAEcEAAAIEJ-A-zTY768.jpg">
                <img src="./img/CnQOjVgbBSuAIf9bAAFLz9-IxWI624.jpg">
                <img src="./img/CnQOjVgbBSyAGN_8AADelItZgys551.jpg">
                <img src="./img/Cix_s1gbBSyARG9_AAFbb1kUOTE065.jpg">
                <img src="./img/Cix_s1gbBSuAeIP4AAGNmFNXqFc787.jpg">
                <img src="./img/CnQOjVgbBSyAKPAaAACHfbU2Tp0218.jpg">
            </p>
        </section>
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
            <p>©2017 ToZ LAB Design for Meizu Telecom Equipment Co., Ltd. All rights reserved.  备案号：粤ICP备13003602号-2 经营许可证编号：粤B2-20130198</p>
        </div>
    </div>
</div>
<div class="hoverbar clearfix">
    <div class="bar-button">
        <a href="login.html"><span>现在购买</span></a>
    </div>
    <div class="bar-desc">
        <p>魅族PRO 6s</p>
        <span>￥2299.00</span>
        <label>全网通公开版 <a class="bar-color">星空黑</a> 64GB</label>
    </div>

</div>
<script type="text/javascript">
    var rosebox=$('.rose');
    var goldbox=$('.gold');
    var blackbox=$('.black');
    var simg1=$('.simg-1');
    var simg2=$('.simg-2');
    var simg3=$('.simg-3');
    var simg4=$('.simg-4');
    var bigimg=$('.bigimg');
    var simg=$('.simg');
    var hoverbar=$('.hoverbar');
    var productdetail=$('.productdetail');
    var buynum=$('input[name=buynum]');
    var totalprice=$('.bar-desc span');
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
    function handleLoad()
    {
        var list=document.getElementById("nav-product");
        var header=$('.header');
        var headera=$('.header a');
        var logo=$('.logo img');

        list.onmouseover=function(){
            showItem(this);
        }
        list.onmouseout=function(){
            hideItem(this);
        }
    }

    function rosechange(){
        blackbox.removeClass("selected");
        goldbox.removeClass("selected");
        rosebox.addClass("selected");
        simg1.attr("src","./img/CnQOjVgaoByAbEJwAA4t7Qnqigw892.png680x680.jpg");
        simg2.attr("src","./img/CnQOjVgaoBqABmgVAASUSOKl9Bo121.png680x680.jpg");
        simg3.attr("src","./img/Cix_s1gaoByAcCEEAAiV6z8lYNM553.png680x680.jpg");
        simg4.attr("src","./img/CnQOjVgaoB6AA5D9AAKkvhYacwM442.png680x680.jpg");
        bigimg.attr("src","./img/CnQOjVgaoByAbEJwAA4t7Qnqigw892.png680x680.jpg");


    }
    function goldchange(){
        blackbox.removeClass("selected");
        rosebox.removeClass("selected");
        goldbox.addClass("selected");
        simg1.attr("src","./img/Cix_s1gaoE2ARDhnAA5n-xkFzVA230.png680x680.jpg");
        simg2.attr("src","./img/Cix_s1gaoEuAFgw3AASDAP7Hcjk457.png680x680.jpg");
        simg3.attr("src","./img/CnQOjVgaoE6AHtyUAAikJxV-pcU660.png680x680.jpg");
        simg4.attr("src","./img/Cix_s1gaoFCAX5JTAALAWPh2aA8941.png680x680.jpg");
        bigimg.attr("src","./img/Cix_s1gaoE2ARDhnAA5n-xkFzVA230.png680x680.jpg");

    }
    function blackchange(){
        rosebox.removeClass("selected");
        goldbox.removeClass("selected");
        blackbox.addClass("selected");
        simg1.attr("src","./img/CnQOjVgaoHCAElUeAAt-NlibcLE021.png680x680.jpg");
        simg2.attr("src","./img/CnQOjVgaoG6AFdBvAARSVT1Ofl4789.png680x680 (1).jpg");
        simg3.attr("src","./img/Cix_s1gaoHCAXy2aAAV67G8l3X0685.png680x680 (1).jpg");
        simg4.attr("src","./img/CnQOjVgaoHKAdz42AAJngEiD5r0412.png680x680 (1).jpg");
        bigimg.attr("src","./img/CnQOjVgaoHCAElUeAAt-NlibcLE021.png680x680.jpg");
    }

    function imgchange(obj){
        bigimg.attr("src",obj.attr("src"));
        simg1.removeClass("simg-selected");
        simg2.removeClass("simg-selected");
        simg3.removeClass("simg-selected");
        simg4.removeClass("simg-selected");
        obj.addClass("simg-selected");

    }

    function pricechange(){
        var price=buynum.val()*2299.00;
        totalprice.text("￥"+price+".00");
    }

    function numCheck() {
        var num=buynum.val();
        if(num>5){
            buynum.attr("value","5");
        }

    }

    $(function(){
        $(window).scroll(function(){
            var hoverposition=productdetail.offset().top;
            var h=$(this).scrollTop();//获得滚动条距top的高度
            if(h>hoverposition){
                hoverbar.css("display","block");
            }
            else{
                hoverbar.css("display","none");
            }
        });
    });

</script>
</body>
</html>
