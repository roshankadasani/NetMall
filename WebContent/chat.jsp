<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="condb2.*" %>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Lookshop | Products</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Oxygen:300,400,700' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script src="js/jquery.easydropdown.js"></script>
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
</script>
<script type="text/javascript">
$(function() {
    $('#send').click(function() {
       $('#re').load('chat.jsp')
       
    })
  })
$(document).ready(function(){
    $('#ch').scrollTop(10000);
});
</script>
</head>
<body>
<!-- chat -->
 <%
 	
		
 		String sql3="select * from chat";
		ResultSet rs3=DbConnection.conv(sql3);
		
		%>
<div id="ch" style="width:100%;height:200px;line-height:1em;overflow:auto;padding:5px;">
			
			<% 
				while(rs3.next())
					{
					out.println("<div class='people-on-chat'>");
					out.println("<div class='chat-msg'>");
					out.println("<div class='col-xs-2 chat-people'>");
							out.println("<a href='#'>"+rs3.getString(1)+"</a>");
							out.println("</div>");
							out.println("<div class='col-xs-9 chat-msg-on'>");
							out.println("<p>"+rs3.getString(2)+"</p>");
							out.println("<div style='font-size:10px;float:right;'>");
							out.println("<p>"+rs3.getString(3)+"</p>");
							out.println("</div>");
								out.println("<span> </span>");
								out.println("</div>");
								out.println("<div class='clearfix'> </div>");
								out.println("</div>");
								out.println("</div>");
					}
				%>
				
				
							</div>
					
					
						
<!-- end chat -->
</body>
</html>		