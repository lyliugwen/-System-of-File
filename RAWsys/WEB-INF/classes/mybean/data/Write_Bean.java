package mybean.data;

public class Write_Bean {
   String filePath,fileName;
   long fileLength;
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

   public void setFileLength(long len){
      fileLength=len; 
   }
   public long getFileLength(){
      return fileLength; 
   }
}