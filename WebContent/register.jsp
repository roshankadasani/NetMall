<%@ page import="logic.*;" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Lookshop Bootstarp Website Template | Register :: w3layouts</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Oxygen:300,400,700' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery.min.js"></script>
<style type="text/css">
.cap {
    background-image: url(./images/cb.png);
  width: 100px;
}
</style>
<script>
        $(document).ready(function()
		{
        $("#c").load("Captcha.jsp");
       
	      $("#new").click(function(){ $("#c").load("Captcha.jsp");});
	     
        
		});
        </script>
       <script type="text/javascript">
	 $(document).ready(function() 
	   {
		 $("#fname").blur(function()
		    		{
		    	      var myval=$("#fname").val();
		    	    
		    	      var reg=/^[A-Za-z]+$/;
		    	      if(myval.match(reg))
		    	    	  {
		    	    	     $("#fn").html("<h4><font color='green'>Accepted</h4>");
		    	    	     $("#lname").focus();
		    	    	  }
		    	      else
		    		   {
		    	    	  
		    	    	$("#fn").html("<h4><font color='red'>Alphabets Only</h4>");
		    	    	
		    	    	$("#fname").focus();
		    		   }
		    		});
		 $("#lname").blur(function()
		    		{
		    	      var myval=$("#lname").val();
		    	    
		    	      var reg=/^[A-Za-z]+$/;
		    	      if(myval.match(reg))
		    	    	  {
		    	    	     $("#ln").html("<font color='green'>Accepted</h4>");
		    	    	     $("#mail").focus();
		    	    	  }
		    	      else
		    		   {
		    	    	  
		    	    	$("#ln").html("<font color='red'>Alphabets Only</h4>");
		    	    	$("#lname").focus();
		    		   }
		    		});
		 $("#cno").blur(function()
		    		{
		    	      var myval=$("#cno").val();
		    	    
		    	      var reg=/^[0-9]+$/;
		    	      if(myval.match(reg) && myval.length==10)
		    	    	  {
		    	    	     $("#cn").html("<font color='green'>Accepted</h4>");
		    	    	     $("#pass").focus();
		    	    	  }
		    	      else
		    		   {
		    	    	  
		    	    	$("#cn").html("<font color='red'>Enter a 10 digit phone numbe</h4>");
		    	    	 
		    	    	$("#cno").focus();
		    		   }
		    		});
		 
		 $("#mail").blur(function()
		    		{
		    	      var myval=$("#mail").val();
		    	    
		    	      var reg=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		    	      if(myval.match(reg))
		    	    	  {
		    	    	     $("#ma").html("<font color='green'>Accepted</h4>");
		    	    	     $("#cno").focus();
		    	    	  }
		    	      else
		    		   {
		    	    	  
		    	    	$("#ma").html("<font color='red'>Enter a valid email</h4>");
		    	    	  
		    	    	$("#mail").focus();
		    		   }
		    		});
		 $("#pass").blur(function()
		    		{
		    	       var value=$("#pass").val();
		    	     
		    	      
		    	       if(value.length > 7)
		    	    	   {
		    	    	   
		    	    	   $("#ps").html("<font color='green'>Accepted</h4>");
		    	    	   
		    	    	   }
		    	       else
		    	    	   {
		    	    	   $("#ps").html("<font color='red'>Enter a valid Password</h4>");
		    	    	   $("#pass").focus();
		    	    	   }
		    	
		    		});
		    
		    
		    
		    $("#pass1").blur(function()
		    		{
		    	       var value=$("#pass").val();
		    	       var value1=$("#pass1").val();
		    	      
		    	       if(value.match(value1))
		    	    	   {
		    	    	   
		    	    	   $("#ps2").html("<font color='green'>Accepted</h4>");
		    	    	   
		    	    	   }
		    	       else
		    	    	   {
		    	    	   $("#ps2").html("<font color='red'>Password does not match</h4>");
		    	    	   $("#pass1").focus();
		    	    	   }
		    	
		    		});
		 });
		
	</script>
<script src="js/jquery.easydropdown.js"></script>

</head>
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
							<li><a href="allproducts.html">View All</a></li>
							<li><a href="apple.html">Apple</a></li>
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
		  <div class="shopping_cart">
		 	<ul class="shopping_cart_top">
			    <a href="#">
				   <li class="shop_left">Your cart</li>
				   <li class="shop_right"><img src="images/arrow1.png" alt=""/></li>
				    <div class="clearfix"></div>	
				</a>
			</ul>
			<ul class="shopping_bag">
			    <a href="#">
				   <li class="bag_left"><img src="images/bag.png" alt=""/></li>
				   <li class="bag_right"> 0 Items | $ 0</li>
				    <div class="clearfix"></div>	
				</a>
			</ul>		
		  </div>
	      <div class="clearfix"></div>		   
      </div>
    </div>
  </div>
</div>

    <div class="contact">
      	<div class="container">
      	   <div class="register">
		  	  <form action="RegisterServlet" method="post"> 
				 <div class="register-top-grid">
					<h3>PERSONAL INFORMATION</h3>
					 <div>
						<span>First Name<label>*</label></span>
						<input id="fname" type="text" name="fname"> 
						 <div id="fn"> </div>
					 <div>
					 </div>
					 
						<span>Last Name<label>*</label></span>
						<input id="lname" type="text" name="lname"> 
						<div id="ln"> </div>
					 </div>
					 <div>
						 <span>Email Address<label>*</label></span>
						 <input id="mail" type="text" name="mail"> 
						 <div id="ma"> </div>
					 </div>
					  <div>
						 <span>Contact<label>*</label></span>
						 <input id="cno" type="text" name="cno"> 
						 <div id="cn"> </div>
					 </div>
					 <div class="clearfix"> </div>
					   <a class="news-letter" href="#">
					   </a>
					 </div>
				     <div class="register-bottom-grid">
						    <h3>LOGIN INFORMATION</h3>
							 <div>
								<span>Password<label>*</label></span>
								<input type="password" id="pass" name="pass">
								<div id="ps"> </div>
							 </div>
							 <div>
								<span>Confirm Password<label>*</label></span>
								<input type="password" id="pass1" name="pass1">
								<div id="ps1"> </div>
							 </div>
							 <div>
							 <span>Enter Captcha<label>*</label></span>
							    <div id="c" class="cap"> </div>
								<input id="ec" type="text" name="captcha">
								<a id="new" href="#">New Captcha</a>
							 </div>
							 <div class="clearfix"> </div>
					 </div>
				<div class="clearfix"> </div>
				<div class="register-but">
					   <input type="submit" value="submit">
					   <div class="clearfix"> </div>
				   </form>
			        <%
                    if(request.getAttribute("MSG")!=null)
				     {
					  out.println("<font color='red'>"+request.getAttribute("MSG"));
					  }
					%>
					<%
                    if(request.getAttribute("captcha")!=null)
				     {
					  out.println("<font color='red'>"+request.getAttribute("MSG"));
					  }
	
					%>
				</div>
		   </div>
      	 </div>
      </div>
      <div class="grid-2">
       	<div class="container">
       		<p>We accept<img src="images/paypal.png" class="img-responsive" alt="" align="middle" /></p>
       	</div>
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