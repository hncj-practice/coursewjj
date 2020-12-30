<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0043)http://localhost:8080/mango/cart/list.jhtml -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>购物车</title>

<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/cart.css" rel="stylesheet" type="text/css"/>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images-wjj/uu.ico1.png" type="image/x-icon">
    <script src="${pageContext.request.contextPath}/assets/font/iconfont.js"></script>
    <!-- 第三方插件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/font/iconfont.css">
    <!-- 公共样式 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css-wjj/public.css">
    <!-- 本页面样式 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css-wjj/shopping_cart.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css-wjj/reset.css">

</head>
<body>
<%@ include file="menu.jsp" %>

    <div class="header_content clearfix">
        <div class="header_logo">
            <img src="${pageContext.request.contextPath}/images-wjj/logo1.jpg" alt="">
        </div>
        <div class="header_text">
            购物车
        </div>

    </div>
    <div class="max_box">
    <s:if test="#session.cart.cartItems.size() != 0">
        <div class="all_title clearfix">
            <div class="ti_1">商品</div>
            <div class="ti_1">商品名</div>
            <div class="ti_2">单价</div>
            <div class="ti_2">购买数量</div>
            <div class="ti_2">小计</div>
            <div class="ti_2">操作</div>
        </div>
        <div class="phone clearfix" style="margin-left:-20px;">
        <s:iterator var="cartItem" value="#session.cart.cartItems"> 
            <div class="ph_1">
                <div class="ph_1_img">
                    <img style="height: 65px;width:65px;" src="${pageContext.request.contextPath}/<s:property value="#cartItem.product.image"/>" alt="">
                </div>
                <div class="ph1_text clearfix">
                    <div class="text"><s:property value="#cartItem.product.pname"/></div>
                </div>
                <div class="ph1_money">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&yen;<s:property value="#cartItem.product.shop_price"/></div>
                <div class="ph1_box">
                    <span style="padding-left:10px;line-height:30px;"><s:property value="#cartItem.count"/></span>  
                </div>
                <div class="ph1_money2"><span class="subtotal">￥<s:property value="#cartItem.subtotal"/></span></div>
                <div class="ph1_del">                
                        <a href="${ pageContext.request.contextPath }/cart_removeCart.action?pid=<s:property value="#cartItem.product.pid"/>" style=" text-decoration:#f1aa75;color: #f1aa75;">删除</a><br><br>                  
                </div>
            </div>
       </s:iterator>
      
        </div>
  
       <div class="all_select clearfix" style="margin-top:400px;">

            <div class="all_select_box2">
               <div class="aaa">
                 
               </div>
               <div class="aaa1">
                   赠送积分：&yen;<em id="effectivePoint"><s:property value="#session.cart.total"/></em>
               </div>
                <div class="aaa2">
                    商品金额：<span id="effectivePrice" style="color: #f1aa75;font-size: 16px;">&yen;<s:property value="#session.cart.total"/></span>
                </div>
            </div>

        </div>
     	</s:if>
		<s:else>
			<div class="span24">
				<div class="step step1">
					<span><h2>亲!您还没有购物!请先去购物!</h2></span>
				</div>
			</div>
		</s:else>
    </div>
    <div class="submit clearfix">
        <a href="${ pageContext.request.contextPath }/order_saveOrder.action" id="submit" class="submit_box">提交订单</a>
        <a href="${ pageContext.request.contextPath }/cart_clearCart.action" id="clear" class="submit_box1">清空购物车</a>
        <a href="${ pageContext.request.contextPath }/index.action" class="submit_box1">继续购物</a>
    </div>
    	





  









    
    <div class="least" >
         <div class="span24">
         
       
	
		  <div class="texta">Copyright&copy;2010-2020 学习资料采集商城 版权所有 保留一切权利</div>           
        <div class="textb">京ICP备10218183 京ICP备161188号 京公网安备 1101082020593号 出版经营许可证新出发京批字第直130052号</div>           
    
	     </div>
	     
      </div>
    
</body></html>