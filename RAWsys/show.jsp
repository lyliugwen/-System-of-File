<%@ page contentType="text/html;charset=gb2312" %>
<jsp:useBean id="fileBean" class="mybean.data.ReadDir_Bean" scope="request"/>
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
				<li id="on_this_page"><a  href=ChooseDir.jsp>�鿴Ŀ¼</a></li>
				<li><a  href=ChooseFile.jsp>��ȡ�ļ�</a></li>
				<li><a  href=writeContent.jsp>�½��ļ�</a></li>
				<li><a  href=DGFile.jsp>�޸��ļ�</a></li>
				<li><a  href=Upload.jsp>�ϴ��ļ�</a></li>
				<li><a  href=Download.jsp>�����ļ�</a></li>
			</ul>
		</nav>
		<section>
<div id="content" >
<Font size=4>
  <table border=1>
   �� <%=fileBean.getFilePath()%>�� <%=fileBean.getName()%>�����ļ���
      <tr>
<th>�ļ���</th>
<th>�Ƿ�ɶ�</th>
<th>�ļ�����</th>
<th>����·��</th>
<th>��ȡ</th>
<th>�޸�</th>
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
         <input type="submit" value="��ȡ" name="submit">
     </Form>
</td>
<td>
     <Form action="DFile" method="post" name="form">
         <input type=hidden name="filePath" value=<%=filePath%>>
         <input type=hidden name="fileName" value=<%=fileName[i]%>> 
         <input type="submit" value="�޸�" name="submit">
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