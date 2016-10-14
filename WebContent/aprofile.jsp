<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="condb2.*" %>
     <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>DASHGUM - FREE Bootstrap Admin Template</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="assets/lineicons/style.css">    
    
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

    <script src="assets/js/chart-master/Chart.js"></script>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

   <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <a href="index.html" class="logo"><b>Welcome Admin</b></a>
            <!--logo end-->
           
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <li><a class="logout" href="index.html">Logout</a></li>
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
                           <li class="active"><a  href="sales.jsp">Sales</a></li>
                     
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
      <!--sidebar end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
          	<div class="tab-pane" id="chartjs">
                  <div class="row mt">
                      <div class="col-lg-6">
                          <div class="content-panel">
							  <h4><i class="fa fa-angle-right"></i>Brand Sales</h4>
                              <div class="panel-body text-center">
                                  <canvas id="doughnut" height="300" width="400"></canvas>
                                  <div>
                                  <ul style="list-style-type: none;">
                                  <li style="display: inline;"><font color="#1abc9c">Apple</font></li>
                                  <li style="display: inline;"><font color="#2ecc71">Sony</font></li>
                                  <li style="display: inline;"><font color="#3498db">HTC</font></li>
                                  <li style="display: inline;"><font color="#9b59b6">Nokia</font></li>
                                  <li style="display: inline;"><font color="#34495e">Samsung</font></li>
                                  </ul>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <div class="col-lg-6">
                          <div class="content-panel">
			   				 <h4><i class="fa fa-angle-right"></i>Sales Graph</h4>
                              <div class="panel-body text-center">
                                  <canvas id="line" height="300" width="400"></canvas>
                                 <div>
                                  <ul style="list-style-type: none;">
                                  <li style="display: inline;"><font color="#1abc9c">Apple</font></li>
                                  <li style="display: inline;"><font color="#2ecc71">Sony</font></li>
                                  <li style="display: inline;"><font color="#3498db">HTC</font></li>
                                  <li style="display: inline;"><font color="#9b59b6">Nokia</font></li>
                                  <li style="display: inline;"><font color="#34495e">Samsung</font></li>
                                  </ul>
                                  </div>
                              </div>
                          </div>
                      </div>
                   </div>
              </div> 
              <%
              
		String sql1="select * from register";
		ResultSet rs1=DbConnection.FechApple(sql1);
		%>
		  		<div class="row mt">
			  		<div class="col-lg-12">
                      <div class="content-panel">
                      <h4><i class="fa fa-angle-right"></i>Customer Details</h4>
                          <section id="unseen">
                            <table class="table table-bordered table-striped table-condensed">
                              <thead>
                              
                              <tr>
                              	  <th>Customer ID</th>
                                  <th>Customer Name</th>
                                  <th> E-mail</th>
                                  <th>Contact</th>
                                  
                              </tr>
                              </thead>
                              <tbody>
                             <%
                             
                             while(rs1.next())
                             {
                            	
                              out.println("<tr>");
                              out.println("<td>"+rs1.getString(1)+"</td>");
                                out.println("<td>"+rs1.getString(2)+"</td>");
                                out.println("<td>"+rs1.getString(4)+"</td>");
                                out.println("<td>"+rs1.getString(5)+"</td>");
                               
                              
                             }
                             out.println("</tr>");
                             
                              %>
                              </tbody>
                          </table> 
              <%
              
		String sql2="select * from address";
		ResultSet rs2=DbConnection.add1(sql2);
		%>             
                       <div class="row mt">
			  		<div class="col-lg-12">
                      <div class="content-panel">
                      <h4><i class="fa fa-angle-right"></i>Customer Address</h4>
                          <section id="unseen">
                            <table class="table table-bordered table-striped table-condensed">
                              <thead>
                              
                              <tr>
                              	  <th>E-mail</th>
                                  <th>Address</th>
                                  <th>City</th>
                                  <th>State</th>
                                  <th>Pin</th>
                                  
                              </tr>
                              </thead>
                              <tbody>
                             <%
                             
                             while(rs2.next())
                             {
                            	
                              out.println("<tr>");
                              out.println("<td>"+rs2.getString(7)+"</td>");
                                out.println("<td>"+rs2.getString(2)+"</td>");
                                out.println("<td>"+rs2.getString(3)+"</td>");
                                out.println("<td>"+rs2.getString(4)+"</td>");
                                out.println("<td>"+rs2.getString(5)+"</td>");
                             }
                             out.println("</tr>");
                             
                              %>
                              </tbody>
                          </table>          
          	</section>
          	
          	
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
    <script src="assets/js/chart-master/Chart.js"></script>
    <script src="assets/js/chartjs-conf.js"></script>
    <script src="assets/js/morris-conf.js"></script>
  <script>
      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

  </script>

  </body>
</html>