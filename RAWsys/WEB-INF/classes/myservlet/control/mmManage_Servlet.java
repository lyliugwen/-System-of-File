package myservlet.control;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.Calendar;
public class mmManage_Servlet extends HttpServlet{
public void init(ServletConfig config)throws ServletException{
super.init(config);
}
public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{

try{
Class.forName("com.mysql.jdbc.Driver");
}
catch(Exception e){}
request.setCharacterEncoding("gb2312");
String dataBase="sys";
String tableName="student";
String id=request.getParameter("id");

String password=request.getParameter("password");

if(password==null||password.length()==0){

fail(request,response,"修改记录失败，必须给出密码");
}

int idr=Integer.parseInt(id);
Connection con;
PreparedStatement sql;
ResultSet rs;
try{
HttpSession session=request.getSession(true);
session.setAttribute("password",password);

String uri="jdbc:mysql://127.0.0.1/"+dataBase+"?"+"user=root&password=&characterEncoding=gb2312";
con=DriverManager.getConnection(uri);

sql=con.prepareStatement("update student set s_password='"+password+"' WHERE s_id="+idr);
sql.executeUpdate();
sql=con.prepareStatement("SELECT * FROM "+tableName);
rs=sql.executeQuery();
con.close();
RequestDispatcher dispatcher=request.getRequestDispatcher("mmManage.jsp");
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
out.println("<a href=mmManage>输入记录</a>");
out.println("</body></html>");
}
catch(IOException exp){}
}
}