package mybean.data;

public class DFile_Bean {
   String filePath,fileName;
   StringBuffer content;

   public void setContent(StringBuffer str){
      content=str; 
   }
   public StringBuffer getContent(){
      return content; 
   }
   public void setFilePath(String str){
      filePath=str;
   }
   public String getFilePath(){
      return filePath; 
   }
   public void setFileName(String str){
      fileName=str;
   }
   public String getFileName(){
      return fileName; 
   }

}