<%@ page import="logic.*" %>
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

<%
String user="anirudh"; // fetch user from session
/*
String user=(String)session.getAttribute("USER");

*/
String value=DefaultPassword.GenPassword();
out.println("<h1>"+value+"</h1>");
String sEmail="speccse03@gmail.com";
String sPassword="3csespec";
String rEmail="tarungudapati7@gmail.com";
String subject="tarun703";
String text="password:"+value;
SendEmailToUser.SendEmail(sEmail, sPassword, rEmail, subject, text);
response.sendRedirect("login.jsp");
String sql="update userlogin set password=? where mail=?";
DbConnection.UpdatePassword(sql, user,value);

%>
</body>
</html>