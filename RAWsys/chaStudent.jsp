<%@ page contentType="text/html;charset=gb2312" %>
<!DOCTYPE html>
	<head>
		<meta charset="UTF-8">
		<title>�ļ���дϵͳ</title>
		<link rel="stylesheet" href="css/manag_style.css">
	</head>
	<body>
		<header>
			<div id="header_logo">
				<img src="image/header_logo.png" alt="header_logo">
				<h1>�ļ���дϵͳ</h1>
			</div>
			<div id="user_pic">
				<a href=studentManage><img src="image/tubiao.png" alt="user_pic"></a>
			</div>
		</header>
		<div id="container">
		<nav>
			<ul>
				<li id="on_this_page"><a  href=studentManage>�û�����</a></li>
			</ul>
		</nav>
		<section>
<div id="content" >
<% String s=request.getParameter("name");
byte[]bb=s.getBytes("iso-8859-1");
s=new String(bb);
%>
     <Form action="chaStudent" method="post" name="form">
       ѧ�ţ�<%=request.getParameter("id")%>
<input type="hidden" name="id" value=<%=request.getParameter("id")%>>
<br><br>������<input type="text" name="name" size=18 value=<%=s%>>
<br><br>���룺<input type="text" name="password" size=18 value=<%=request.getParameter("password")%>>
<br><br>�鿴Ŀ¼Ȩ��<input type="radio" name="dir" value="yes" checked="checked"/>��
<input type="radio" name="dir" value="no"/>��
<br><br>��ȡ�ļ�Ȩ��<input type="radio" name="read" value="yes" checked="checked"/>��
<input type="radio" name="read" value="no"/>��
<br><br>�½��ļ�Ȩ��<input type="radio" name="creat" value="yes" checked="checked"/>��
<input type="radio" name="creat" value="no"/>��
<br><br>�޸��ļ�Ȩ��<input type="radio" name="write" value="yes" checked="checked"/>��
<input type="radio" name="write" value="no"/>��
<br><br>�ϴ��ļ�Ȩ��<input type="radio" name="upload" value="yes" checked="checked"/>��
<input type="radio" name="upload" value="no"/>��
<br><br>�����ļ�Ȩ��<input type="radio" name="download" value="yes" checked="checked"/>��
<input type="radio" name="download" value="no"/>��
        <br> <br><input type="submit" value="ȷ��" name="submit">
     </Form>
     </div></section>
		</div>
	</body>
</html>