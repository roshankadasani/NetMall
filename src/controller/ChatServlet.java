package controller;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import condb2.DbConnection;
import models.ChatModel;
import models.DelModel;

public class ChatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ChatServlet() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String msg= request.getParameter("msg");
		  java.util.Date d=new java.util.Date();
		  String date=d.toString();
		  ChatModel obj=new ChatModel();
		  obj.setMsg(msg);
		  HttpSession session=request.getSession();
		  String user=(String)session.getAttribute("MAIL");
		  String sql="insert into chat(username,msg,date)values(?,?,?)";
		  String msg1=DbConnection.Chat(sql, user, date, obj);
		  if(msg1.equals("success"))
		  {
			  System.out.println("SUCCESS");
			  response.sendRedirect("apple.jsp");
		  }
		  else
		  {
			  System.out.println("FAIL");
			response.sendRedirect("apple.jsp");
		  }
	}

}
