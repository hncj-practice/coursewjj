<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<HTML>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<LINK href="${pageContext.request.contextPath}/css/Style1.css" type="text/css" rel="stylesheet">
		  <link rel="shortcut icon" href="${pageContext.request.contextPath}/images-wjj/uu.ico1.png" type="image/x-icon">
	</HEAD>
	
	<body style="background-color:#C0C0C0;">
		<form id="userAction_save_do" name="Form1" action="${pageContext.request.contextPath}/userAdmin_update.action" method="post" >
			<input type="hidden" name="uid" value="<s:property value="model.uid"/>" />
			<input type="hidden" name="state" value="<s:property value="model.state"/>" />
			<input type="hidden" name="code" value="<s:property value="model.code"/>" />
			&nbsp;
			<table cellSpacing="1" cellPadding="5" width="100%" height="90% "align="center" bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
				<tr>
					<td class="ta_01" align="center" style="background-color:#A8A8A8;height:44px;font-size:20px;" colSpan="4">
						<strong><STRONG>编辑用户</STRONG>
						</strong>
					</td>
				</tr>
				<tr>
				    <td style="background-color:#F8F8F8;height:44px;font-size:18px;width:45%; text-align:right ;"class="ta_01">
						用户名称：
					</td>
					<td class="ta_01" style="background-color:#F8F8F8;height:44px;font-size:18px;height-line:100%;">
						<input type="text" name="username" value="<s:property value="model.username"/>" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>

				<tr>
					
					<td style="background-color:#F8F8F8;height:44px;font-size:18px;width:45%; text-align:right ;" class="ta_01">
						密码：
					</td>
				
					<td width="60%"class="ta_01" style="background-color:#F8F8F8;height:44px;font-size:18px;height-line:100%;">
						<input type="text" name="password" value="<s:property value="model.password"/>" id="userAction_save_do_logonName" class="bg"/>
					</td>
			
				</tr>
	- 			<tr>
					<td style="background-color:#F8F8F8;height:44px;font-size:18px;width:45%; text-align:right ;" class="ta_01">
						真实姓名：
					</td>
					<td class="ta_01" style="background-color:#F8F8F8;height:44px;font-size:18px;height-line:100%;">
						<input type="text" name="name" value="<s:property value="model.name"/>" id="userAction_save_do_logonName" class="bg"/>
						</td>
				</tr>
				<tr>
					<td style="background-color:#F8F8F8;height:44px;font-size:18px;width:45%; text-align:right ;" class="ta_01">
						邮箱：
					</td>
					<td class="ta_01" style="background-color:#F8F8F8;height:44px;font-size:18px;height-line:100%;">
						<input type="text" name="email" value="<s:property value="model.email"/>" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td style="background-color:#F8F8F8;height:44px;font-size:18px;width:45%; text-align:right ;" class="ta_01">
						电话：
					</td>
					<td class="ta_01" style="background-color:#F8F8F8;height:44px;font-size:18px;height-line:100%;">
						<input type="text" name="phone" value="<s:property value="model.phone"/>" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr>
				<tr>
					<td style="background-color:#F8F8F8;height:44px;font-size:18px;width:45%; text-align:right ;" class="ta_01">
						地址：
					</td>
					<td class="ta_01" style="background-color:#F8F8F8;height:44px;font-size:18px;height-line:100%;">
						<input type="text" name="addr" value="<s:property value="model.addr"/>" id="userAction_save_do_logonName" class="bg"/>
					</td>
				</tr> 
			
				<tr>
					<td class="ta_01" style="WIDTH: 100%;height:30%" align="center"
						bgColor="#F8F8F8" colSpan="4">
						<button type="submit" id="userAction_save_do_submit" value="确定" class="button_ok">
							&#30830;&#23450;
						</button>

						<FONT face="宋体">&nbsp;&nbsp;</FONT>
						<INPUT class="button_ok" type="button" onclick="history.go(-1)" value="返回"/>
						<span id="Label1"></span>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>