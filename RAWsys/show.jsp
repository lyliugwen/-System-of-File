<%@ page contentType="text/html;charset=gb2312" %>
<jsp:useBean id="fileBean" class="mybean.data.ReadDir_Bean" scope="request"/>
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
				<li id="on_this_page"><a  href=ChooseDir.jsp>查看目录</a></li>
				<li><a  href=ChooseFile.jsp>读取文件</a></li>
				<li><a  href=writeContent.jsp>新建文件</a></li>
				<li><a  href=DGFile.jsp>修改文件</a></li>
				<li><a  href=Upload.jsp>上传文件</a></li>
				<li><a  href=Download.jsp>下载文件</a></li>
			</ul>
		</nav>
		<section>
<div id="content" >
<Font size=4>
  <table border=1>
   在 <%=fileBean.getFilePath()%>下 <%=fileBean.getName()%>类型文件：
      <tr>
<th>文件名</th>
<th>是否可读</th>
<th>文件长度</th>
<th>绝对路径</th>
<th>读取</th>
<th>修改</th>
 </tr>
  <%  String[] fileName= fileBean.getFileName();
      String filePath= fileBean.getFilePath();
      String[] canRead= fileBean.getCanRead();
      String[] fileLength= fileBean.getFileLength();
      String[] absolutePath=fileBean.getAbsolutePath();
      for(int i=0;i<fileName.length;i++) {
  %>    <tr>
 <td><%=fileName[i]%></td>
<td><%=canRead[i]%></td>
<td><%=fileLength[i]%></td>

<td><%=absolutePath[i]%></td>
<td>
     <Form action="ReadFile" method="post" name="form">
         <input type=hidden name="filePath" value=<%=filePath%>>
         <input type=hidden name="fileName" value=<%=fileName[i]%>> 
         <input type="submit" value="读取" name="submit">
     </Form>
</td>
<td>
     <Form action="DFile" method="post" name="form">
         <input type=hidden name="filePath" value=<%=filePath%>>
         <input type=hidden name="fileName" value=<%=fileName[i]%>> 
         <input type="submit" value="修改" name="submit">
     </Form>
</td>
   </tr>
  <%  }
  %>
  </table></div> 
		</section>
		</div>
	</body>
</html>