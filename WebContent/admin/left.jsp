<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Language" content="zh-cn">
<title>菜单</title>
<link href="${pageContext.request.contextPath}/css/left.css" rel="stylesheet" type="text/css"/>
<link rel="StyleSheet" href="${pageContext.request.contextPath}/css/dtree.css" type="text/css" />
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/images-wjj/uu.ico1.png" type="image/x-icon">
</head>
<body >
<div bgcolor="#B8B8B8">
<table width="100%" border="0">
  <tr>
    <td height="50">
<div class="dtree">

	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/dtree.js"></script>
	<script type="text/javascript">
	
		d = new dTree('d');
		d.add('01',-1,'');
		d.add('0101','01','用户管理','','','mainFrame');
		d.add('010101','0101','用户信息管理','${pageContext.request.contextPath}/userAdmin_findAll.action?page=1','','mainFrame');
		
		document.write(d);
	
	</script>
	
</div>	
    </td>
  </tr>
  
  
</table>

<table style="width:100%;height:85%;background-color:#A0A0A0;border:0; cellspacing:0; cellpadding:0;margin-bottom:2px;"  >
                    <td height="99%" >
							<table height="90%" border="0" cellspacing="0" cellpadding="0">
								<tr>
								
									<td width="100%" valign="bottom">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="white">用户名：</font> 
										<font color="red">
										<!-- <s:property value="#session.existAdminUser.username" /> -->admin</font>
									</td>
									
								</tr>
							</table>
					</td>
		<tr>
		
			<td height="100%" valign="bottom" >
				<table width="100%" height="20%"border="0" cellspacing="0" cellpadding="0" >
					<tr>
					
						<td width="100%" height="50%"align="left" >
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
							<font color="white"size="4px">
								<script language="JavaScript">
									tmpDate = new Date();
									date = tmpDate.getDate();
									month = tmpDate.getMonth() + 1;
									year = tmpDate.getFullYear();
									document.write(year);
									document.write("年");
									document.write(month);
									document.write("月");
									document.write(date);
									document.write("日 ");

									myArray = new Array(6);
									myArray[0] = "星期日"
									myArray[1] = "星期一"
									myArray[2] = "星期二"
									myArray[3] = "星期三"
									myArray[4] = "星期四"
									myArray[5] = "星期五"
									myArray[6] = "星期六"
									weekday = tmpDate.getDay();
									if (weekday == 0 | weekday == 6) {
										document.write(myArray[weekday])
									} else {
										document.write(myArray[weekday])
									};
								</script>
						</font>
						</td>
			
	
					</tr>
				</table>
			</td>
		</tr>
		
					
					
	</table>
</div>
</body>
</html>
