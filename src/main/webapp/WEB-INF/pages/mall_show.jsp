<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib prefix="S" uri="/struts-tags" %>
<html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=1240">
    <meta name="format-detection" content="telephone=no">
    <title>魅族官网在线商店</title>
    <link href="css/mall_show.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/vue.js"></script>

</head>
<body>
<div class="header clearfix">
    <h class="logo"><img src="./img/logo-new-toggle@2x_52c2068.png" width="115px" height="30px"></h>
    <ul class="navs" id="navul">
        <li><a href="./index.html">首页</a></li>
        <li class="nav-product" id="nav-product"><a href="#">产品</a>
            <dl>
                <dd><a href="shopping_show.html"><img src="./img/pro6plus_e6bf23a.png" class="img-pro6p"><a
                        class="nav-dd">PRO 6 Plus</a></a></dd>
                <dd><a href="shopping_show.html"><img src="./img/pro6s_e769573.png" class="img-pro6s"><a class="nav-dd"
                                                                                                         href="product_para.html">PRO
                    6s</a></a></dd>
                <dd><a href="shopping_show.html"><img src="./img/mx6_23e5fc6.png" class="img-mx6"><a class="nav-dd"
                                                                                                     href="product_para.html">MX6</a></a>
                </dd>
                <dd><a href="shopping_show.html"><img src="./img/m3x_9846898.png" class="img-mlX"><a class="nav-dd"
                                                                                                     href="product_para.html">魅蓝X</a></a>
                </dd>
            </dl>
        </li>
        <li><a href="shopping_show.html">商城</a></li>
        <li><a href="javascript:void(0)">服务</a></li>
        <li><a href="flyme_index.html" target="_blank">Flyme</a></li>
    </ul>
    <div class="login">
        <a href="javascript:void(0)">注册</a><a>|</a><a href="javascript:void(0)">登陆</a>
    </div>
