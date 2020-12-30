<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0043)http://localhost:8080/mango/cart/list.jhtml -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

<title>订单页面</title>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/cart.css" rel="stylesheet" type="text/css"/>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images-wjj/uu.ico1.png" type="image/x-icon">
    <script src="${pageContext.request.contextPath}/assets/font/iconfont.js"></script>
    <!-- 第三方插件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/font/iconfont.css">
    <!-- 公共样式 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css-wjj/public.css">
    <!-- 本页面样式 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css-wjj/index.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css-wjj/shopping_cart.css">
</head>
<body>
<%@ include file="menu.jsp" %>

    <div class="header_content clearfix">
        <div class="header_logo">
            <img src="${pageContext.request.contextPath}/images-wjj/logo1.jpg" alt="">
        </div>
        <div class="header_text">
            订单
        </div>

    </div>
    <div class="max_box">
   
    
        <div class="all_title clearfix">
            <div class="ti_1">商品</div>
            <div class="ti_1">商品名</div>
            <div class="ti_2">单价</div>
            <div class="ti_2">购买数量</div>
            <div class="ti_2">小计</div>
            
        </div>
        <div class="phone clearfix" style="margin-left:-20px;">
        <s:iterator var="orderItem" value="model.orderItems">
            <div class="ph_1">
                <div class="ph_1_img">
                    <img style="height: 65px;width:65px;" src="${pageContext.request.contextPath}/<s:property value="#orderItem.product.image"/>" alt="">
                </div>
                <div class="ph1_text clearfix">
                    <div class="text"><s:property value="#orderItem.product.pname"/></div>
                </div>
                <div class="ph1_money">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&yen;<s:property value="#orderItem.product.shop_price"/></div>
                <div class="ph1_box">
                    <span style="padding-left:10px;line-height:30px;"><s:property value="#orderItem.count"/></span>  
                </div>
                <div class="ph1_money2"><span class="subtotal">￥<s:property value="#orderItem.subtotal"/></span></div>
                
            </div>
       </s:iterator>
      
        </div>
        
        
        	<form id="orderForm" action="${pageContext.request.contextPath }/order_payOrder.action" method="post">
				<input type="hidden" name="oid" value="<s:property value="model.oid"/>"/>
				<div class="span24" style="font-size:18px;height:100px;margin-top:200px;">
					<p>
							收货地址：<input name="addr" type="text" value="<s:property value="model.user.addr"/>" style="width:350px" />
								<br />
								<br />
							收货人&nbsp;&nbsp;&nbsp;：<input name="name" type="text" value="<s:property value="model.user.name"/>" style="width:150px" />
								<br /> 
								<br />
							联系方式：<input name="phone" type="text"value="<s:property value="model.user.phone"/>" style="width:150px" />

					</p>
					
				</div>
			
  
       <div class="all_select clearfix" style="margin-top:400px;">

            <div class="all_select_box2">
               <div class="aaa">
                 
               </div>
               <div class="aaa1">
                   赠送积分：&yen;<em id="effectivePoint"><s:property value="model.total"/></em>
               </div>
                <div class="aaa2">
                    商品金额：<span id="effectivePrice" style="color: #f1aa75;font-size: 16px;">&yen;<s:property value="model.total"/></span>
                
                </div>
            </div>

        </div>
    
    </div>
    <div class="submit clearfix">
        <a href="javascript:document.getElementById('orderForm').submit();" class="submit_box">确认订单</a>
       
    </div>
    </form>	
    
    <div class="least" >
         <div class="span24">
         
       
	
		  <div class="texta">Copyright&copy;2010-2020 学习资料采集商城 版权所有 保留一切权利</div>           
        <div class="textb">京ICP备10218183 京ICP备161188号 京公网安备 1101082020593号 出版经营许可证新出发京批字第直130052号</div>           
    
	     </div>
	     
      </div>







   
</body>
</html>