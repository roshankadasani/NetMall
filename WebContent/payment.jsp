<%@ page import="java.sql.*" %>
<%@ page import="condb2.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Lookshop | Products</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/table.css" rel='stylesheet' type='text/css' />
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
			    $(document).ready( function()
						{
			    			$("#c1").hide();
			   				$("#card").click( function()
			   			{
			   			$("#c1").slideToggle();
			  			 });
						});
			    $(document).ready( function()
						{
			   				$("#c2").hide();
			   				$("#cod").click( function()
			   			{
			   			$("#c2").slideToggle();
			  			 });
						});
			    $(document).ready(function()
			    		{
			            $("#c").load("Captcha.jsp");
			           
			    	      $("#new").click(function(){ $("#c").load("Captcha.jsp");});
			    	     
			            
			    		});
</script>	
<style type="text/css">
.cap {
    background-image: url(./images/cb.png);
  width: 100px;
}
</style>
<body>

<div class="header">
   <div class="header_top">
    <div class="container">
	  <div class="header_top_left">
	  	<p>custom care : 0-888-23-5467</p>
	  </div>
	  <div class="header_top_right">
	  	<div class="lang_list">
			<select tabindex="4" class="dropdown">
				<option value="" class="label" value="">$ Us</option>
				<option value="1">Dollar</option>
				<option value="2">Euro</option>
			</select>
   		</div>
   		<ul class="header_user_info">
		  <a class="login" href="adminlogin.jsp">
			<i class="user"></i> 
			<li class="user_desc">Admin</li>
		  </a>
		  <div class="clearfix"> </div>
	    </ul>
	    <div class="main-search">
	        <form action="search.html">
	           <input type="text" value="Search" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search';}" class="text"/>
	            <input type="submit" value=""/>
	        </form>
	        <div class="close"><img src="images/close.png" /></div>
	    </div>
	    <div class="srch"><button></button></div>
	    <div class="clearfix"> </div>
		<script type="text/javascript">
	         $('.main-search').hide();
	        $('button').click(function (){
	            $('.main-search').show();
	            $('.main-search text').focus();
	        }
	        );
	        $('.close').click(function(){
	            $('.main-search').hide();
	        });
	    </script>
        </div>
	  <div class="clearfix"> </div>
	</div>
  </div>
  <div class="header_bottom">
	<div class="container">	 			
		<div class="logo">
		  <a href="index.html"><img src="images/logo.png" alt=""/></a>
		</div>	
		<div class="header_bottom_right">			
	        <div class="h_menu4"><!-- start h_menu4 -->
				<a class="toggleMenu" href="#">Menu</a>
				<ul class="nav">
					<li class="active"><a href="index.html">Home</a></li>
					<li><a href="products.html">Brands</a>
						<ul>
							<li><a href="apple.jsp">Apple</a></li>
							<li><a href="sony.html">Sony</a></li>
							<li><a href="htc.html">HTC</a></li>
							<li><a href="microsoft.html">Microsoft</a></li>
							<li><a href="samsung.html">Samsung</a></li>
						</ul>
					</li>
					
					<li><a href="login.jsp">My Account</a></li>
				</ul>
				<script type="text/javascript" src="js/nav.js"></script>
	      </div><!-- end h_menu4 -->
		 
	      <div class="clearfix"></div>		   
      </div>
    </div>
  </div>
