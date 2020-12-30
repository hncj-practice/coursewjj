<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>会员注册</title>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/register.css" rel="stylesheet" type="text/css"/>
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/images-wjj/uu.ico1.png" type="image/x-icon">
    <script src="${pageContext.request.contextPath}/assets/font/iconfont.js"></script>
     
    <!-- 第三方插件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/font/iconfont.css">
    <!-- 公共样式 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css-wjj/public.css">
    <!-- 本页面样式 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css-wjj/register.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css-wjj/reset.css">

<script>
	function checkForm(){
		// 校验用户名:
		// 获得用户名文本框的值:
		var username = document.getElementById("username").value;
		if(username == null || username == ''){
			alert("用户名不能为空!");
			return false;
		}
		// 校验密码:
		// 获得密码框的值:
		var password = document.getElementById("password").value;
		if(password == null || password == ''){
			alert("密码不能为空!");
			return false;
		}
		// 校验确认密码:
		var repassword = document.getElementById("repassword").value;
		if(repassword != password){
			alert("两次密码输入不一致!");
			return false;
		}
	}
	
	
	function checkUsername(){
		// 获得文件框值:
		var username = document.getElementById("username").value;
		// 1.创建异步交互对象
		var xhr = createXmlHttp();
		// 2.设置监听
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4){
				if(xhr.status == 200){
					document.getElementById("span1").innerHTML = xhr.responseText;
				}
			}
		}
		// 3.打开连接
		xhr.open("GET","${pageContext.request.contextPath}/user_findByName.action?time="+new Date().getTime()+"&username="+username,true);
		// 4.发送
		xhr.send(null);
	}
	
	function createXmlHttp(){
		   var xmlHttp;
		   try{ // Firefox, Opera 8.0+, Safari
		        xmlHttp=new XMLHttpRequest();
		    }
		    catch (e){
			   try{// Internet Explorer
			         xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
			      }
			    catch (e){
			      try{
			         xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
			      }
			      catch (e){}
			      }
		    }

			return xmlHttp;
		 }
	
	function change(){
		var img1 = document.getElementById("checkImg");
		img1.src="${pageContext.request.contextPath}/checkImg.action?"+new Date().getTime();
	}
</script>
</head>
<body>
 <div class="title clearfix">
        <div class="title_img">
            <img style="height: 65px;margin-right: 10px;" src="${pageContext.request.contextPath}/images-wjj/logo1.jpg" alt="">
        </div>
        <div class="title_welcom">
            欢迎登陆
        </div>
    </div>
    <div class="register_bgc">
        <div class="register_form">
            <h3>注册账号</h3>
            
            <form id="registerForm" action="${ pageContext.request.contextPath }/user_regist.action"  method="post" novalidate="novalidate" onsubmit="return checkForm();">
   <!--  用户昵称 -->
            <div class="register_title">
                <div class="register_name clearfix">
                    <span class="a">
                        <span class="iconfont">
                         <image style="width:33px;height:35px;" src="regist/1.png"></image>
                        </span>
                    </span>
                    <input type="text" id="username" name="username" placeholder="用户昵称" class="name1" onblur="checkUsername()">
                </div>
              
                
  <!--   密码 -->
                <div class="register_password clearfix">
                    <span class="a">
                        <image style="width:33px;height:30px;" src="regist/2.png"></image>
                        
                    </span>
                    <input type="password" id="password" name="password" autocomplete="off"class="name1" placeholder="密码">
                </div>
                <div class="tips">请输入密码/密码格式为6-20位字母组合</div>
                
                <div class="register_password clearfix">
                    <span class="a">
                        <image style="width:33px;height:30px;" src="regist/2.png"></image>
                    </span>
                    <input id="repassword" type="password" name="repassword" maxlength="20" class="name1"autocomplete="off"  placeholder="确认密码">
                </div>
                <div class="tips">请再次确认密码</div>
   <!-- 邮箱 --> 
                <div class="register_name clearfix">
                    <span class="a">
                        <image style="width:33px;height:35px;" src="regist/3.png"></image>
                    </span>
                    <input type="text" id="email" name="email" placeholder="请输入邮箱" class="name1">
                </div>
                <div class="tips">请输入邮箱/邮箱已注册、邮箱格式错误</div>
                
   <!-- 姓名 -->  
                <div class="register_name clearfix">
                    <span class="a">
                        <image style="width:33px;height:35px;" src="regist/1.png"></image>
                    </span>
                    <input type="text" name="name" placeholder="姓名" class="name1">
                   <span><s:fielderror fieldName="name"/></span>
                </div>
                <div class="tips">请输入用户姓名</div>
                
   <!-- 电话 -->
                <div class="register_name clearfix">
                    <span class="a">
                        <image style="width:33px;height:35px;" src="regist/4.png"></image>
                    </span>
                    <input type="text" name="phone" placeholder="电话" class="name1">
                </div>
                <div class="tips">请输入电话号码</div>
                
   <!-- 地址 -->  
                <div class="register_name clearfix">
                    <span class="a">
                        <image style="width:33px;height:35px;" src="regist/5.png"></image>
                    </span>
                    <input type="text" name="addr" placeholder="地址" class="name1">
                    <span><s:fielderror fieldName="addr"/></span>
                </div>
                <div class="tips">请输入收货地址</div>
                
         
   <!-- 验证码 -->
                <div class="codebox clearfix">
                    <div class="register_code">
                        <input type="text" id="checkcode" name="checkcode" maxlength="4" autocomplete="off"class="name1" placeholder="验证码">
                    </div>
                    <div class="yzm">
                        <img id="checkImg" class="captchaImage" style="width:100px;height:40px;"src="${pageContext.request.contextPath}/checkImg.action" onclick="change()" title="点击更换验证码">
                    </div>
                </div>
                
            </div>
           <button class="button" class="button" >注册</button>

            <div class="login">
            <span>已有账号</span>
            <a href="${pageContext.request.contextPath}/user_loginPage.action" style="color: rgb(17, 0, 68),196,49;">去登陆</a>

        </div>
           </form>
        </div>
   </div>



    <div class="foot">
        <div class="text1">
            Copyright&copy;2010-2016 学习资料采集商城 版权所有 保留一切权利
        </div>
        <div class="text2">
            京ICP备10218183号京证ICP证161188号 京公网安备 11010802020593 出版物经营许可证新出发京批字号第直130052号
        </div>
    </div>



</body></html>