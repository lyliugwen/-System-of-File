<%@ page contentType="text/html;charset=gb2312" %>
 <jsp:useBean id="fileBean" type="mybean.data.GFile_Bean" scope="request"/>
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
				<li id="on_this_page"><a  href=DGFile.jsp>�޸��ļ�</a></li>
				<li><a  href=Upload.jsp>�ϴ��ļ�</a></li>
				<li><a  href=Download.jsp>�����ļ�</a></li>
			</ul>
		</nav>
		<section>
<div id="content" >
     <Font size=4>
    �ļ���λ��: 
      <jsp:getProperty name="fileBean" property="filePath"/>,
    �ļ������֣�
      <jsp:getProperty name="fileBean" property="fileName"/>,
    �ļ��ĳ��ȣ�
      <jsp:getProperty name="fileBean" property="fileLength"/> �ֽڡ�
    <br>�ļ������ݣ�  <br>
      <TextArea  rows="6" cols="60">
        <jsp:getProperty name="fileBean" property="fileContent"/>
      </TextArea>
    </div> 
		</section>
		</div>
	</body>
</html>