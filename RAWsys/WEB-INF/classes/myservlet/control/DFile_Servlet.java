package myservlet.control;

import mybean.data.DFile_Bean;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class DFile_Servlet extends HttpServlet{
   public void init(ServletConfig config) throws ServletException{
      super.init(config);
   }
   public void doPost(HttpServletRequest request,HttpServletResponse response)
                        throws ServletException,IOException{
         request.setCharacterEncoding("gb2312");
       DFile_Bean fileBean=new DFile_Bean();  //����Javabean����
      request.setAttribute("fileBean",fileBean);
      String filePath=request.getParameter("filePath");
      String fileName=request.getParameter("fileName");
   boolean boo=filePath!=null&&filePath.length()>0;
   boo=fileName!=null&&fileName.length()>0;
   StringBuffer buffer=new StringBuffer();
    fileBean.setFilePath(filePath);
    fileBean.setFileName(fileName);
if(boo){
RandomAccessFile in=null;
try{ in=new RandomAccessFile(filePath+"/"+fileName,"rw");
long length=in.length();
long position=0;
in.seek(position);
while(position<length){
String str=in.readLine();
byte b[]=str.getBytes("iso-8859-1");
str=new String(b);
position=in.getFilePointer();
buffer.append(str+"/n");
}
fileBean.setContent(buffer);
}
     catch(IOException exp){}
      } 
      RequestDispatcher dispatcher=
      request.getRequestDispatcher("DGFile.jsp");
      dispatcher.forward(request, response);
   } 
   public  void  doGet(HttpServletRequest request,
HttpServletResponse response) 
                        throws ServletException,IOException{
      doPost(request,response);
   }
}