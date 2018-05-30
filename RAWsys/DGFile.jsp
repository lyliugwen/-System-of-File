<%@ page contentType="text/html;charset=gb2312" %>
 <jsp:useBean id="fileBean" class="mybean.data.DFile_Bean" scope="request"/>
<!DOCTYPE html>
	<head>
		<meta charset="UTF-8">
		<title>文件读写系统</title>
		<link rel="stylesheet" href="css/stu_style.css">
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
				<li><a  href=mmManage.jsp>密码管理</a></li>
				<li><a  href=ChooseDir.jsp>查看目录</a></li>
				<li><a  href=ChooseFile.jsp>读取文件</a></li>
				<li><a  href=writeContent.jsp>新建文件</a></li>
				<li id="on_this_page"><a  href=DGFile.jsp>修改文件</a></li>
				<li><a  href=Upload.jsp>上传文件</a></li>
				<li><a  href=Download.jsp>下载文件</a></li>
			</ul>
		</nav>
		<section>
<div id="content" >
<% String write=(String)session.getAttribute("write");
if(write.equals("yes")){
%>
 <Form action="DFile" method="post" name="form">
  输入文件的路径:
         <input type="text" name="filePath" size=32 value="d:/2000">
       <br>输入文件的名字(如:Hello.java):
         <input type="text" name="fileName" size=20 value="1.jsp"> <br>
         <input type="submit" value="读取" name="submit">
</Form>
 <Form action="GFile" method="post" name="form">
<input type="hidden" name="filePath2" value="<%=fileBean.getFilePath()%>">
<input type="hidden" name="fileName2"  value="<%=fileBean.getFileName()%>">
    <br>文件的内容<br>
      <TextArea  rows="12" cols="60" name="fileContent">
<jsp:getProperty name="fileBean" property="content"/>
      </TextArea>
 <br> <br><input type="submit" value="修改" name="submit">
</Form>
<%
}
else{out.println("您无此权限");}
%>
   
</div>
  </section>
		</div>
	</body>
</html>