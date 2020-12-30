<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>网上商城</title>
    <link href="${pageContext.request.contextPath}/css/slider.css" rel="stylesheet" type="text/css"/>
 <link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet" type="text/css"/> 
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
    <div class="menu">
        <div class="menu_content">
     
            <img class="img-slide img" src="underline/书籍1.jpg" alt="img1">
            <img class="img-slide img" src="underline/书籍2.jpg" alt="img2">
            <img class="img-slide img" src="underline/shuji3.jpg" alt="img3">
            <img class="img-slide img" src="underline/shuji4.jpg" alt="img4">
            <img class="img-slide img" src="underline/shuji5.jpg" alt="img5">
          
                <script type="text/javascript">
        // index：索引， len：长度
        var index = 0, len;
        // 类似获取一个元素数组
        var imgBox = document.getElementsByClassName("img-slide");
        len = imgBox.length;
        imgBox[index].style.display = 'block';
        // 逻辑控制函数
        function slideShow() {
            index ++;
            // 防止数组溢出
            if(index >= len) index = 0;
            // 遍历每一个元素
            for(var i=0; i<len; i++) {
                imgBox[i].style.display = 'none';
            }
            // 每次只有一张图片显示
            imgBox[index].style.display = 'block';
        }
        // 定时器，间隔3s切换图片
        setInterval(slideShow, 3000);       
    </script>
            
    <div class="sidebar">
     
         <div class="span6">
			<div>
				<s:iterator var="c" value="#session.cList">
						<ul>
							<li class="li1">
								<a href="${pageContext.request.contextPath}/product_findByCid.action?cid=<s:property value="#c.cid"/>"><span><s:property value="#c.cname"/></span></a>
							</li>
								<s:iterator var="cs" value="#c.categorySeconds">
									<li >
										<a class="a1" style="font-size:14px;"href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="#cs.csid"/>&page=1"><s:property value="#cs.csname"/></a>
									</li>
								</s:iterator>	
						</ul>
				</s:iterator>		
			</div>
		</div>
    </div>
      <div class="left_arrow iconfont">&#xe62d;</div> 
      <div class="right_arrow iconfont">&#xe62a;</div>
     </div>
    </div>
    <div class="container">
        <div class="line1"></div>
        <div class="flash_sale clearfix">
            <div class="flash_box1">
                <div class="flash_box1_1 clearfix">
                    <div class="left_flash_box1_1">
                        <span class="a1">限时抢购</span>&nbsp;&nbsp;
                        <span class="a2">距离下场</span>&nbsp;&nbsp;
                        <!-- 时间 -->
                        <span class="a3">03</span>&nbsp;&nbsp;
                        <span class="a3">41</span>&nbsp;&nbsp;
                        <span class="a3">16</span>
                    </div>
                    <div class="right_flash_box1_1 clearfix">
                        <span class="a1">20:00-即将开抢</span>
                        <span class="a2">16:00-正在疯抢</span>
                    </div>
                </div>
                <div class="flash_box1_2 clearfix">
                <s:iterator var="p" value="xsList">
                    <div class="goods1">
                    
                        <div class="img">
                            <a target="_blank" href="${pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>" target="_blank">
						    <img src="${pageContext.request.contextPath}/<s:property value="#p.image"/>" data-original="http://storage.shopxx.net/demo-image/3.0/201301/0ff130db-0a1b-4b8d-a918-ed9016317009-thumbnail.jpg" style="display: block;"></a>
                        </div>

                        <div class="span1">
                            【预售2月20发货】【3
                        </div>
                        <div class="span1">
                            <span class="a1">&yen;<s:property value="#p.market_price"/></span>
                            <del>&yen;<s:property value="#p.shop_price"/></del>
                        </div>
                        <div class="span1">
                            <div class="line1">
                                <div class="line2"></div>
                            </div>
                            <span class="a2">
                                已抢35%
                            </span>
                        </div>
                    </div>
                 </s:iterator>
                </div>
            </div>

            <div class="flash_box2">
                <div class="title clearfix">
                    <div class="title1">大汇聚</div>
                    <div class="title2">
                        &nbsp;<span class="iconfont">&#xe626;</span></div>
                </div>
                <div class="converge">
                    <img src="${pageContext.request.contextPath}/images-wjj/banner01.jpg" alt="">
                    <div class="img_text">
                        <div class="img">
                            <img src="${pageContext.request.contextPath}/images-wjj/banner02.jpg" alt="">
                        </div>

                        <div class="text1">
                            爆款直降
                        </div>
                        <div class="text2">
                            <span>仅剩</span><span style="color: rgb(240, 18, 18);">9小时</span>
                        </div>
                    </div>
                    <div class="foot clearfix">
                        <div class="foot_img">
                            <img src="${pageContext.request.contextPath}/images-wjj/banner03.jpg" alt="">
                            <div class="text">爆款低至五折</div>
                        </div>
                        <div class="foot_img">
                            <img src="${pageContext.request.contextPath}/images-wjj/banner02.jpg" alt="">
                            <div class="text">爆款直降</div>
                        </div>
                        <div class="foot_img">
                            <img src="${pageContext.request.contextPath}/images-wjj/banner04.jpg" alt="">
                            <div class="text">爆款直降</div>
                        </div>
                    </div>

                </div>

            </div>

        </div>
        <div class="line2"></div>
        <!-- 、、、、、、、、、、排行榜、、、、、、、、-->
        <div class="hot clearfix">
            <div class="list">
                <div class="title clearfix">
                    <div class="p">排行榜</div>
                   
                </div>
                <div class="hot_guild">
                    <ul>
                        <li><a href="#" class="a1">精选</a></li>
                        
                    </ul>
                </div>
                <div class="hot_content">
                <s:iterator var="p" value="phList">
                    <div class="text1 clearfix">
                        <div class="box1">
                            <a target="_blank" href="${pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>" target="_blank">
							<img src="${pageContext.request.contextPath}/<s:property value="#p.image"/>" data-original="http://storage.shopxx.net/demo-image/3.0/201301/0ff130db-0a1b-4b8d-a918-ed9016317009-thumbnail.jpg" style="display: block;"></a>
                        </div>
                        <div class="box2 clearfix">
                            <div class="a1"><s:property value="#p.pname"/></div>
                            <div class="a2">&yen;<s:property value="#p.shop_price"/></div>
                            <div class="a3">销量NO1</div>
                        </div>
                    </div>
                </s:iterator>
                    
       
                </div>

            </div>
            <div class="popularity">
                <div class="title">
                    <div class="p">人气好货</div>
                    
                </div>
                <div class="commodity clearfix">
                <s:iterator var="p" value="rqList">
                    <div class="content">
                        <div class="img">
                            <a target="_blank" href="${pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>" target="_blank">
										<img src="${pageContext.request.contextPath}/<s:property value="#p.image"/>" data-original="http://storage.shopxx.net/demo-image/3.0/201301/0ff130db-0a1b-4b8d-a918-ed9016317009-thumbnail.jpg" style="display: block;"></a>
                        </div>
                        <div class="commodity_foot1">
                            
                        </div>
                        <div class="commodity_foot2 clearfix">
                           <img src="${pageContext.request.contextPath}/images-wjj/赞(1).png" alt=""> 318人都说好
                        </div>
                    </div>
                 </s:iterator>   
                    
                   

            </div>

        </div>
        <div class="line1"></div>

        <div class="line3"></div>
        <div class="garment">
            <div class="garment_left">
                <div class="garment_top clearfix">
                    <div class="tv">
                        电子数码&nbsp;&nbsp;<span class="iconfont">&#xe70a;</span>
                    </div>
                    <div class="li">
                        <ul>
                            <li>
                                <a>智能频道</a>
                            </li>
                            <li>
                                <a>智能音箱</a>
                            </li>
                            <li>
                                <a>智能手表</a>
                            </li>
                            <li>
                                <a>智能蓝牙</a>
                            </li>
                            <li>
                                <a>智能电脑</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="garment_body clearfix">
                    <div class="garment_body_lift">
                        <div class="img">
                            <img src="${pageContext.request.contextPath}/images-wjj/bg1.jpg" alt="">
                        </div>
                        <div class="l_box">
                            <div class="a1">电子数码</div>
                            <div class="a2">爆款直降</div>
                        </div>
                    </div>
                    <div class="garment_body_right">
                    <s:iterator var="p" value="box1List">
                        <div class="goods">
                            <div class=" a1 "><s:property value="#p.pdesc"/></div>
                            <div class=" a2_2 ">&nbsp;</div>                         
                            <div class="a3">
                                <a target="_blank" href="${pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>" target="_blank">
										<img src="${pageContext.request.contextPath}/<s:property value="#p.image"/>" data-original="http://storage.shopxx.net/demo-image/3.0/201301/0ff130db-0a1b-4b8d-a918-ed9016317009-thumbnail.jpg" style="display: block;"></a>
                            </div>
                        </div>
                    </s:iterator>
                        
                       

                    </div>
                </div>
            </div>
            <div class="garment_right">
                <div class="garment_top clearfix">
                    <div class="tv">
                        工具&nbsp;&nbsp;<span class="iconfont">&#xe70a;</span>
                    </div>
                    <div class="li">
                        <ul>
                            <li>
                                <a style="margin-left: 120px;">辅助工具</a>
                            </li>
                            <li>
                                <a>文具</a>
                            </li>
                            <li>
                                <a>视频教学</a>
                            </li>
                            <li>
                                <a>在线课程</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="garment_body">
                    <div class="garment_body_lift">
                        <div class="img">
                            <img src="${pageContext.request.contextPath}/images-wjj/bg3.jpg" alt="">
                        </div>
                        <div class="l_box">
                            <div class="a1">半价购</div>
                            <div class="a2">视频教学</div>
                        </div>
                    </div>
                    <div class="garment_body_right">
                    <s:iterator var="p" value="box2List">
                        <div class="goods">
                            <div class="a1"> <s:property value="#p.pdesc"/></div>
                            <div class="a2_2">&nbsp;</div>
                            <div class="a3">
                                <a target="_blank" href="${pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>" target="_blank">
										<img src="${pageContext.request.contextPath}/<s:property value="#p.image"/>" data-original="http://storage.shopxx.net/demo-image/3.0/201301/0ff130db-0a1b-4b8d-a918-ed9016317009-thumbnail.jpg" style="display: block;"></a>
                            </div>
                        </div>
                    </s:iterator>
                      
                    </div>
                </div>
            </div>
        </div>
        <div class="line3"></div>


        <!-- \\\\\\\复制\\\\\ -->
        <div class="garment">
            <div class="garment_left">
                <div class="garment_top clearfix">
                    <div class="tv1">
                        课本读物&nbsp;&nbsp;<span class="iconfont">&#xe70a;</span>
                    </div>
                    <div class="li">
                        <ul>
                            <li>
                                <a style="margin-left: 100px;">生活学习</a>
                            </li>
                            <li>
                                <a>精讲课程</a>
                            </li>
                            <li>
                                <a>少儿读物</a>
                            </li>
                            <li>
                                <a>翻译词典</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class=" garment_body clearfix ">
                    <div class=" garment_body_lift ">
                        <div class=" img ">
                            <img src=" ${pageContext.request.contextPath}/images-wjj/bg4.jpg " alt=" ">
                        </div>
                        <div class=" l_box ">
                            <div class=" a1 ">课本读物</div>
                            <div class=" a2 ">9.9抢好货</div>
                        </div>
                    </div>
                    <div class=" garment_body_right ">
                    <s:iterator var="p" value="box3List">
                        <div class=" goods ">
                            <div class=" a1 "><s:property value="#p.pdesc"/></div>
                            <div class=" a2_2 ">&nbsp;</div>
                            <div class=" a3 ">
                               <a target="_blank" href="${pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>" target="_blank">
										<img src="${pageContext.request.contextPath}/<s:property value="#p.image"/>" data-original="http://storage.shopxx.net/demo-image/3.0/201301/0ff130db-0a1b-4b8d-a918-ed9016317009-thumbnail.jpg" style="display: block;"></a>
                            </div>
                        </div>
                    </s:iterator>
                

                    </div>
                </div>
            </div>
            <div class=" garment_right ">
                <div class=" garment_top clearfix ">
                    <div class=" tv1 ">
                       书籍收纳&nbsp;&nbsp;<span class=" iconfont ">&#xe70a;</span>
                    </div>
                    <div class=" li ">
                        <ul>
                            <li>
                                <a style=" margin-left: 120px; ">收纳</a>
                            </li>
                            <li>
                                <a>蒸汽眼罩</a>
                            </li>
                            <li>
                                <a>笔记本</a>
                            </li>
                            <li>
                                <a>正版课程</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class=" garment_body ">
                    <div class=" garment_body_lift ">
                        <div class=" img ">
                            <img src=" ${pageContext.request.contextPath}/images-wjj/bg5.jpg " alt=" ">
                        </div>
                        <div class=" l_box ">
                            <div class=" a1 ">书籍收纳</div>
                            <div class=" a2 ">火热抢购中！</div>
                        </div>
                    </div>
                    <div class=" garment_body_right ">
                    <s:iterator var="p" value="box4List">
                        <div class=" goods ">
                            <div class=" a1 "><s:property value="#p.pdesc"/></div>
                            <div class=" a2_2 ">&nbsp;</div>
                            <div class=" a3 ">
                                <a target="_blank" href="${pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>" target="_blank">
										<img src="${pageContext.request.contextPath}/<s:property value="#p.image"/>" data-original="http://storage.shopxx.net/demo-image/3.0/201301/0ff130db-0a1b-4b8d-a918-ed9016317009-thumbnail.jpg" style="display: block;"></a>
                            </div>
                        </div>
                    </s:iterator>
                      
                    </div>
                </div>
            </div>
        </div>
        <div class=" line1 "></div>
      
