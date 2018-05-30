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
    <Form action="insertServlet?dataBase=sys&tableName=student" method=post>
       添加新记录:
       <table >
       <tr>
           <td> 学号：</td>
           <td><Input type="text" name="id"></td>
       </tr>
       <tr>
           <td>名字：</td>
           <td><Input type="text" name="name"></td>
       </tr>
       <tr>
           <td>密码：</td>
           <td><Input type="text" name="password"></td>
       </tr>

       </table>
       <br><input type="submit" name="b" value="提交">
     <Form>
  </div></section>
		</div>
	</body>
</html>