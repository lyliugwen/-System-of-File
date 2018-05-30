package myservlet.control;

import mybean.data.ReadDir_Bean;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
class FileJSP implements FilenameFilter{ 
       String str=null;
       FileJSP(String s){
          str="."+s;
       }
       public boolean accept(File dir,String name){
          return name.endsWith(str);
       }              
    }
public class ReadDir_Servlet extends HttpServlet{
   public void init(ServletConfig config) throws ServletException{
      super.init(config);
   }
   public void doPost(HttpServletRequest request,HttpServletResponse response)
                        throws ServletException,IOException{
ReadDir_Bean fileBean=null;
try{ fileBean=(ReadDir_Bean)request.getAttribute("fileBean");
if(fileBean==null){
fileBean=new ReadDir_Bean();
request.setAttribute("fileBean",fileBean);
}}
catch(Exception exp){
fileBean=new ReadDir_Bean();
request.setAttribute("fileBean",fileBean);
}
      String filePath=request.getParameter("filePath");
      String Name=request.getParameter("Name");
if(filePath==null||filePath.length()==0){
       String webDir = request.getContextPath();
       webDir = webDir.substring(1); 
       File f= new File(""); 
       String path = f.getAbsolutePath();
       int index = path.indexOf("bin");
       String tomcatDir = path.substring(0,index);//tomcat的安装目录
       filePath="B:\\Tomcat8\\webapps\\sys";
       File dir=new File(tomcatDir+"/webapps/"+webDir);

}
if(Name==null||Name.length()==0){
Name="";

      fileBean.setFilePath(filePath);   //将数据存储在fileBean中 
      fileBean.setName(Name);  

  
      try{ 
       File dir=new File(filePath);


            String file_name[]=dir.list();
        
   
            File fn[]=dir.listFiles();
            String[]fileName=new String[file_name.length];
            String[]canRead=new String[file_name.length];
            String[]fileLength=new String[file_name.length];
            String[]absolutePath=new String[file_name.length];       
            int j=0;
            for(int i=0;i<file_name.length;i++){
             File fs=fn[i];
      

             fileName[i]=fs.getName()+" ";
             canRead[i]=fs.canRead()+" ";
             fileLength[i]=fs.length()+" ";
             absolutePath[i]=fs.getAbsolutePath()+" ";
           }
           
            fileBean.setFileName(fileName);
            fileBean.setCanRead(canRead);
            fileBean.setFileLength(fileLength);
            fileBean.setAbsolutePath(absolutePath);

      }
      catch(Exception exp){} 

}
else{
      fileBean.setFilePath(filePath);   //将数据存储在fileBean中 
      fileBean.setName(Name);  

  
      try{ 
       File dir=new File(filePath);


            FileJSP file_jsp=new FileJSP(Name);
            String file_name[]=dir.list(file_jsp);
            File fn[]=dir.listFiles(file_jsp);
            String[]fileName=new String[file_name.length];
            String[]canRead=new String[file_name.length];
            String[]fileLength=new String[file_name.length];
            String[]absolutePath=new String[file_name.length];       
            int j=0;
            for(int i=0;i<file_name.length;i++){
             File fs=fn[i];
      

             fileName[i]=fs.getName()+" ";
             canRead[i]=fs.canRead()+" ";
             fileLength[i]=fs.length()+" ";
             absolutePath[i]=fs.getAbsolutePath()+" ";
           }
           
            fileBean.setFileName(fileName);
            fileBean.setCanRead(canRead);
            fileBean.setFileLength(fileLength);
            fileBean.setAbsolutePath(absolutePath);

      }
      catch(Exception exp){} 
}
      RequestDispatcher dispatcher=
      request.getRequestDispatcher("show.jsp");
      dispatcher.forward(request, response);
   } 
   public  void  doGet(HttpServletRequest request,
HttpServletResponse response) 
                        throws ServletException,IOException{
      doPost(request,response);
   }
}