<div class="container index">
		
  <!-- 建立一个div控件作为图片框 -->
     

		<div class="span24"   >
			<div id="hotProduct" class="hotProduct clearfix">
					<div class="title">
						<strong>热门商品</strong>
					</div>
					<ul class="tab">
							<li class="current">
								<a  target="_blank"></a>
							</li>
							<li>
								<a  target="_blank"></a>
							</li>
							<li>
								<a target="_blank"></a>
							</li> 
					</ul>
					
						<ul class="tabContent" style="display: block;">
							<s:iterator var="p" value="hList">
									<li>
										<a target="_blank" href="${pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>" target="_blank">
										<img src="${pageContext.request.contextPath}/<s:property value="#p.image"/>" data-original="http://storage.shopxx.net/demo-image/3.0/201301/0ff130db-0a1b-4b8d-a918-ed9016317009-thumbnail.jpg" style="display: block;"></a>
									</li>
							</s:iterator>		
						</ul>
			</div>
		</div>
		<div class="span24">
			<div id="newProduct" class="newProduct clearfix">
					<div class="title">
						<strong>最新商品</strong>
					
					</div>
					<ul class="tab">
							<li class="current">
								<a  target="_blank"></a>
							</li>
							<li>
								<a  target="_blank"></a>
							</li>
							<li>
								<a target="_blank"></a>
							</li>
					</ul> 
						
					 <ul class="tabContent" style="display: block;">
						 	<s:iterator var="p" value="nList">
									<li>
										<a target="_blank" href="${pageContext.request.contextPath}/product_findByPid.action?pid=<s:property value="#p.pid"/>">
										<img src="${pageContext.request.contextPath}/<s:property value="#p.image"/>" data-original="http://storage.shopxx.net/demo-image/3.0/201301/4a51167a-89d5-4710-aca2-7c76edc355b8-thumbnail.jpg" style="display: block;"></a>									</li>
									</li>
							</s:iterator>		
						</ul>
			</div>
		</div>
		<div class="span24">
			<div class="friendLink">
				<dl>
				</dl>
			</div>
		</div>
	</div>
        <div class=" line1 "></div>
        <div class=" guess ">
            <div class=" guess_title ">
                <div class=" a ">
                    猜你喜欢
                </div>
            </div>
            <div class=" guess_content ">
                <!-- 左边的盒子 -->
                	<s:iterator var="p" value="lList">
                
                <div class=" guess_content_box clearfix ">
                    <div class=" big_box ">
                        <div class=" guess_content_box_img ">
                   
						
									<li>
										<a target="_blank" href="${pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>" target="_blank">
										<img src="${pageContext.request.contextPath}/<s:property value="#p.image"/>" data-original="http://storage.shopxx.net/demo-image/3.0/201301/0ff130db-0a1b-4b8d-a918-ed9016317009-thumbnail.jpg" style="display: block;"></a>
									</li>
							
                        </div>
                        <div class=" text ">
                            <span style="padding-left:0px;">
											 <s:property value="#p.pdesc"/>
						   
							</span>				 
                        </div>
                        <div class=" guess_content_price clearfix ">
                            <div class=" yen ">&yen;<span> <s:property value="#p.shop_price"/></span></div>
                            
                        </div>
                        <div class=" guess_content_food1 clearfix ">
                            <div class=" a ">秒杀</div>
                            <div class=" a ">领劵88-5</div>
                        </div>
                    </div>

                </div>
                	</s:iterator>	
            </div>
        </div>
    </div>
     
    
 


   
    
    <div class="least" >
         <div class="span24" style="background-color:black;" >
         
       
		<ul class="bottomNav" style="position:absolute; left:38.5%; ">
			 		
					
		</ul>
		  <div class="texta">Copyright&copy;2010-2020 学习资料采集商城 版权所有 保留一切权利</div>           
        <div class="textb">京ICP备10218183 京ICP备161188号 京公网安备 1101082020593号 出版经营许可证新出发京批字第直130052号</div>           
    
	     </div>
	     
      </div>
    
 

      





</body>
</html>