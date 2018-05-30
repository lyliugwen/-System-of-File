package myservlet.control;

import mybean.data.GFile_Bean;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class GFile_Servlet extends HttpServlet{
   public void init(ServletConfig config) throws ServletException{
      super.init(config);
   }
   public void doPost(HttpServletRequest request,HttpServletResponse response)
                        throws ServletException,IOException{
      request.setCharacterEncoding("gb2312");
      
      GFile_Bean fileBean=new GFile_Bean();  //创建Javabean对象
      request.setAttribute("fileBean",fileBean);
      String filePath=request.getParameter("filePath2");
      String fileName=request.getParameter("fileName2");
      String fileContent=request.getParameter("fileContent");
      File f=new File(filePath,fileName);

      fileBean.setFilePath(filePath);   //将数据存储在fileBean中 
      fileBean.setFileName(fileName); 
      fileBean.setFileContent(fileContent);  
      fileBean.setFileLength(fileContent.length());
      try{
          
          FileOutputStream output=new FileOutputStream(f);
          byte bb[]=fileContent.getBytes();
          output.write(bb,0,bb.length);
          output.close();
}
      catch(IOException exp){
           
      } 
      RequestDispatcher dispatcher=
      request.getRequestDispatcher("GHFile.jsp");
      dispatcher.forward(request, response);
   } 
   public  void  doGet(HttpServletRequest request,
HttpServletResponse response) 
                        throws ServletException,IOException{
      doPost(request,response);
   }
}