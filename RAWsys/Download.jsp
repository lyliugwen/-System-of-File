<%@ page contentType="text/html;charset=gb2312" %>
<!DOCTYPE html>
	<head>
		<meta charset="UTF-8">
		<title>�ļ���дϵͳ</title>
		<link rel="stylesheet" href="css/stu_style.css">
	</head>
	<body>
		<header>
			<div id="header_logo">
				<img src="image/header_logo.png" alt="header_logo">
				<h1>�ļ���дϵͳ</h1>
			</div>
			<div id="user_pic">
				<a href=mmManage.jsp><img src="image/tubiao.png" alt="user_pic"></a>
			</div>
		</header>
		<div id="container">
		<nav>
			<ul>
				<li><a  href=mmManage.jsp>�������</a></li>
				<li><a  href=ChooseDir.jsp>�鿴Ŀ¼</a></li>
				<li><a  href=ChooseFile.jsp>��ȡ�ļ�</a></li>
				<li><a  href=writeContent.jsp>�½��ļ�</a></li>
				<li><a  href=DGFile.jsp>�޸��ļ�</a></li>
				<li><a  href=Upload.jsp>�ϴ��ļ�</a></li>
				<li id="on_this_page"><a  href=Download.jsp>�����ļ�</a></li>
			</ul>
		</nav>
		<section>
<div id="content" >
<Font size=4>
<% String download=(String)session.getAttribute("download");
if(download.equals("yes")){
%>
     <Form action="DownFile" method="post" name="form">
       �����ļ���·��:
         <input type="text" name="filePath" size=32 value="d:/2000">
        <br><br>�����ļ�������:
         <input type="text" name="fileName" size=19 value="1.jsp"> <br>
          <br><input type="submit" value="����" name="submit">
     </Form>
<%
}
else{out.println("���޴�Ȩ��");}
%>
      </div> 
		</section>
		</div>
	</body>
</html>