package controller;

import java.io.DataInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import condb2.DbConnection;

/**
 * Servlet implementation class UploadServlet3
 */
public class UploadServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public UploadServlet3() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html"); 
		PrintWriter out=response.getWriter();
		String savePath = getServletContext().getRealPath("/")+"pdimg\\";
        System.out.println(savePath); 
		  String saveFile="";
	      String contentType = request.getContentType();
	      if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
	                DataInputStream in = new DataInputStream(request.getInputStream());
	                
	                int formDataLength = request.getContentLength();
	                byte dataBytes[] = new byte[formDataLength];
	                int byteRead = 0;
	                int totalBytesRead = 0;
	                while (totalBytesRead < formDataLength) {
	                        byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
	                        totalBytesRead += byteRead;
	                        }
	                String file = new String(dataBytes);
	               
	                saveFile = file.substring(file.indexOf("filename=\"") + 10);
	                saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
	                saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
	                int lastIndex = contentType.lastIndexOf("=");
	                String boundary = contentType.substring(lastIndex + 1,contentType.length());
	                int pos;
	                pos = file.indexOf("filename=\"");
	                pos = file.indexOf("\n", pos) + 1;
	                pos = file.indexOf("\n", pos) + 1;
	                pos = file.indexOf("\n", pos) + 1;
	                int boundaryLocation = file.indexOf(boundary, pos) - 4;
	                int startPos = ((file.substring(0, pos)).getBytes()).length;
	                int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
	                FileOutputStream fileOut = new FileOutputStream(savePath+saveFile); 
	                fileOut.write(dataBytes, startPos, (endPos - startPos));
	                fileOut.flush();
	                fileOut.close();
	                
	     
	                }
		
	      HttpSession session=request.getSession();
	      String id=(String)session.getAttribute("model"); 
	      String sql="Update samsung set image=? where mid=?";
	      System.out.println("image is"+saveFile+"and id is: "+id);
	      String msg= DbConnection.UpdateUserPic(sql, id,saveFile);
	      out.println(msg);
		 response.sendRedirect("addsamsung.jsp");
        }

}
