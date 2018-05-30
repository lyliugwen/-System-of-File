package myservlet.control;
import mybean.data.Register;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
public class HandleRegister extends HttpServlet{
   public void init(ServletConfig config) throws ServletException{
      super.init(config);
  try{  Class.forName("com.mysql.jdbc.Driver");
     }
     catch(Exception e){} 
   }
public String handleString(String s){
try{
byte[]bb=s.getBytes("iso-8859-1");
s=new String(bb);
return s;}
catch(Exception e){
return s;}
}

public void doPost(HttpServletRequest request,HttpServletResponse response)
               throws ServletException,IOException{
       String uri="jdbc:mysql://127.0.0.1/sys?"+"user=root&password=&characterEncoding=gb2312";     
             Connection con;
             PreparedStatement sql; 
             String backNews="";
      Register userBean=new Register();
      request.setAttribute("userBean",userBean);
             String idr=request.getParameter("id");
      if(idr.length()!=10){
 backNews="请输入正确的学号";
userBean.setBackNews(backNews);
RequestDispatcher dispatcher=request.getRequestDispatcher("Register.jsp");
   dispatcher.forward(request,response);            }            
 int id=Integer.parseInt(idr == null || "".equals(idr)?"0":idr);
String name=request.getParameter("name");             
String password=request.getParameter("password").trim();
 String again_password=request.getParameter("again_password").trim();

          if(id==0){
backNews="请输入学号";
userBean.setBackNews(backNews);
RequestDispatcher dispatcher=request.getRequestDispatcher("Register.jsp");
   dispatcher.forward(request,response);              }


if(name==null||name.length()==0){
backNews="请输入名字";
userBean.setBackNews(backNews);
RequestDispatcher dispatcher=request.getRequestDispatcher("Register.jsp");
   dispatcher.forward(request,response);  
}

if(password==null||password.length()==0){
backNews="请输入密码";
userBean.setBackNews(backNews);
RequestDispatcher dispatcher=request.getRequestDispatcher("Register.jsp");
   dispatcher.forward(request,response);  
}

if(again_password==null||again_password.length()==0){
backNews="请输入重复密码";
userBean.setBackNews(backNews);
RequestDispatcher dispatcher=request.getRequestDispatcher("Register.jsp");
   dispatcher.forward(request,response);  
}

if(!again_password.equals(password)){
backNews="两次输入密码不一致";
userBean.setBackNews(backNews);
RequestDispatcher dispatcher=request.getRequestDispatcher("Register.jsp");
   dispatcher.forward(request,response);  
}

try{con=DriverManager.getConnection(uri);
String insertCondition="INSERT INTO student(s_id,s_name,s_password) VALUES(?,?,?)";
sql=con.prepareStatement(insertCondition);
sql.setInt(1,id);
sql.setString(2,handleString(name));
sql.setString(3,password);
int m=sql.executeUpdate();
if(m!=0){
 backNews="注册成功";
userBean.setBackNews(backNews);
}

else{
backNews="错误";
userBean.setBackNews(backNews);
}

con.close();
}
catch(SQLException ee){
backNews="学号已注册";
userBean.setBackNews(backNews);
RequestDispatcher dispatcher=request.getRequestDispatcher("Register.jsp");
   dispatcher.forward(request,response); 
}

RequestDispatcher dispatcher=request.getRequestDispatcher("Register.jsp");
   dispatcher.forward(request,response);  
}
           
   public  void  doGet(HttpServletRequest request,HttpServletResponse response)
           throws ServletException,IOException{
       doPost(request,response);
   }
}
  