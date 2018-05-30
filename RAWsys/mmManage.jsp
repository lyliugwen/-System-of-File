<%@ page contentType="text/html;charset=gb2312" %>
<!DOCTYPE html>
	<head>

		<title>文件读写系统</title>
		<link rel="stylesheet" href="css/stu_style.css">
                <script src="js/stu_pic.js"></script>
	</head>
	<body>
		<header>
			<div id="header_logo">
				<img src="image/header_logo.png" alt="header_logo">
				<h1>文件读写系统</h1>
			</div>
			<div id="user_pic">
				<a href=mmManage.jsp><img src="image/tubiao.png" alt="user_pic"></a>
			</div>
		</header>
		<div id="container">
		<nav>
			<ul>
				<li id="on_this_page"><a  href=mmManage.jsp>密码管理</a></li>
				<li><a  href=ChooseDir.jsp>查看目录</a></li>
				<li><a  href=ChooseFile.jsp>读取文件</a></li>
				<li><a  href=writeContent.jsp>新建文件</a></li>
				<li><a  href=DGFile.jsp>修改文件</a></li>
				<li><a  href=Upload.jsp>上传文件</a></li>
				<li><a  href=Download.jsp>下载文件</a></li>
			</ul>
		</nav>
		<section>
<div id="content" >
<% Integer idr=(Integer)session.getAttribute("id");
String name=(String)session.getAttribute("name");
String password=(String)session.getAttribute("password");
int id= idr.intValue();  
%>
     <Form action="Gmm" method="post" name="form">
      <%out.println("学号:"+id);
out.println("<br><br>姓名:"+name);
out.println("<br><br>现密码:"+password);

%>
       <br><br>修改密码:
         <input type="text" name="password" size=20>
         <input type="hidden" name="id" value=<%=id%>>
         <input type="submit" value="确认" name="submit">
     </Form>

</div>
  </section>
		</div>
	</body>
</html>