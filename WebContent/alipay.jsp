<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0043)http://localhost:8080/mango/cart/list.jhtml -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>订单页面</title>
<link href="${pageContext.request.contextPath}/css/common.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/cart.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/qrious.min.js"></script>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/images-wjj/uu.ico1.png"
	type="image/x-icon">
	<script
		src="${pageContext.request.contextPath}/assets/font/iconfont.js"></script>
	<!-- 第三方插件 -->
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/assets/font/iconfont.css">
		<!-- 公共样式 -->
		<link rel="stylesheet"
			href="${pageContext.request.contextPath}/css-wjj/public.css">
			<!-- 本页面样式 -->
			<link rel="stylesheet"
				href="${pageContext.request.contextPath}/css-wjj/show.css">
				<link rel="stylesheet"
					href="${pageContext.request.contextPath}/css-wjj/alipay.css">
</head>
<body>

	<div class="container header">

<%-- 
		<%@ include file="../WEB-INF/jsp/menu.jsp"%> --%>

	</div>

	<div class="container cart" align="center">
		<h3 align="left">
			<span>订单提交成功，请您及时付款！订单号：${alipay.out_trade_no}</span>
		</h3>
		<h3 align="right">
			<span align="right">应付金额：<em
				style="font-size: 18px; color: red">${alipay.total_amount}</em></span>
		</h3>
		<!-- 用于将二维码链接传到二维码生成器中 -->
		<h2>请输入密码支付</h2>
		<br> <input type="hidden" id="test" value="${alipay.qr_code}">
				<!-- 二维码图片 -->
		<br> <br>
				<div class="alipay">
					<div>
						<span align="right">应付金额：<em
							style="font-size: 18px; color: red">${alipay.total_amount}</em>元
						</span>
					</div>

					<br> <br>
							<form id="passwordform" action="${ pageContext.request.contextPath }/paySuccess.jsp">
								<div class="login_title ">
									<div class="login_password clearfix">
										<input type="password" id="password" name="password"
											class="password1" maxlength="20" autocomplete="off"
											placeholder="请输入支付密码">
									</div>
								</div>
								<br> <br>
								 <input type="submit" class="button1"
										onclick="return checkuser()" value="点击完成"></input>
							</form>
				</div>
	</div>

  <div class="least" >
         <div class="span24" >
         

		  <div class="texta">Copyright&copy;2010-2020 学习资料采集商城 版权所有 保留一切权利</div>           
        <div class="textb">京ICP备10218183 京ICP备161188号 京公网安备 1101082020593号 出版经营许可证新出发京批字第直130052号</div>           
    
	     </div>
	     
      </div>
</body>
<script type="text/javascript">
	//拿到form
	function checkuser() {
	if ($('password') == ("2222")){
			return true;
		} else {
			location.replace("http://localhost:8080/wjjshopweb/payEroor.jsp");
			return false;
		}
	}
	  function $(id) { 
	        return document.getElementById(id).value; 
	      } 
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