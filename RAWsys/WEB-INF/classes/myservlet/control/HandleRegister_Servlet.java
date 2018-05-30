package myservlet.control;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class HandleRegister_Servlet extends HttpServlet{
   public void init(ServletConfig config) throws ServletException{
      super.init(config);
  try{  Class.forName("com.mysql.jdbc.Driver");
     }
     catch(Exception e){} 
   }
public String handleString(String s){
try{byte bb[]=s.getBytes("iso-8859-1");
s=new String(bb);
}
catch(Exception ee){}
return s;
}

public void doPost(HttpServletRequest request,HttpServletResponse response)
               throws ServletException,IOException{
        String uri="jdbc:mysql://127.0.0.1/sys?"+"user=root&password=&characterEncoding=gb2312";
             Connection con;
             PreparedStatement sql; 
             String ids=request.getParameter("id");
             String name=request.getParameter("name");
             String password=request.getParameter("password");
             String again_password=request.getParameter("again_password");
if(ids==null||ids.length()==0){
ids="";
request.setAttribute("inf","请输入学号");

request.getRequestDispatcher("Register.jsp");
}
if(ids.length()!=10){
request.setAttribute("inf","学号不正确");

request.getRequestDispatcher("Register.jsp");
}
if(name==null||name.length()==0){
name="";
request.setAttribute("inf","请输入姓名");

request.getRequestDispatcher("Register.jsp");
}
if(password==null||password.length()==0){
password="";
request.setAttribute("inf","请输入密码");

request.getRequestDispatcher("Register.jsp");
}
if(again_password==null||again_password.length()==0){
again_password="";
request.setAttribute("inf","请输入密码");

request.getRequestDispatcher("Register.jsp");
}
if(!password.equals(again_password)){

request.setAttribute("inf","两次密码不同，注册失败");

request.getRequestDispatcher("Register.jsp");
}
int id= Integer.parseInt(ids);
try{ con=DriverManager.getConnection(uri);
String insertCondition="INSERT INTO student VALUES(?,?,?)";
sql=con.prepareStatement(insertCondition);
sql.setInt(1,id);
sql.setString(2,handleString(name));
sql.setString(3,handleString(name));
int m=sql.executeUpdate();

if(m!=0){
request.setAttribute("inf","注册成功");

request.getRequestDispatcher("Register.jsp");
}
else{
request.setAttribute("inf","存在非法字符");

request.getRequestDispatcher("Register.jsp");
}
con.close();
}
catch(SQLException e){
 request.setAttribute("inf","学号重复");

request.getRequestDispatcher("Register.jsp");
     }  
   RequestDispatcher dispatcher=request.getRequestDispatcher("Register.jsp");
          dispatcher.forward(request,response);
 }

   public  void  doGet(HttpServletRequest request,HttpServletResponse response)
           throws ServletException,IOException{
       doPost(request,response);
   }
}

