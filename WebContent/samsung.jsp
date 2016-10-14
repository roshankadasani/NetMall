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
function AddToCart(value)
{

alert(value);
var xmlhttp;    
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("mydiv").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","AjaxInternal4.jsp?q="+value,true);

xmlhttp.send();
}
$(function() {
    $('#bscroll').click(function() {
       $('#re').load('chat.jsp')
      
    })
  })
 

	
	
$(document).ready(function() {
    $('#send').click(function(e) {
    e.preventDefault();
    var ajaxdata = $("#msg").val();
    var value ='msg='+ajaxdata;

    $.ajax({
    url: "ChatServlet",
    type: "post",
    data: value,
    cache: false,
    success: function(data) {
    $("#msg").val('');
    }
    });
});
});
</script>
</head>
<body>
<%
 		
 		String sql3="select * from chat";
		ResultSet rs3=DbConnection.conv(sql3);
		
		%>
<div id="bscroll" style="background-color: #FD926D;width: 254px; height: 34px; position: absolute; z-index: 4;left: 976px;margin-top: 150px;top:0px;">
<div style="margin-left: 56px;margin-top: 5px;"><b>Click here to Chat</b></div></div>
<div id="ascroll">
<div class='scroll' style="width:30%; height:auto;  position: absolute; z-index: 4;left: 944px;margin-top:423px;top:0px;">
			<div class="chat-box">
			<div id="re">
			</div>
							<div class="msg-type-box">
								<form action="ChatServlet" method="post">
									<input id="msg" name="msg" type="text" value="Type your message..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Type your message...';}">
									<input id="send" type="submit" value="Send">
								</form>
							</div>
						
						</div>
						</div>
					</div>
						<script type="text/javascript">
						 $(document).ready( function()
									{
						    			$("#ascroll").hide();
						   				$("#bscroll").click( function()
						   			{
						   			$("#ascroll").slideToggle();
						  			 });
									});
						$(window).on('scroll', function () {
						    var scrollPos = $(document).scrollTop();
						    $('.scroll').css({
						        top: scrollPos
						    });
						}).scroll();
						  
						</script>
						
<!-- end chat -->
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
		  <a href="index.jsp"><img src="images/logo.png" alt=""/></a>
		</div>	
		<div class="header_bottom_right">			
	        <div class="h_menu4"><!-- start h_menu4 -->
				<a class="toggleMenu" href="#">Menu</a>
				<ul class="nav">
					<li class="active"><a href="index.jsp">Home</a></li>
					<li><a href="">Brands</a>
						<ul>
							<li><a href="apple.jsp">Apple</a></li>
							<li><a href="sony.jsp">Sony</a></li>
							<li><a href="htc.jsp">HTC</a></li>
							<li><a href="nokia.jsp">Microsoft</a></li>
							<li><a href="samsung.jsp">Samsung</a></li>
						</ul>
					</li>
					
					<li><a href="login.jsp">My Account</a></li>
				</ul>
				<script type="text/javascript" src="js/nav.js"></script>
	      </div><!-- end h_menu4 -->
	       <%
	    String user=(String)session.getAttribute("MAIL");
		String sql2="select * from addtocart where user1=?";
		ResultSet rs2=DbConnection.add(sql2,user);
		%>
		   <% 
			int count=0;
			while(rs2.next())
			{
			count++;
			}
			%>
		  <div class="shopping_cart">
		 	<ul class="shopping_cart_top">
			    <a href="#">
				   <li class="shop_left"><a href="wishlist.jsp">Your cart</a></li>
				   <li class="shop_right"><a href="logout.jsp">Logout</a></li>
				    <div class="clearfix"></div>	
				</a>
				
			</ul>
			<ul class="shopping_bag">
			    <a href="#">
				   <li class="bag_left"><img src="images/bag.png" alt=""/></li>
				   <li class="bag_right"> <%= count%> Items </li>
				    <div class="clearfix"></div>	
				</a>
			</ul>		
		  </div>
	      <div class="clearfix"></div>		   
      </div>
    </div>
  </div>
