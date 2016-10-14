<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="condb2.*" %>  
<%@ page import="java.sql.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String user1=(String)session.getAttribute("MAIL");
String cname=(String)session.getAttribute("cname");
String pname=(String)session.getAttribute("pname");
String pic=(String)session.getAttribute("pic");
String total=(String)session.getAttribute("total");
System.out.println(user1);
System.out.println(cname);
System.out.println(pname);
System.out.println(pic);
System.out.println(total);
java.util.Date d=new java.util.Date();
String date=d.toString();
String sql="insert into sales(cid,cname,pname,pic,total,date)values(?,?,?,?,?,?)";
String msg=DbConnection.Sales(sql,user1,cname,pname,pic,total,date);
  
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

%>

</body>
</html>