</div>
<div class="contain clearfix">
    <div class="router">
        <span><a href="" style="color: #000">首页</a></span>&nbsp;>&nbsp;<span><a href="javascript:void(0)"
                                                                                style="color: #000">全部商品</a></span>><span
            style="color: #999">手机</span>
    </div>
    <div class="selectBox">
        <div class="brandSelect">
            <ul>
                <li>品牌：</li>
                <li @click="brandSelect('',0)" :class="{'on':on1[0]}"><span>全部</span></li>
                <%--    <li @click="brandSelect('魅族',1)" :class="{'on':on1[1]}"><span>魅族品牌</span></li>
                    <li @click="brandSelect('魅蓝',2)" :class="{'on':on1[2]}"><span>魅蓝品牌</span></li>--%>
                <s:iterator value="#session.blist" var="b">
                    <a href="${pageContext.request.contextPath}/phone_findByBId.action?psid=<s:property value="#b.bid" />&page=1">
                        <li><span><s:property value="#b.bname"></s:property>

                    </span></li>
                    </a>
                </s:iterator>
            </ul>
        </div>
        <div class="screenSelect">
            <ul>

                <li>屏幕尺寸：</li>

                <li @click="brandSelect('',0)" class="on"><span>全部</span></li>
                <s:iterator value="#session.brand" var="b">

                    <s:iterator value="#b.phonesizesets" var="bp">

                        <a href="phone_findByPsid.action?psid=<s:property value="#bp.psid" />&page=1"> <span><s:property
                                value="#bp.psname"></s:property></span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </s:iterator>
                </s:iterator>

            </ul>
        </div>
    </div>
    <div class="showItem">
        <div class="row">
            <ul><%--
                <li v-for="(item,index) in phones" class="col-sm-3" v-show="item.show">
                    <a class="thumbnail"  style="border:none;" href="shopping_show.html">
                        <img :src="item.img[item.imgIndex]" width="220px">
                        <div id="smallImg">
                            <a class="" v-for="(img,idx) in item.img" @click="bigImgChange(index,idx)">
                                <img class="thumbnail" :src="item.img[idx]" width="40px" :class="{'onborder':idx==item.imgIndex}" >
                            </a>
                        </div>
                        <p style="font-size: 14px">{{item.name}}</p>
                        <p style="font-size: 12px;text-overflow: ellipsis;white-space: nowrap;color:#e02b41">{{item.into}}</p>
                        <p style="font-size: 12px;color:#e02b41">￥<span style="font-size: 18px">{{item.price}}</span>&nbsp;起</p>
                    </a> </li>--%>

                <%--
                                <s:iterator value="#session.phoneList" var="phone" >

                                    <s:div style="float:left;">
                                        <a href="${pageContext.request.contextPath}/phone_findById.action?pid=<s:property value="#phone.pid" />"> <img  src="${pageContext.request.contextPath}/<s:property value="#phone.image"/>"></a>
                                        <p style="font-size: 14px"><s:property value="#phone.name" /></p>
                                        <p style="font-size: 12px;text-overflow: ellipsis;white-space: nowrap;color:#e02b41"><s:property value="#phone.pdesc" /></p>
                                        <p style="font-size: 12px;color:#e02b41">￥<span style="font-size: 18px"><s:property value="#phone.price" /></span>&nbsp;起</p>
                                    </s:div>
                               </s:iterator>--%>
                <s:if test="pageBean==null">
                    <s:if test="pageBean1==null">
                        <s:iterator value="#session.phoneList" var="phone">

                            <s:div style="float:left;">
                                <a href="${pageContext.request.contextPath}/phone_findById.action?pid=<s:property value="#phone.pid" />">
                                    <img src="${pageContext.request.contextPath}/<s:property value="#phone.image"/>"></a>
                                <p style="font-size: 14px"><s:property value="#phone.name"/></p>
                                <p style="font-size: 12px;text-overflow: ellipsis;white-space: nowrap;color:#e02b41">
                                    <s:property value="#phone.pdesc"/></p>
                                <p style="font-size: 12px;color:#e02b41">￥<span style="font-size: 18px"><s:property
                                        value="#phone.price"/></span>&nbsp;起</p>
                            </s:div>
                        </s:iterator>
                    </s:if>
                </s:if>

                <s:iterator value="pageBean.list" var="phone">

                    <s:div style="float:left;">
                        <a href="${pageContext.request.contextPath}/phone_findById.action?pid=<s:property value="#phone.pid" />">
                            <img src="${pageContext.request.contextPath}/<s:property value="#phone.image"/>"></a>
                        <p style="font-size: 14px"><s:property value="#phone.name"/></p>
                        <p style="font-size: 12px;text-overflow: ellipsis;white-space: nowrap;color:#e02b41"><s:property
                                value="#phone.pdesc"/></p>
                        <p style="font-size: 12px;color:#e02b41">￥<span style="font-size: 18px"><s:property
                                value="#phone.price"/></span>&nbsp;起</p>
                    </s:div>

                </s:iterator>
                <s:iterator value="pageBean1.list" var="phone">

                    <s:div style="float:left;">
                        <a href="${pageContext.request.contextPath}/phone_findById.action?pid=<s:property value="#phone.pid" />">
                            <img src="${pageContext.request.contextPath}/<s:property value="#phone.image"/>"></a>
                        <p style="font-size: 14px"><s:property value="#phone.name"/></p>
                        <p style="font-size: 12px;text-overflow: ellipsis;white-space: nowrap;color:#e02b41"><s:property
                                value="#phone.pdesc"/></p>
                        <p style="font-size: 12px;color:#e02b41">￥<span style="font-size: 18px"><s:property
                                value="#phone.price"/></span>&nbsp;起</p>
                    </s:div>

                </s:iterator>

            </ul>
        </div>
        <s:if test="pageBean!=null">
            第<s:property value="pageBean.page"/>/<s:property value="pageBean.totalPage"/>页
            <s:if test="pageBean.page!=1">
                <a href="${pageContext.request.contextPath}/phone_findByBId.action?psid=<s:property value="psid" />&pageBean.page=1">首页</a>
                <a href="${pageContext.request.contextPath}/phone_findByBId.action?psid=<s:property value="psid" />&page=<s:property value="pageBean.page-1" />">上一页</a>
            </s:if>
            <s:iterator var="i" begin="1" end="pageBean.totalPage">
                <s:if test="pageBean.page!=#i">
                    <a href="${pageContext.request.contextPath}/phone_findByBId.action?psid=<s:property value="psid" />&page=<s:property value="#i" />"><s:property
                            value="#i"/></a>
                </s:if>
                <s:else>
                    <s:property value="#i"></s:property>
                </s:else>
            </s:iterator>
            <s:if test="pageBean.page!=pageBean.totalPage">
                <a href="${pageContext.request.contextPath}/phone_findByBId.action?psid=<s:property value="psid" />&page=<s:property value="pageBean.page+1" />">下一页</a>
                <a href="${pageContext.request.contextPath}/phone_findByBId.action?psid=<s:property value="psid" />&page=<s:property value="pageBean.totalPage" />">尾页</a>
            </s:if>
        </s:if>
        <s:if test="pageBean1!=null">
            第<s:property value="pageBean1.page"/>/<s:property value="pageBean1.totalPage"/>页
            <s:if test="pageBean1.page!=1">
                <a href="${pageContext.request.contextPath}/phone_findByBId.action?psid=<s:property value="psid" />&pageBean1.page=1">首页</a>
                <a href="${pageContext.request.contextPath}/phone_findByBId.action?psid=<s:property value="psid" />&page=<s:property value="pageBean1.page-1" />">上一页</a>
            </s:if>
            <s:iterator var="i" begin="1" end="pageBean1.totalPage">
                <s:if test="pageBean1.page!=#i">
                    <a href="${pageContext.request.contextPath}/phone_findByBId.action?psid=<s:property value="psid" />&page=<s:property value="#i" />"><s:property
                            value="#i"/></a>
                </s:if>
                <s:else>
                    <s:property value="#i"></s:property>
                </s:else>
            </s:iterator>
            <s:if test="pageBean1.page!=pageBean1.totalPage">
                <a href="${pageContext.request.contextPath}/phone_findByBId.action?psid=<s:property value="psid" />&page=<s:property value="pageBean1.page+1" />">下一页</a>
                <a href="${pageContext.request.contextPath}/phone_findByBId.action?psid=<s:property value="psid" />&page=<s:property value="pageBean1.totalPage" />">尾页</a>
            </s:if>
        </s:if>
    </div>
    <hr>
    <div id="footer">
        <p>&copy;2017 ToZ LAB Design for Meizu Telecom Equipment Co., Ltd. All rights reserved. </p>
    </div>

