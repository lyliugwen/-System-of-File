<%@ page contentType="text/html;charset=gb2312" %>
 <jsp:useBean id="loginBean" class="mybean.data.Login" scope="session"/>
<!DOCTYPE html>
<head>
	<meta charset="UTF-8">
	<title>文件读写系统|登录</title>
	<link rel="stylesheet" href="css/login_style.css">
</head>
<body>
	<div id="container">
		<div id="midbox">
			<div id="tian">
				<img src="image/logo.png" alt="share together" id="box_logo">
				<h1 id="box_info">文件读写系统</h1>
				<form action="helpLogin" method="post" name="form">
					学号：<input type="text" name="id" size="20"><br/>
					密码：<input type="password" name="password" size="20"><br/>
					<label for="st_radio">学生</label>
					<input type="radio" name="people" value="st" id="st_radio" checked>
					<label for="ad_radio">管理员</label>
					<input type="radio" name="people" value="ad" id="ad_radio"><br/>
					<div id="tishi"><jsp:getProperty name="loginBean" property="backNews"/>
					</div>
					<button type="submit" name="submit" id="box_submit">登录</button>
				</form>
				<div id="jump"><a href="Register.jsp" >注册账号</a></div>
			</div>
		</div>
	</div>

</body>
</html>