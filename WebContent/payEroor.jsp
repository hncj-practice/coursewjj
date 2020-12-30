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
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/qrious.min.js"></script>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images-wjj/uu.ico1.png" type="image/x-icon">
    <script src="${pageContext.request.contextPath}/assets/font/iconfont.js"></script>
    <!-- 第三方插件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/font/iconfont.css">
    <!-- 公共样式 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css-wjj/public.css">
    <!-- 本页面样式 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css-wjj/show.css">
</head>
<body>

<div class="container header">
	
<%-- 	
	<%@ include file="../WEB-INF/jsp/menu.jsp" %> --%>
	
</div>	

<div class="container cart" align="center" style="width: 500px;height: 200px;">
	<div style="margin-top: 100px;">
	<h3>　支付失败，请稍后再试</h3>
	<br>
	<font style="font-size:16px">失败原因：<span style="color:red">${payStatus.msg}</span></font>
	<br>
	<br>
	<div style="width: 110px;height: 30px;">
	<a href="${pageContext.request.contextPath }/order_andPayOrder.action"><font style="font-size:18px;color:red;">返回支付页面</font></a>
	</div>
	</div>
</div>

  <div class="least" >
         <div class="span24">
         
       

		  <div class="texta">Copyright&copy;2010-2020 学习资料采集商城 版权所有 保留一切权利</div>           
        <div class="textb">京ICP备10218183 京ICP备161188号 京公网安备 1101082020593号 出版经营许可证新出发京批字第直130052号</div>           
    
	     </div>
	     
      </div>
</body>
<script type="text/javascript">
	$(document).ready(function() {
		new QRious({
			element : document.getElementById("qr"),
			size : 250,
			level : "Q",
			value : $("#test").val()
		});
	});
</script>
</html>