</div>


     <div class="products_top">
     	<div class="container">
     	
     		<center><h2>Final Bill</h2></center>
		  
     	<div id="table">
			<div class="header-row row">
    		<span class="cell primary">Product</span>
    		<span class="cell">Image</span>
     		<span class="cell">final Price</span>
    	</div>
    	<%
		String value=(String)session.getAttribute("MAIL");
		String sql="select * from addtocart where user1=?";
		ResultSet rs=DbConnection.add(sql,value);
		String product="";
		String pics="";
		int i=0;
		//System.out.println("++++++++++++++++++++++++++++++++"+rs.next());
		while(rs.next())
		{
		product=product+"#"+rs.getString(3);
		i=i+Integer.parseInt(rs.getString(4));
        String mypath="pdimg/"+rs.getString(5);
  		out.println("<div class='row'>");
  		out.println("<span class='cell primary'>"+rs.getString(3)+"</span>");
  		pics=pics+"#"+rs.getString(5);
  		System.out.println(mypath);
  		out.println("<span class='cell primary'><center><img src='"+mypath+"' height='100' width='70'/></center></span>");
  		out.println("<span class='cell primary'><center>"+rs.getString(4)+"</center></span>");
  		out.println("</div>");
         }
		session.setAttribute("pname",product);   
		session.setAttribute("pic",pics); 
    	%>
		</div><br>
		<div style="float:right;padding-right: 119px;">
		<%out.println("Final Price:"+i); 
		String tot=String.valueOf(i);
		session.setAttribute("total",tot);   %> 
		</div><br><br>
		
		<center><div>
		<%
		String value2=(String)session.getAttribute("MAIL");
		String sql2="select * from address where user1=?";
		ResultSet rs2=DbConnection.add(sql2,value);
		
		while(rs2.next())
		{	
		out.println("<h1>Address</h1>");
		out.println("<ul>");
		out.println("<li>Name : "+rs2.getString(1)+"</li>");
		session.setAttribute("cname",rs2.getString(1));
		out.println("<li>Address : "+rs2.getString(2)+"</li>");
		out.println("<li>City : "+rs2.getString(3)+"</li>");
		out.println("<li>State : "+rs2.getString(4)+"</li>");
		out.println("<li>Contact Number : "+rs2.getString(5)+"</li>");
		out.println("<li>Pin : "+rs2.getString(6)+"</li>");
		out.println("</ul>");
		}
		%>
		</div></center><br><br>
		
     	<div>
     	 <center><h1>Make Payment</h1>
     	 <p>Pay by<img src="images/paypal.png" class="img-responsive" alt="" align="middle" /></p>
     	</center></div><br>
     	
     	<div id="card" style="margin-left: 300px;height: 40px;width: 100px;background-color: #FD926D;border: 0px;line-height: 38px;  margin-right: 127px;"><span><center>pay by card</center></span></div>
     	<div id="c1" style="margin-left: 300px;">
     	<div style="margin-left: 100px;">
     	<img src="images/card.png">
     	</div>
     	</div><br>
     	
     	<div id="cod" style="margin-left: 300px;height: 40px;width: 142px;background-color: #FD926D;border: 0px;line-height: 38px;  margin-right: 127px;"><span><center>Cash On Delivery</center><span></div>
     	<div id="c2" style="margin-left: 300px;">
     	<div style="margin-left: 200px;">
     			<span><h4>Enter Captcha<label>*</label></h4></span>
				<div id="c" class="cap"> </div>
				<input type="text" name="captcha">
				<a id="new" href="#">New Captcha</a></div>
     	</div>
     	<br>
     	<div style="float:right;height: 40px;width: 100px;background-color: #FD926D;border: 0px;line-height: 38px;  margin-right: 127px;">
     	<a href='SalesServlet.jsp'><center>Check Out</center></a></div><br>
     	</div>
      </div>
      <div class="grid-2">
       	
       </div>
       <div class="footer_top">
       	<div class="container">
       		<div class="col-sm-2 grid-3">
       			<h3>Customer Service</h3>
       			<ul class="footer_list">
       				<li><a href="contact.html">Contact</a></li>
       				<li><a href="#">FAQ</a></li>
       				<li><a href="#">Terms of payment</a></li>
       				<li><a href="#">Terms of sale</a></li>
       				<li><a href="#">Terms and conditions</a></li>
       				<li><a href="#">Returns and Refunds</a></li>
       			</ul>
       		</div>
       		<div class="col-sm-2 grid-3">
       			<h3>Information</h3>
       			<ul class="footer_list">
       				<li><a href="#">Affiliate</a></li>
       				<li><a href="#">Cookies</a></li>
       				<li><a href="#">How to Shop</a></li>
       				<li><a href="#">About Nelly</a></li>
       				<li><a href="#">Investor relations</a></li>
       			</ul>
       		</div>
       		<div class="col-sm-2 grid-3">
       			<h3>Campaigns</h3>
       			<ul class="footer_list">
       				<li><a href="#">Evening Dresses</a></li>
       				<li><a href="#">Makeup</a></li>
       				<li><a href="#">Fashion forward</a></li>
       				<li><a href="#">Training clothes</a></li>
       				<li><a href="#">Special Occasion Dresses</a></li>
       			</ul>
       		</div>
       		<div class="col-sm-2 grid-3">
       			<h3>Stores</h3>
       			<ul class="footer_list">
       				<li><a href="#">Paris</a></li>
       				<li><a href="#">New York</a></li>
       				<li><a href="#">London</a></li>
       				<li><a href="#">Madrid</a></li>
       				<li><a href="#">Tokio</a></li>
       			</ul>
       		</div>
       		<div class="col-sm-2 grid-3">
       			<h3>Social</h3>
       			<ul class="footer_social">
				  <li><a href="#"> <i class="tw1"> </i> </a></li>
				  <li><a href="#"> <i class="db1"> </i> </a></li>
				  <li><a href="#"> <i class="fb1"> </i></a></li>
				  <li><a href="#"> <i class="g1"> </i></a></li>
				  <li><a href="#"> <i class="thumb"> </i></a></li>
				  <li><a href="#"> <i class="vimeo"> </i></a></li>
				</ul>
       		</div>
       		<div class="col-sm-2">
       			<img src="images/secure.png" alt=""/>
       		</div>
       	</div>
       </div>
       <div class="footer_bottom">
       	<div class="container">
       		<div class="cssmenu">
				<ul>
					<li class="active"><a href="login.html">Privacy & Cookies</a></li> |
					<li><a href="checkout.html">Terms & Conditions</a></li> |
					<li><a href="checkout.html">Accessibility</a></li> |
					<li><a href="login.html">Store Directory</a></li> |
					<li><a href="register.html">About Us</a></li>
				</ul>
			</div>
			<div class="copy">
			    <p>&copy; 2014 Template by <a href="http://w3layouts.com" target="_blank">w3layouts</a></p>
		    </div>
		    <div class="clearfix"> </div>
       	</div>
       </div>

</body>
</html>