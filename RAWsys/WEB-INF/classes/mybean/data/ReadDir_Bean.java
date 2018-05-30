package mybean.data;

public class ReadDir_Bean {
   String filePath,Name;
   String[]fileName,canRead,fileLength,absolutePath;
   public ReadDir_Bean(){
fileName=new String[1];
canRead=new String[1];
fileLength=new String[1];
absolutePath=new String[1];}
   public void setFilePath(String str){
      filePath=str;
   }
   public String getFilePath(){
      return filePath; 
   }
   public void setName(String str){
      Name=str;
   }
   public String getName(){
      return Name; 
   }
   public void setFileName(String[]str){
      fileName=str;
   }
   public String[]getFileName(){
      return fileName; 
   }
   public void setCanRead(String[]str){
      canRead=str;
   }
   public String[]getCanRead(){
      return canRead; 
   }
   public void setFileLength(String[]str){
      fileLength=str;
   }
   public String[]getFileLength(){
      return fileLength; 
   }
   public void setAbsolutePath(String[]str){
      absolutePath=str;
   }
   public String[]getAbsolutePath(){
      return absolutePath; 
   }
}