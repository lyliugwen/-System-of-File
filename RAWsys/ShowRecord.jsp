<%@ page contentType="text/html;charset=gb2312" %>
<jsp:useBean id="resultBean" class="mybean.data.Example7_2_Bean" scope="request"/>
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
  <table>
  <%  String []columnName=resultBean.getColumnName(); 
  %>
      <tr> 
<th>ѧ��</th>
<th>����</th>
<th>����</th>
<th>�鿴Ŀ¼Ȩ��</th>
<th>�鿴�ļ�Ȩ��</th>
<th>�½��ļ�Ȩ��</th>
<th>�޸��ļ�Ȩ��</th>
<th>�ϴ��ļ�Ȩ��</th>
<th>�����ļ�Ȩ��</th>
<th>ɾ��</th>
<th>�޸�</th>
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
  <input type="submit" value="ɾ��" name="submit">
     </form></td>
<td><form action=chaStudent.jsp method=post name="form">      
 <input type=hidden name="id" value=<%=record[i][0]%>>
 <input type=hidden name="name" value=<%=record[i][1]%>>
 <input type=hidden name="password" value=<%=record[i][2]%>>
<input type="submit" value="�޸�" name="submit">
     </form>               
</td>

    </tr>
  <%  }
  %>
  </table>
<br><a href="Add.jsp">���</a>
     </Form>
  </div></section>
		</div>
	</body>
</html>