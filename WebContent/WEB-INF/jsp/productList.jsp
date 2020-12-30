<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0048)http://localhost:8080/mango/product/list/1.jhtml -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>网上商城</title>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/product.css" rel="stylesheet" type="text/css"/>
 <link rel="shortcut icon" href="${pageContext.request.contextPath}/images-wjj/uu.ico1.png" type="image/x-icon">
    <script src="${pageContext.request.contextPath}/assets/font/iconfont.js"></script>
    <!-- 第三方插件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/font/iconfont.css">
    <!-- 公共样式 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css-wjj/public.css">
    <!-- 本页面样式 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css-wjj/index.css">
<style>
.li1 span{
    color:rgb(43,133,8);
    font-size:18px;
    }
    </style> 
</head>
<body>
<%@ include file="menu.jsp" %>


 


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
    <div class="menu" style="height:550px;">
        <div class="menu_content">
            <div class="container productList">


		<div class="span18 last"style="margin-left:190px;width:1000px;height:550px;" >
			
			<form id="productForm" action="${pageContext.request.contextPath}/image/蔬菜 - Powered By Mango Team.htm" method="get">
					
				<div id="result" class="result table clearfix">
						<ul >
							<s:iterator var="p" value="pageBean.list">
								<li style="height:240px;">
										<a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>">
											<img style="width:240px;height:140px;border-radius:20px;" src="${pageContext.request.contextPath}/<s:property value="#p.image"/>" width="170" height="170"  style="display: inline-block;">
											   
											<span style='color:green'>
											 <s:property value="#p.pdesc"/>
											</span>
											 
											<span class="price"style="color:black;">
												商城价： ￥<s:property value="#p.shop_price"/>
											</span>
											 
										</a>
								</li>
							</s:iterator>	
								
						</ul>
				</div>
	<div class="pagination">
			<span>第 <s:property value="pageBean.page"/>/<s:property value="pageBean.totalPage"/> 页</span>
		<s:if test="cid != null">
			<s:if test="pageBean.page != 1">
				<a href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="cid"/>&page=1" class="firstPage">&nbsp;</a>
				<a href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.page-1"/>" class="previousPage">&nbsp;</a>
			</s:if>
			
			<s:iterator var="i" begin="1" end="pageBean.totalPage">
				<s:if test="pageBean.page != #i">
					<a href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="#i"/>"><s:property value="#i"/></a>
				</s:if>
				<s:else>
					<span class="currentPage"><s:property value="#i"/></span>
				</s:else>
			</s:iterator>
			
			<s:if test="pageBean.page != pageBean.totalPage">	
				<a class="nextPage" href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.page+1"/>">&nbsp;</a>
				<a class="lastPage" href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.totalPage"/>">&nbsp;</a>
			</s:if>
		</s:if>	
		<s:if test="csid != null">
			<s:if test="pageBean.page != 1">
				<a href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="csid"/>&page=1" class="firstPage">&nbsp;</a>
				<a href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="pageBean.page-1"/>" class="previousPage">&nbsp;</a>
			</s:if>
			
			<s:iterator var="i" begin="1" end="pageBean.totalPage">
				<s:if test="pageBean.page != #i">
					<a href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="#i"/>"><s:property value="#i"/></a>
				</s:if>
				<s:else>
					<span class="currentPage"><s:property value="#i"/></span>
				</s:else>
			</s:iterator>
			
			<s:if test="pageBean.page != pageBean.totalPage">	
				<a class="nextPage" href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="pageBean.page+1"/>">&nbsp;</a>
				<a class="lastPage" href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="pageBean.totalPage"/>">&nbsp;</a>
			</s:if>
		</s:if>	
	</div>
			</form>
		</div>
	</div>


         
    <div class="sidebar" style="height:550px;">
     
         <div class="span6">
			<div>
				<s:iterator var="c" value="#session.cList">
						<ul>
							<li class="li1">
								<a href="${pageContext.request.contextPath}/product_findByCid.action?cid=<s:property value="#c.cid"/>"><span><s:property value="#c.cname"/></span></a>
							</li>
								<s:iterator var="cs" value="#c.categorySeconds">
									<li >
										<a class="a1" style="font-size:14px;" href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="#cs.csid"/>&page=1"><s:property value="#cs.csname"/></a>
									</li>
								</s:iterator>	
						</ul>
				</s:iterator>
				<br />		
			</div>
		</div>
    </div>
    
     </div>
    </div>


    
      <div class="least" >
         <div class="span24"  >
         
  
		  <div class="texta">Copyright&copy;2010-2020 学习资料采集商城 版权所有 保留一切权利</div>           
        <div class="textb">京ICP备10218183 京ICP备161188号 京公网安备 1101082020593号 出版经营许可证新出发京批字第直130052号</div>           
    
	     </div>
	     
      </div>
    
</body></html>