<%@ page contentType="text/html;charset=gb2312" %>
<!DOCTYPE html>
	<head>

		<title>�ļ���дϵͳ</title>
		<link rel="stylesheet" href="css/stu_style.css">
                <script src="js/stu_pic.js"></script>
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
				<li id="on_this_page"><a  href=mmManage.jsp>�������</a></li>
				<li><a  href=ChooseDir.jsp>�鿴Ŀ¼</a></li>
				<li><a  href=ChooseFile.jsp>��ȡ�ļ�</a></li>
				<li><a  href=writeContent.jsp>�½��ļ�</a></li>
				<li><a  href=DGFile.jsp>�޸��ļ�</a></li>
				<li><a  href=Upload.jsp>�ϴ��ļ�</a></li>
				<li><a  href=Download.jsp>�����ļ�</a></li>
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
      <%out.println("ѧ��:"+id);
out.println("<br><br>����:"+name);
out.println("<br><br>������:"+password);

%>
       <br><br>�޸�����:
         <input type="text" name="password" size=20>
         <input type="hidden" name="id" value=<%=id%>>
         <input type="submit" value="ȷ��" name="submit">
     </Form>

</div>
  </section>
		</div>
	</body>
</html>