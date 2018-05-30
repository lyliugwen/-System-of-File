 <%@ page contentType="text/html;charset=gb2312" %>
 <%@ page import ="java.io.*" %>
 <jsp:useBean id="fileBean" class="mybean.data.Upload_Bean" scope="request"/>
<%@ page contentType="text/html;charset=gb2312" %>
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
				<li><a  href=DGFile.jsp>修改文件</a></li>
				<li id="on_this_page"><a  href=Upload.jsp>上传文件</a></li>
				<li><a  href=Download.jsp>下载文件</a></li>
			</ul>
		</nav>
		<section>
<div id="content" >
<% String upload=(String)session.getAttribute("upload");
if(upload.equals("yes")){
%>
       <P>选择要上传的文件：<br>
     <Form action="upFile" method="post" ENCTYPE="multipart/form-data">
        <input type=FILE name="boy" size="45"> <br>
         <br><input type="submit" name ="boy" value="提交">
     </Form>

       <br> 上传的文件名字：
     <jsp:getProperty name="fileBean" property="fileName"/> 
        <br><br> 上传反馈：
     <jsp:getProperty name="fileBean" property="mess"/>
 
     <%
        String name=fileBean.getFileName();
        boolean boo =name.endsWith(".jpg");
        boo = boo||name.endsWith(".gif");
        boo = boo||name.endsWith(".png");
        if(boo) {
     %>
           <image src = "UploadFile/<%=name%>" width=200 height =200><%=name %></image>
     <%
        }
        else {
     %>
          <%=name %>
     <%
        }
     %>
<%
}
else{out.println("您无此权限");}
%>
 </div> 
		</section>
		</div>
	</body>
</html>