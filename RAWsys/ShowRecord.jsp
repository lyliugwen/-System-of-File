<%@ page contentType="text/html;charset=gb2312" %>
<jsp:useBean id="resultBean" class="mybean.data.Example7_2_Bean" scope="request"/>
<!DOCTYPE html>
	<head>
		<meta charset="UTF-8">
		<title>文件读写系统</title>
		<link rel="stylesheet" href="css/manag_style.css">
	</head>
	<body>
		<header>
			<div id="header_logo">
				<img src="image/header_logo.png" alt="header_logo">
				<h1>文件读写系统</h1>
			</div>
			<div id="user_pic">
				<a href=studentManage><img src="image/tubiao.png" alt="user_pic"></a>
			</div>
		</header>
		<div id="container">
		<nav>
			<ul>
				<li id="on_this_page"><a  href=studentManage>用户管理</a></li>
			</ul>
		</nav>
		<section>
<div id="content" >
  <table>
  <%  String []columnName=resultBean.getColumnName(); 
  %>
      <tr> 
<th>学号</th>
<th>姓名</th>
<th>密码</th>
<th>查看目录权限</th>
<th>查看文件权限</th>
<th>新建文件权限</th>
<th>修改文件权限</th>
<th>上传文件权限</th>
<th>下载文件权限</th>
<th>删除</th>
<th>修改</th>
  </tr>
  <%  String [][] record = resultBean.getTableRecord();
      for(int i=0;i<record.length;i++) {
  %>    <tr>
  <%     for(int j=0;j<record[i].length;j++) {
  %>        <td><%= record[i][j] %> </td>
   <%  
   }   %>          
<td><form action=delStudent method=post name="form">
 <input type=hidden name="id" value=<%=record[i][0]%>>
  <input type="submit" value="删除" name="submit">
     </form></td>
<td><form action=chaStudent.jsp method=post name="form">      
 <input type=hidden name="id" value=<%=record[i][0]%>>
 <input type=hidden name="name" value=<%=record[i][1]%>>
 <input type=hidden name="password" value=<%=record[i][2]%>>
<input type="submit" value="修改" name="submit">
     </form>               
</td>

    </tr>
  <%  }
  %>
  </table>
<br><a href="Add.jsp">添加</a>
     </Form>
  </div></section>
		</div>
	</body>
</html>