</div>


     <div class="products_top">
     	<div class="container">
     		<div class="col-md-9">
     			<div class="mens-toolbar">
                 <div class="sort">
               	   <div class="sort-by">
		            <label>Sort by</label>
		            <select>
		                            <option value="">
		                    Position                </option>
		                            <option value="">
		                    Name                </option>
		                            <option value="">
		                    Price                </option>
		            </select>
		            <a href=""><img src="images/arrow2.gif" alt="" class="v-middle"></a>
                   </div>
    		     </div>
    		    <div class="pages">   
        	      <div class="limiter visible-desktop">
	               <label>Showing 1-12 of 347 results</label>
	              </div>
       	          <ul class="dc_pagination dc_paginationA dc_paginationA06">
					  <li><a href="#">1</a></li>
					  <li><a href="#">2</a></li>
					  <li><a href="#">3</a></li>
					  <li><a href="#" class="current"></a></li>
		       		</ul>
		  	      <div class="clearfix"></div>
		  	    </div>
                <div class="clearfix"></div>		
		        </div>
		      <div class="product_box1">   
		      <%
		String sql1="select * from samsung";
		ResultSet rs1=DbConnection.FechApple(sql1);
		%>
		        <ul class="grid-4">
		          <%
                  while(rs1.next())
                   {
                	  String mypath="pdimg/"+rs1.getString(6);
                	  out.println("<li><a href='#'>");
                	  out.println("<div class='view view-first'>");
                	  out.println("<img src='"+mypath+"'' class='img-responsive' alt=''/>");
                	  out.println("<div class='product_mask'> </div>");
                	  out.println("<div class='tab_desc1'>");
					   out.println("<h3>"+rs1.getString(2)+"</h3>");
					   out.println("<p>"+rs1.getString(5)+"</p>");
					   out.println("<a href='#' id='HH' class='btn1 btn-primary1' title='"+rs1.getString(1)+"' onClick='AddToCart(this.title)'><span>Add To Cart</span><img src='images/plus.png' alt=''></a>");
					   out.println("</div>");
					  out.println("</a></div>");
					  out.println("</li>");
                   }
		          %>
				  
				 
			  </div>
			
			  
     		</div>
     		<div class="col-md-3 product_right">
				<h3 class="m_1">On Sale</h3>
				 <div class="sale_grid">
				  <ul class="grid_1">
					<li class="grid_1-img"><img src="images/pic1.jpg" class="img-responsive" alt=""/></li>
					<li class="grid_1-desc">
					  <h4><a href="#">Iphone 6 </a></h4>
					  <p>60000</p>
					</li>
					<div class="clearfix"> </div>
				  </ul>
				  <ul class="grid_1">
					<li class="grid_1-img"><img src="images/pic2.jpg" class="img-responsive" alt=""/></li>
					<li class="grid_1-desc">
					  <h4><a href="#">Htc</a></h4>
					  <p>54000</p>
					</li>
					<div class="clearfix"> </div>
				  </ul>
				  <ul class="grid_1">
					<li class="grid_1-img"><img src="images/pic3.jpg" class="img-responsive" alt=""/></li>
					<li class="grid_1-desc">
					  <h4><a href="#">Nokia 1020</a></h4>
					  <p>45000</p>
					</li>
					<div class="clearfix"> </div>
				  </ul>
				</div>
			   <h3 class="m_1">Featured Products</h3>
			      <ul class="grid_1">
					<li class="grid_1-img"><img src="images/pic4.jpg" class="img-responsive" alt=""/></li>
					<li class="grid_1-desc">
					  <h4><a href="#">Iphone 5s</a></h4>
					  <p>55000</p>
					</li>
					<div class="clearfix"> </div>
				  </ul>
				 
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