<%@ page contentType="text/html;charset=gb2312" %>
<!DOCTYPE html>
	<head>
		<meta charset="UTF-8">
		<title>文件读写系统</title>
		<link rel="stylesheet" href="css/manag_style.css">
	</head>
	<body>
		<header>
			<div id="header_logo">
				<img src="image/header_logo.png" alt="header_logo">
				<h1>文件读写系统</h1>
			</div>
			<div id="user_pic">
				<a href=studentManage><img src="image/tubiao.png" alt="user_pic"></a>
			</div>
		</header>
		<div id="container">
		<nav>
			<ul>
				<li id="on_this_page"><a  href=studentManage>用户管理</a></li>
			</ul>
		</nav>
		<section>
<div id="content" >
<% String s=request.getParameter("name");
byte[]bb=s.getBytes("iso-8859-1");
s=new String(bb);
%>
     <Form action="chaStudent" method="post" name="form">
       学号：<%=request.getParameter("id")%>
<input type="hidden" name="id" value=<%=request.getParameter("id")%>>
<br><br>姓名：<input type="text" name="name" size=18 value=<%=s%>>
<br><br>密码：<input type="text" name="password" size=18 value=<%=request.getParameter("password")%>>
<br><br>查看目录权限<input type="radio" name="dir" value="yes" checked="checked"/>有
<input type="radio" name="dir" value="no"/>无
<br><br>读取文件权限<input type="radio" name="read" value="yes" checked="checked"/>有
<input type="radio" name="read" value="no"/>无
<br><br>新建文件权限<input type="radio" name="creat" value="yes" checked="checked"/>有
<input type="radio" name="creat" value="no"/>无
<br><br>修改文件权限<input type="radio" name="write" value="yes" checked="checked"/>有
<input type="radio" name="write" value="no"/>无
<br><br>上传文件权限<input type="radio" name="upload" value="yes" checked="checked"/>有
<input type="radio" name="upload" value="no"/>无
<br><br>下载文件权限<input type="radio" name="download" value="yes" checked="checked"/>有
<input type="radio" name="download" value="no"/>无
        <br> <br><input type="submit" value="确定" name="submit">
     </Form>
     </div></section>
		</div>
	</body>
</html>