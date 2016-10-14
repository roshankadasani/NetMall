package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import condb2.DbConnection;

public class DeletewishlistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public DeletewishlistServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 PrintWriter out=response.getWriter();
		 	HttpSession session=request.getSession();
		 	String user =(String)session.getAttribute("MAIL");
	        String [] pname=request.getParameterValues("pro");
	        String sql="delete from addtocart where date=? and user1=?";
	        for(int i=0;i<pname.length;i++)
	        {
	        	DbConnection.Deletecart(sql, pname[i],user);
	        	out.println(pname[i]+"<br>");
	        }
	        response.sendRedirect("wishlist.jsp");
	
	
	
	}
	}


