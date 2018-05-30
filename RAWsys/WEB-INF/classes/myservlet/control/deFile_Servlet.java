package myservlet.control;

import mybean.data.ReadFile_Bean;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class deFile_Servlet extends HttpServlet{
   public void init(ServletConfig config) throws ServletException{
      super.init(config);
   }
   public void doPost(HttpServletRequest request,HttpServletResponse response)
                        throws ServletException,IOException{
      ReadFile_Bean fileBean=new ReadFile_Bean();  //创建Javabean对象
      request.setAttribute("fileBean",fileBean);
      String filePath=request.getParameter("filePath");
      String fileName=request.getParameter("fileName");
      fileBean.setFilePath(filePath);   //将数据存储在fileBean中 
      fileBean.setFileName(fileName);   
      try{   File f=new File(filePath,fileName);
       if(f.exists() && f.isDirectory()){ 
         System.gc(); 
         f.getAbsoluteFile().delete();}
  
    else{
 throw new Exception("输入错误");
}
      
    }
catch(Exception exp){}

      RequestDispatcher dispatcher=
      request.getRequestDispatcher("dhFile.jsp");
      dispatcher.forward(request, response);
   } 
   public  void  doGet(HttpServletRequest request,
HttpServletResponse response) 
                        throws ServletException,IOException{
      doPost(request,response);
   }
}