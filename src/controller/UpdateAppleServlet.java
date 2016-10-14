package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.AddModel;
import condb2.DbConnection;

public class UpdateAppleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public UpdateAppleServlet() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  System.out.println("hello");	

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String price=request.getParameter("newprice");
		String mid=request.getParameter("mid");
		AddModel obj=new AddModel();
		obj.setPrice(price);
		String sql="Update apple set price=? where mid=?";
        String msg=DbConnection.UpdateApple(obj, sql, mid);
	    System.out.println("price is updated");
        response.sendRedirect("updateapple.jsp");
	}

}
