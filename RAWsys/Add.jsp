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
    <Form action="insertServlet?dataBase=sys&tableName=student" method=post>
       ����¼�¼:
       <table >
       <tr>
           <td> ѧ�ţ�</td>
           <td><Input type="text" name="id"></td>
       </tr>
       <tr>
           <td>���֣�</td>
           <td><Input type="text" name="name"></td>
       </tr>
       <tr>
           <td>���룺</td>
           <td><Input type="text" name="password"></td>
       </tr>

       </table>
       <br><input type="submit" name="b" value="�ύ">
     <Form>
  </div></section>
		</div>
	</body>
</html>