<%@ page contentType="text/html;charset=gb2312" %>
<jsp:useBean id="fileBean" class="mybean.data.Write_Bean" scope="request"/>
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
				<li id="on_this_page"><a  href=writeContent.jsp>�½��ļ�</a></li>
				<li><a  href=DGFile.jsp>�޸��ļ�</a></li>
				<li><a  href=Upload.jsp>�ϴ��ļ�</a></li>
				<li><a  href=Download.jsp>�����ļ�</a></li>
			</ul>
		</nav>
		<section>
<div id="content" >
<% String creat=(String)session.getAttribute("creat");
if(creat.equals("yes")){
%>
  <Form action="writeFile" method=post>
     ������Ŀ¼��<input type=text name="filePath" size=32 value="d:/2000">
      <br><br>���뱣���ļ������֣�<input type=text name="fileName" size=20>
      <br><br>�����ļ������ݣ�<BR>
     <TextArea name="fileContent" Rows="10" Cols="60"></TextArea>
      <br><input type=submit value="�ύ">
  </Form> 
     <br><b>�ļ���λ��: <jsp:getProperty name="fileBean" property="filePath"/>,
     �ļ������֣�<jsp:getProperty name="fileBean" property="fileName"/>,
     �ļ��ĳ��ȣ�<jsp:getProperty name="fileBean" property="fileLength"/>�ֽڡ�
<%
}
else{out.println("���޴�Ȩ��");}
%>
  </div> 
		</section>
		</div>
	</body>
</html>