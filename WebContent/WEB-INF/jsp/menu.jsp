<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <div class="nav">
        <div class="nav_content clearfix">
            <div class="content1">
               <ul class="ul1">
                    <li>
                        <a href="${ pageContext.request.contextPath }/index.action">网站导航</a><span class="iconfont">&#xe642;</span>
                    </li>
                    <li>
                        <a href="law.jsp">法律声明</a>
                        <span class="iconfont">&#xe642;</span>
                    </li>
                  <!--   <li><a href="friendlink.jsp">友情链接</a><span class="iconfont">&#xe642;</span></li> -->
                    <li>
                        <svg class="icon" aria-hidden="true">
                            <use xlink:href="#icon-dingwei"></use>
                        </svg>
                        <a href="#">北京</a><span class="iconfont">&#xe615;</span></li>
                </ul>
            </div>
	             <div class="content2">
                    <ul class="ul2">
			              <s:if test="#session.existUser == null">
			                 <li id="headerLogin">
				             <a href="${ pageContext.request.contextPath }/user_loginPage.action">登录</a></li>
			                 <li id="headerRegister">
			                 <a href="${ pageContext.request.contextPath }/user_registPage.action">注册</a>
			                 </li>
			              </s:if>
			              <s:else>
			              <li id="headerLogin">
				              <s:property value="#session.existUser.name"/>
				         </li>
			              <li id="headerLogin">
				          <a href="${ pageContext.request.contextPath }/order_findByUid.action?page=1">我的订单</a>
			             </li>
			              <li id="headerRegister">
			              <a href="${ pageContext.request.contextPath }/user_quit.action">退出</a>
			             </li>
			             </s:else>
			             <li><a href="aboutus.jsp">关于我们</a></li>
			             <li>
                             <span class="iconfont" style="color: #f26b11;font-size: 12px; ">&#xe643;
                             </span>
		                     <a href="${ pageContext.request.contextPath }/cart_myCart.action" style="color: #f26b11;">购物车</a>
		                     <span class="iconfont" style="color: #f26b11;">&#xe642;</span>
		                 </li>
		            </ul>
	             </div>
                
                  
	
	
	
           
      </div>
	
</div>
