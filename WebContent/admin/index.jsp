
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0080)http://localhost:8080/mango/login.jhtml?redirectUrl=%2Fmango%2Fcart%2Flist.jhtml -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>管理员登录</title>

<link href="${pageContext.request.contextPath}/css/common.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/login.css"
	rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/images-wjj/uu.ico1.png" type="image/x-icon">
    <script src="./assets/font/iconfont.js"></script>
    <!-- 第三方插件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/font/iconfont.css">
    <!-- 公共样式 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css-wjj/public.css">
    <!-- 本页面样式 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css-wjj/login.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css-wjj/reset.css">


</head>
<body>

    <div class="title clearfix">
        <div class="title_img">
            <img style="height: 65px;" src="${pageContext.request.contextPath}/images-wjj/logo1.jpg" alt="">
        </div>
        <div class="title_welcom">
            欢迎登陆
        </div>
    </div>


    <div class="login_bgc">
        <div class="login_form">
            
            <h3>登陆</h3>
            <div>
						<s:actionerror />
			</div>
             <form id="container" action="${ pageContext.request.contextPath }/adminUser_login.action"  method="post" novalidate="novalidate" onsubmit="return checkForm();">
            <div class="login_title ">
                <div class="login_name clearfix">
                    <span class="a">
                        <span class="iconfont">&#xe656;</span>
                    </span>
                    <input type="text" id="username" name="username" maxlength="20"  placeholder="管理员" class="name1">
                </div>
                <br />
                <div class="login_password clearfix">
                    <span class="a">
                        <span class="iconfont">&#xe654;</span>
                    </span>
                    <input type="password" id="password" name="password" class="password1" maxlength="20" autocomplete="off" placeholder="密码">
                </div>

              
            </div>
         
            <input type="submit" class="button1"></input>
            </form>
            <div class="autologin">
                <div class="autologin1">
                     
                </div>
                <div class="autologin2">
                     <a style="color: #f26b11; font-style: 16px;" href="${ pageContext.request.contextPath }/user_loginPage.action">
                       普通用户登录
                    </a>   
                </div>
            </div>
        																																																																														
         
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
<script language="JavaScript">
  document.forms['theForm'].elements['username'].focus();
  /**
   * 检查表单输入的内容
   */
  function validate()
  {
    var validator = new Validator('theForm');
    validator.required('username', user_name_empty);
    if (document.forms['theForm'].elements['captcha'])
    {
      validator.required('captcha', captcha_empty);
    }
    return validator.passed();
  }
</script>






	
</body>
</html>