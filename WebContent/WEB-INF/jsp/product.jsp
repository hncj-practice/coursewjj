<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<title>商品详情</title>
    <link href="${pageContext.request.contextPath}/css/slider.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet" type="text/css"/> 
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/product.css" rel="stylesheet" type="text/css"/>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images-wjj/uu.ico1.png" type="image/x-icon">
    <script src="${pageContext.request.contextPath}/assets/font/iconfont.js"></script>
    <!-- 第三方插件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/font/iconfont.css">
    <!-- 公共样式 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css-wjj/public.css">
    <!-- 本页面样式 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css-wjj/show.css">
<script>
	function saveCart(){
		document.getElementById("cartForm").submit();
	}
</script>

</head>
<body>
   <%@ include file="menu.jsp" %>

    <div class="header">
        <div class="header_content clearfix">
            <div class="header_logo">
                <img style="height: 65px;text-align:center;padding-left:400px;" src="${pageContext.request.contextPath}/images-wjj/logo1.jpg" alt="">
            </div>
           
        </div>
    </div>

    <div class="mainbav">
        <div class="mainbav_content clearfix">
            <div class="leftsidebar">
                <span class="iconfont">&nbsp;&nbsp;&#xf00a6;&nbsp;&nbsp;全部商品分类</span>
            </div>
            <div class="rightsidebar">
                <%@ include file="menu2.jsp" %>
            </div>
        </div>
    </div>

    </div> 
    <div class="body clearfix">
    
    
    <div class="body_left">
      <div class="top_img">       
   
            
                 <a  id="zoom" href="http://image/r___________renleipic_01/bigPic1ea8f1c9-8b8e-4262-8ca9-690912434692.jpg" rel="gallery">
						<div>
						    <img src="${ pageContext.request.contextPath }/<s:property value="model.image"/>">
						</div>
				</a>                               
       </div>                    
       </div>
        <div class="body_right">
            <div class="title1">
                <s:property value="model.pname"/>
            </div>
            <div class="title2">
                <s:property value="model.pdesc"/>
            </div>
            <div class="title3">
                <div class="nav_title3 clearfix">
                    <div class="price">
                                       促&nbsp;销&nbsp;价 :<span>&yen;<strong><s:property value="model.shop_price"/>元</strong>
							&nbsp;参 考 价：
							<del>￥<s:property value="model.market_price"/>元</del></span><span class="b">降价通知</span>
                    </div>
                   
                    <div class="evaluate">
                        编&nbsp;号：<s:property value="model.pid"/>
                    </div>
                    <div class="freight">
                                           运&nbsp;&nbsp;&nbsp;&nbsp;费:<span>满19包邮</span>
                    </div>
                </div>
            </div>
           
            <div class="number">
             <form id="cartForm" action="${ pageContext.request.contextPath }/cart_addCart.action" method="post" >
				<input type="hidden" name="pid" value="<s:property value="model.pid"/>"/>
				<div class="action">
						
							<div class="number_left">购买数量:</div>
							<div class="number_right">
							  <div>
								<input  style="border:none; line-height:29px;" id="count" name="count" value="1" maxlength="4" onpaste="return false;" type="text"/>件
							  </div>
							
							</div>
					
						
					
				</div>
			</form>
            </div>
            <div class="foot">
                <div class="foot_left" style="float:right;margin-bottom:-10px;" id="addCart" type="button" onclick="saveCart()"><span class="iconfont"style="padding-right:20px; font-size: 30px;">&#xe601;</span>加入购物车</div>
               
            </div>
        </div>
        
  
        
    </div>
          



   
    
    <div class="least" >
         <div class="span24"  >
         
       
		
		  <div class="texta">Copyright&copy;2010-2020 学习资料采集商城 版权所有 保留一切权利</div>           
        <div class="textb">京ICP备10218183 京ICP备161188号 京公网安备 1101082020593号 出版经营许可证新出发京批字第直130052号</div>           
    
	     </div>
	     
      </div>
    
</div>
</body>
</html>