package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public AdminLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid=request.getParameter("username");
		String password=request.getParameter("password");
		if(userid.equals("")||password.equals(""))
		{
			String message="username or password cannot be empty";
			request.setAttribute("msg", message);
			getServletContext().getRequestDispatcher("/adminlogin.jsp").include(request, response);
		}
		else if(userid.equals("team12")&&password.equals("netmall"))
		{
			HttpSession session=request.getSession();
			session.setAttribute("loginid", userid);
			getServletContext().getRequestDispatcher("/aprofile.jsp").forward(request, response);
		}
		else
		{
			String message="Please enter correct username or password";
			request.setAttribute("msg", message);
			getServletContext().getRequestDispatcher("/adminlogin.jsp").include(request, response);
		}
	}


}
