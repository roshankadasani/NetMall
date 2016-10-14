package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import condb2.DbConnection;
import models.RegModel;


public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		System.out.println("hello");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//++++++++++++++++++++++++++++++++++++++Captcha From Session Validation++++++++++++++++++++++++++++++++
				String Captcha1=request.getParameter("captcha");
				PrintWriter out=response.getWriter();
				HttpSession session=request.getSession();
				String captcha=(String)session.getAttribute("captcha");
				out.println(captcha);
				out.println(Captcha1);
				if(captcha.equals(Captcha1))
				{
					out.println("Success");	
				}
				else
				{
					out.println("fail");
					request.setAttribute("captcha","Invalid Captcha code Please regenrate Captcha");
					getServletContext().getRequestDispatcher("/register.jsp").forward(request,response);
				}
				
//+++++++++++++++++++++++++++++++++++++TASK1(FETCH ALL VALUES)++++++
		response.setContentType("text/html");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String mail=request.getParameter("mail");
		String cno=request.getParameter("cno");
		String pass=request.getParameter("pass");
		//String pass1=request.getParameter("pass1");
	
		out.println(fname+" "+lname+" "+mail+" "+cno+" "+pass);
		
//++++++++++++++++++++++++++++++++++++++++TASK2(SET VALUES INSIDE MODEL CLASS)
	
		  RegModel obj=new RegModel();
		  obj.setFname(fname);
		  obj.setLname(lname);
		  obj.setMail(mail);
		  obj.setCno(cno);
		  obj.setPass(pass);
		  //obj.setpass1(pass1);
//++++++++++++++++++++++++++++++++++++++++++TASK3(call DAO)	
		  String sql="insert into register (fname,lname,mail,cno,pass)values(?,?,?,?,?)";
		  String msg=DbConnection.InsertUser(obj, sql, fname, mail);
		  
		  if(msg.equals("success"))
		  {
			  System.out.println("SUCCESS");
			  response.sendRedirect("login.jsp");
		  }
		  else
		  {
			  System.out.println("FAIL");
			response.sendRedirect("register.jsp");
		  }
//++++++++++++++++++++++++++++++++++END OF DATABASE CONNECTION	
	
	}

	

  

}
