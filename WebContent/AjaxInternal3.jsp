<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="condb2.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String pid="";%>
<% String pname="";%>
<% String pcost="";%>
<% String pic="";%>
<% String date="";%>
<% 
String m=request.getParameter("q");
System.out.println("+++++++++++++++++++++++++++++++++++"+m);
String sql1="select * from nokia where mid=?";
ResultSet rs1=DbConnection.FechApple1(sql1,m);

while(rs1.next())
{
	pid=rs1.getString(1);
	pname=rs1.getString(2);
	pcost=rs1.getString(5);
	pic=rs1.getString(6);
	
}
System.out.println("product id is"+pid);
System.out.println("product name is"+pname);
System.out.println("product cost"+pcost);
java.util.Date d =new java.util.Date();
String today=d.toString();
System.out.println(today);
StringTokenizer st=new StringTokenizer(today," ");
String [] time=new String[10];
int i=0;
while(st.hasMoreElements())
{
	time[i]=st.nextToken();
	i++;
}
System.out.println(time[3]);

String user=(String)session.getAttribute("MAIL");
System.out.println(m);
String sql="insert into addtocart(user1,pid,pname,pcost,pic,date)values(?,?,?,?,?,?)";
String rs=DbConnection.AddToCart(sql,user,pid,pname,pcost,pic,time[3]);
%>
</body>
</html>