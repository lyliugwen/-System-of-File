 <%@ page contentType="text/html;charset=gb2312" %>
 <%@ page import ="java.io.*" %>
 <jsp:useBean id="fileBean" class="mybean.data.Upload_Bean" scope="request"/>
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
				<li id="on_this_page"><a  href=Upload.jsp>�ϴ��ļ�</a></li>
				<li><a  href=Download.jsp>�����ļ�</a></li>
			</ul>
		</nav>
		<section>
<div id="content" >
<% String upload=(String)session.getAttribute("upload");
if(upload.equals("yes")){
%>
       <P>ѡ��Ҫ�ϴ����ļ���<br>
     <Form action="upFile" method="post" ENCTYPE="multipart/form-data">
        <input type=FILE name="boy" size="45"> <br>
         <br><input type="submit" name ="boy" value="�ύ">
     </Form>

       <br> �ϴ����ļ����֣�
     <jsp:getProperty name="fileBean" property="fileName"/> 
        <br><br> �ϴ�������
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
else{out.println("���޴�Ȩ��");}
%>
 </div> 
		</section>
		</div>
	</body>
</html>