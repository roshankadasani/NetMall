package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import condb2.DbConnection;
import models.AddModel;

public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AddServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	//+++++++++++++++++++++++++++++++++++++TASK1(FETCH ALL VALUES)++++++
			response.setContentType("text/html");
			String mid=request.getParameter("apple");
			String mid1=request.getParameter("htc");
			String mid2=request.getParameter("sony");
			String mid3=request.getParameter("nokia");
			String mid4=request.getParameter("samsung");
			String mno=request.getParameter("mno");
			String [] features =request.getParameterValues("features");
			String color=request.getParameter("color");
			String price=request.getParameter("price");
			String image=request.getParameter("image");
			//String pass1=request.getParameter("pass1");
			PrintWriter out=response.getWriter();
			System.out.println(mid1+" "+mno+" "+color+" "+price+" "+image);
			
	//++++++++++++++++++++++++++++++++++++++++TASK2(SET VALUES INSIDE MODEL CLASS)
		String value="";
			for(int i=0;i<features.length;i++)
			{
				 value=value+features[i]+"#";
			}
			System.out.println(value);
			  	//++++++++++++++++++++++++++++++++++++++++++TASK3(call DAO)	
			  if(request.getParameter("htc")!=null)
			  {
				  AddModel obj=new AddModel();
				  obj.setMid(mid1);
				  
				  obj.setMno(mno);
				  obj.setFeatures(value);
				  obj.setColor(color);
				  obj.setPrice(price);
				  obj.setImage(image);

				  String sql="insert into htc (mid,mno,features,color,price,image)values(?,?,?,?,?,?)";
				  String msg=DbConnection.AddProduct(obj, sql);

				  if(msg.equals("success"))
				  {
					  HttpSession session=request.getSession();
					  session.setAttribute("model", mid1);
					  System.out.println("i am session "+session.getAttribute("model"));
					  System.out.println("SUCCESS");
					  response.sendRedirect("addhtc.jsp");
				  }
				  else
				  {
					  System.out.println("FAIL");
					response.sendRedirect("addhtc.jsp");
				  }
				  
			  }
			  if(request.getParameter("sony")!=null)
			  {
				  AddModel obj=new AddModel();
				  obj.setMid(mid2);
				  
				  obj.setMno(mno);
				  obj.setFeatures(value);
				  obj.setColor(color);
				  obj.setPrice(price);
				  obj.setImage(image);

				  String sql="insert into sony (mid,mno,features,color,price,image)values(?,?,?,?,?,?)";
				  String msg=DbConnection.AddProduct(obj, sql);

				  if(msg.equals("success"))
				  {
					  HttpSession session=request.getSession();
					  session.setAttribute("model", mid2);
					  System.out.println("i am session "+session.getAttribute("model"));
					  System.out.println("SUCCESS");
					  response.sendRedirect("addsony.jsp");
				  }
				  else
				  {
					  System.out.println("FAIL");
					response.sendRedirect("addsony.jsp");
				  }
				  
			  }
			  if(request.getParameter("nokia")!=null)
			  {
				  AddModel obj=new AddModel();
				  obj.setMid(mid3);
				  obj.setMno(mno);
				  obj.setFeatures(value);
				  obj.setColor(color);
				  obj.setPrice(price);
				  obj.setImage(image);

				  String sql="insert into nokia (mid,mno,features,color,price,image)values(?,?,?,?,?,?)";
				  String msg=DbConnection.AddProduct(obj, sql);

				  if(msg.equals("success"))
				  {
					  HttpSession session=request.getSession();
					  session.setAttribute("model", mid3);
					  System.out.println("i am session "+session.getAttribute("model"));
					  System.out.println("SUCCESS");
					  response.sendRedirect("addnokia.jsp");
				  }
				  else
				  {
					  System.out.println("FAIL");
					response.sendRedirect("addnokia.jsp");
				  }
				  
			  }
			  if(request.getParameter("samsung")!=null)
			  {
				  AddModel obj=new AddModel();
				  obj.setMid(mid4);
				  obj.setMno(mno);
				  obj.setFeatures(value);
				  obj.setColor(color);
				  obj.setPrice(price);
				  obj.setImage(image);

				  String sql="insert into samsung (mid,mno,features,color,price,image)values(?,?,?,?,?,?)";
				  String msg=DbConnection.AddProduct(obj, sql);

				  if(msg.equals("success"))
				  {
					  HttpSession session=request.getSession();
					  session.setAttribute("model", mid4);
					  System.out.println("i am session "+session.getAttribute("model"));
					  System.out.println("SUCCESS");
					  response.sendRedirect("addsamsung.jsp");
				  }
				  else
				  {
					  System.out.println("FAIL");
					response.sendRedirect("addsamsung.jsp");
				  }
				  
			  }
			  if(request.getParameter("apple")!=null)
			  {
				  AddModel obj=new AddModel();
				  obj.setMid(mid);
				  obj.setMno(mno);
				  obj.setFeatures(value);
				  obj.setColor(color);
				  obj.setPrice(price);
				  obj.setImage(image);

				  System.out.println("inside apple module");
				  String sql="insert into apple (mid,mno,features,color,price,image)values(?,?,?,?,?,?)";
				  String msg=DbConnection.AddProduct(obj, sql);

				  if(msg.equals("success"))
				  {
					  HttpSession session=request.getSession();
					  session.setAttribute("model", mid);
					  System.out.println("SUCCESS");
					  response.sendRedirect("addapple.jsp");
				  }
				  else
				  {
					  System.out.println("FAIL");
					response.sendRedirect("addapple.jsp");
				  }
				  
			  }
			  
			  
				  
			  
			 
}
}
