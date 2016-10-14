package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import condb2.DbConnection;

/**
 * Servlet implementation class DeleteSamsungServlet
 */
public class DeleteSamsungServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteSamsungServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
        String [] mid=request.getParameterValues("mid");
        String sql="delete from samsung where mid=?";
        for(int i=0;i<mid.length;i++)
        {
        	DbConnection.DeleteApple(sql, mid[i]);
        	out.println(mid[i]+"<br>");
        }
        response.sendRedirect("deletesamsung.jsp");
	}
}
