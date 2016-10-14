package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import condb2.DbConnection;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		String username=request.getParameter("mail");
		String password=request.getParameter("pass");
		
		String sql="select * from register where mail=? AND pass=?";
		
		String msg=DbConnection.CheckUser(sql,username,password);
		if(msg.equals("success"))
		{   HttpSession session=request.getSession();
		    session.setAttribute("MAIL",username);
			System.out.println("my success");
			response.sendRedirect("index.jsp");
		}
		else
		{
			System.out.println("my fail");
			request.setAttribute("MSG","PLZ ENTER CORRECT USERNAME AND PASSWORD");
			getServletContext().getRequestDispatcher("/login.jsp").forward(request,response);
		}
	}

	}


