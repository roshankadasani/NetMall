<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/style.css" rel='stylesheet' type='text/css' />
</head>
<body>
 		<%
            session.invalidate();
        %>
       
        <center>
        <h1>You are Sucessfully logged out...</h1>
        <h3>please wait while we redirect</h3>
        <meta http-equiv="refresh" content="3; URL=login.jsp">
		</center>
</body>
</html>