</div>
</div>

<script>
    window.onload = function () {

        new Vue({
            el: ".contain",
            data: {
                phones: [
                    {
                        name: "魅蓝 Note6",
                        img: ["img/m6note_blue@240x240.jpg", "img/m6note_black@240x240.jpg", "img/m6note_red@240x240.jpg"],
                        into: "12月5日10点起，最高直降300元，到手价899元起",
                        price: '899',
                        show: true,
                        imgIndex: 0
                    },
                    {
                        name: "魅族 PRO 7Plus",
                        img: ["img/pro7p_black@240x240.jpg", "img/pro7p_sliver@240x240.jpg"],
                        into: '12.12有神秘惊喜 双瞳如小窗 佳景观历历',
                        price: '3299',
                        show: true,
                        imgIndex: 0
                    },
                    {
                        name: '魅族 PRO 6s',
                        img: ["img/pro6s_black@240x240.jpg", "img/pro6s_pink@240x240.jpg"],
                        into: '高颜值手机，购机享12期免息',
                        price: '2299',
                        show: true,
                        imgIndex: 0
                    },
                    {
                        name: '魅蓝 X',
                        img: ["img/m5X_white@240x240.jpg"],
                        into: '32G原价1499元现直降300元',
                        price: '1199',
                        show: true,
                        imgIndex: 0
                    },
                    {
                        name: '魅族 PRO 6Plus',
                        img: ["img/pro6p_black@240x240.jpg", "img/pro6p_sliver@240x240.jpg"],
                        into: '强大内芯，购机享12期免息',
                        price: '2699',
                        show: true,
                        imgIndex: 0
                    },
                    {
                        name: '魅族 PRO 7',
                        img: ["img/pro7_red@240x240.jpg", "img/pro7_black@240x240.jpg"],
                        into: '12.12有神秘惊喜 双瞳如小窗 佳景观历历',
                        price: '2499',
                        show: true,
                        imgIndex: 0
                    },
                ],
                on1: [true, false, false]

            },
            methods: {
                bigImgChange: function (index, idx) {
                    this.phones[index].imgIndex = idx;
                },
                brandSelect: function (str, index) {
                    for (var i = 0; i < this.on1.length; i++) {
                        this.on1[i] = false;
                    }
                    this.on1[index] = true;
                    for (var i = 0; i < this.phones.length; i++) {
                        this.phones[i].show = true;
                        if (this.phones[i].name.indexOf(str) < 0) {
                            this.phones[i].show = false;
                        }
                    }
                }

            }
        });
    }
</script>
</body>
</html>