<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% String id=""; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>DASHGUM - Bootstrap Admin Template</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/js/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="assets/js/bootstrap-daterangepicker/daterangepicker.css" />
        
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
	
  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
     <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <a href="index.html" class="logo"><b>Welcome Admin</b></a>
            <!--logo end-->
           
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <li><a class="logout" href="logout2.jsp">Logout</a></li>
            	</ul>
            </div>
        </header>
      <!--header end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
       <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
               <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-desktop"></i>
                          <span>Welcome</span>
                      </a>
                      <ul class="sub">
                           <li class="active"><a  href="aprofile.jsp">Dashboard</a></li>
                     
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-th"></i>
                          <span>Sales</span>
                      </a>
                      <ul class="sub">
                          <li class="active"><a  href="sales.jsp">Products Sold</a></li>
                       
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Add Product</span>
                      </a>
                      <ul class="sub">
                          <li class="active"><a  href="addapple.jsp">Add Apple Product</a></li>
                          <li class="active"><a  href="addsony.jsp">Add Sony Product</a></li>
                          <li class="active"><a  href="addhtc.jsp">Add HTC Product</a></li>
                          <li class="active"><a  href="addsamsung.jsp">Add Samsung Product</a></li>
                          <li class="active"><a  href="addnokia.jsp">Add Nokia Product</a></li>
                      </ul>
                  </li>
                    <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Update Product</span>
                      </a>
                      <ul class="sub">
                          <li class="active"><a  href="updateapple.jsp">Update Apple Product</a></li>
                          <li class="active"><a  href="updatesony.jsp">Update Sony Product</a></li>
                          <li class="active"><a  href="updatehtc.jsp">Update HTC Product</a></li>
                          <li class="active"><a  href="updatesamsung.jsp">Update Samsung Product</a></li>
                          <li class="active"><a  href="updatenokia.jsp">Update Nokia Product</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Delete Product</span>
                      </a>
                      <ul class="sub">
                          <li class="active"><a  href="deleteapple.jsp">Delete Apple Product</a></li>
                          <li class="active"><a  href="deletesony.jsp">Delete Sony Product</a></li>
                          <li class="active"><a  href="deletehtc.jsp">Delete HTC Product</a></li>
                          <li class="active"><a  href="deletesamsung.jsp">Delete Samsung Product</a></li>
                          <li class="active"><a  href="deletenokia.jsp">Delete Nokia Product</a></li>
                      </ul>
                  </li>
				 
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      
       <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
          	<h3><i class="fa fa-angle-right"></i> Form Components</h3>
          	
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i> Add Product</h4>
                      <form class="form-horizontal style-form" action="AddServlet" method="post">
                           <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Model ID</label>
                              <div class="col-sm-10">
                                  <input type="text" name="htc" class="form-control">
                              </div>
                         </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Model Number</label>
                              <div class="col-sm-10">
                                  <input type="text" name="mno" class="form-control">
                              </div>
                         </div>
                         <div class="form-group">
                         		<h4 style="margin-left:13px;">Features</h4>
                            
          			<div class="col-lg-12">
          			<div class="form-panel">
						<h5>OS</h5>
						<label class="checkbox-inline">
						  <input type="checkbox" name="features" id="inlineCheckbox1" value="Android"> Android
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox"  name="features" id="inlineCheckbox2" value="iOS"> iOS
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox"  name="features" id="inlineCheckbox3" value="Windows"> Windows
						</label>
						
						   		
          			</div>
          			<div class="form-panel">
						<h5>Screen Size</h5>
						<label class="checkbox-inline">
						  <input type="checkbox"  name="features" id="inlineCheckbox1" value="5.0"> 5.0"
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox"  name="features" id="inlineCheckbox2" value="4.5"> 4.5"
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox"  name="features" id="inlineCheckbox3" value="6.0"> 6.0"
						</label>
						
						   		
          			</div>
          			<div class="form-panel">
						<h5>Camera</h5>
						<label class="checkbox-inline">
						  <input type="checkbox"  name="features" id="inlineCheckbox1" value="20MP"> 20MP
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox"  name="features" id="inlineCheckbox2" value="13MP"> 13MP
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox"  name="features" id="inlineCheckbox3" value="8MP"> 8MP
						</label>
						
						   		
          			</div>
          			<div class="form-panel">
						<h5>RAM</h5>
						<label class="checkbox-inline">
						  <input type="checkbox"  name="features" id="inlineCheckbox1" value="1GB"> 1GB
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox"  name="features" id="inlineCheckbox2" value="2GB"> 2GB
						</label>
						<label class="checkbox-inline">
						  <input type="checkbox"  name="features" id="inlineCheckbox3" value="3GB"> 3GB
						</label>
						
						   		
          			</div>
          			<!-- /form-panel -->
          			</div><!-- /col-lg-12 -->
                         </div>
                         <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Color</label>
                              <div class="col-sm-10">
                                  <input type="text" name="color" class="form-control">
                              </div>
                         </div>
                         <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Price</label>
                              <div class="col-sm-10">
                                  <input type="text" name="price" class="form-control">
                              </div>
                         </div>
                         
                         <input type="submit" value="submit">
                          </form>
                           <%
                    if(request.getAttribute("MSG")!=null)
				     {
					  out.println("<font color='red'>"+request.getAttribute("MSG"));
					  }
					%>
					<br>
					<h3><i class="fa fa-angle-right"></i>Upload Image</h3>
					<form class="form-horizontal style-form" action="UploadServlet1" method="post" enctype="multipart/form-data">
					<div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Model Id</label>
                              <div class="col-sm-10">
                                 <% id=(String)session.getAttribute("model"); %>
                              	  	<input type="text" name="mno" value="<%=id %>">
                              </div>
                         </div>
					    <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Image</label>
                              <div class="col-sm-10">
                                  <input type="file" name="F1" class="form-control">
                              </div>
                         </div>
                          <input type="submit" value=Upload>
					</form>
					
					
          			</div><!-- /form-panel -->
          		</div><!-- /col-lg-12 -->
          	</div><!-- /row -->
          	
          

      <!--footer start-->
      
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>

    <!--script for this page-->
    <script src="assets/js/jquery-ui-1.9.2.custom.min.js"></script>

	<!--custom switch-->
	<script src="assets/js/bootstrap-switch.js"></script>
	
	<!--custom tagsinput-->
	<script src="assets/js/jquery.tagsinput.js"></script>
	
	<!--custom checkbox & radio-->
	
	<script type="text/javascript" src="assets/js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-daterangepicker/date.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-daterangepicker/daterangepicker.js"></script>
	
	<script type="text/javascript" src="assets/js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
	
	
	<script src="assets/js/form-component.js"></script>    
    
    
  <script>
      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

  </script>

  </body>
</html>