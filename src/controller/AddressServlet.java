package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.DelModel;
import condb2.DbConnection;

/**
 * Servlet implementation class AddressServlet
 */
public class AddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddressServlet() {
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
		response.setContentType("text/html");
		String name=request.getParameter("name");
		String addr=request.getParameter("addr");
		String city=request.getParameter("city");
		String state=request.getParameter("state");
		String pin=request.getParameter("pin");
		String cno=request.getParameter("cno");
		//String pass1=request.getParameter("pass1");
	
		
//++++++++++++++++++++++++++++++++++++++++TASK2(SET VALUES INSIDE MODEL CLASS)
	
		  DelModel obj=new DelModel();
		  obj.setName(name);
		  obj.setAddr(addr);
		  obj.setCity(city);
		  obj.setState(state);
		  obj.setPin(pin);
		  obj.setCno(cno);
		  //obj.setpass1(pass1);
//++++++++++++++++++++++++++++++++++++++++++TASK3(call DAO)	
		  HttpSession session=request.getSession();
		  String user1=(String)session.getAttribute("MAIL");
		  String sql="insert into address(name,addr,city,state,pin,cno,user1)values(?,?,?,?,?,?,?)";
		  String msg=DbConnection.Insertaddr(obj, sql,user1);
		  
		  if(msg.equals("success"))
		  {
			  System.out.println("SUCCESS");
			  response.sendRedirect("payment.jsp");
		  }
		  else
		  {
			  System.out.println("FAIL");
			response.sendRedirect("payment.jsp");
		  }
	}
}
