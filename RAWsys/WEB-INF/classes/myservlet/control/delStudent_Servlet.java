package myservlet.control;
import mybean.data.Example7_2_Bean;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class delStudent_Servlet extends HttpServlet{
public void init(ServletConfig config)throws ServletException{
super.init(config);
}
public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
Example7_2_Bean resultBean=null;
try{
resultBean=(Example7_2_Bean)request.getAttribute("resultBean");
if (resultBean==null){
resultBean=new Example7_2_Bean();
request.setAttribute("resultBean",resultBean);
}
}

catch(Exception exp){
resultBean=new Example7_2_Bean();
request.setAttribute("resultBean",resultBean);
}

try{
Class.forName("com.mysql.jdbc.Driver");
}
catch(Exception e){}
request.setCharacterEncoding("gb2312");
String dataBase="sys";
String tableName="student";
String id=request.getParameter("id");

int idr=Integer.parseInt(id);
Connection con;
PreparedStatement sql;
ResultSet rs;
try{
String uri="jdbc:mysql://127.0.0.1/"+dataBase+"?"+"user=root&password=&characterEncoding=gb2312";
con=DriverManager.getConnection(uri);
sql=con.prepareStatement("DELETE FROM student WHERE s_id="+idr);
sql.executeUpdate();
sql=con.prepareStatement("SELECT * FROM "+tableName);
rs=sql.executeQuery();
ResultSetMetaData metaData=rs.getMetaData();
int columnCount=metaData.getColumnCount();
String[] columnName=new String[columnCount];
for(int i=0;i<columnName.length;i++){
columnName[i]=metaData.getColumnName(i+1);
}
resultBean.setColumnName(columnName);
rs.last();
int rowNumber=rs.getRow();
String[][]tableRecord=resultBean.getTableRecord();
tableRecord=new String[rowNumber][columnCount];
rs.beforeFirst();
int i=0;
while(rs.next()){
for(int k=0;k<columnCount;k++)
tableRecord[i][k]=rs.getString(k+1);
i++;
}
resultBean.setTableRecord(tableRecord);
con.close();
RequestDispatcher dispatcher=request.getRequestDispatcher("ShowRecord.jsp");
dispatcher.forward(request,response);
}
catch(SQLException e){
System.out.println(e);
fail(request,response,"添加记录失败："+e.toString());
}
}
public void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
doPost(request,response);
}
public void fail(HttpServletRequest request,HttpServletResponse response,String backNews){
response.setContentType("text/html;charset=gb2312");
try{
PrintWriter out=response.getWriter();
out.println("<html><body>");
out.println("<h2>"+backNews+"</h2>");
out.println("返回");
out.println("<a href=Add.jsp>输入记录</a>");
out.println("</body></html>");
}
catch(IOException exp){}
}
}