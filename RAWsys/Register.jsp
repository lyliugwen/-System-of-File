<%@ page contentType="text/html;charset=gb2312" %>
  <jsp:useBean id="userBean" class="mybean.data.Register" scope="request"/>
<Html>
<head>
	<meta charset="UTF-8">
	<title>文件读写系统|登录</title>
	<link rel="stylesheet" href="css/register_style.css">
</head>
<body>
	<div id="container">
		<div id="midbox">
			<div id="tian">
				<Form action="helpRegister" method="post" name="form">
					<h1 id="box_info">注册页面</h1>
					学号:<input type="text" name="id" size=21><br>
					姓名:<input type="text" name="name" size=21><br>
					设置密码:<input type="password" name="password" size=16><br>
					重复密码:<input type="password" name="again_password" size=16>
                                        <div id="tishi"><jsp:getProperty name="userBean" property="backNews"/></div>
					<button type="submit" name="submit" id="box_submit">注册</button>				 
				</Form>
			</div>
				
				<div id="jump"><a href="index.jsp" >登录页面</a></div>
		</div>
	</div>
</body>
 </html>