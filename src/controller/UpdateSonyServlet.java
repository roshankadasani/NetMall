package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.AddModel;
import condb2.DbConnection;

/**
 * Servlet implementation class UpdateSonyServlet
 */
public class UpdateSonyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public UpdateSonyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String price=request.getParameter("newprice");
		String mid=request.getParameter("mid");
		AddModel obj=new AddModel();
		obj.setPrice(price);
		String sql="Update sony set price=? where mid=?";
        String msg=DbConnection.UpdateApple(obj, sql, mid);
	    System.out.println("price is updated");
        response.sendRedirect("updatesony.jsp");
	}

}
