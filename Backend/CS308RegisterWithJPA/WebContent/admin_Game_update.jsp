<%@ page contentType="text/html;charset=UTF-8" language="java"
		 pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="cs308.sabanciuniv.edu.User"%>
<%@ page import="cs308.sabanciuniv.edu.Games"%>
<%@ page import="cs308.sabanciuniv.edu.GamesManager"%>
<%@ page import="cs308.sabanciuniv.edu.Order"%>
<!DOCTYPE html>

<html class="no-js" lang="">

<head>
	<link rel="stylesheet"
		  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	
	<title>Admin Panel</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- favicon
            ============================================ -->
	<link rel="shortcut icon" type="image/x-icon" href="img3/favicon.ico">
	<!-- Google Fonts
            ============================================ -->
	<link
			href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900"
			rel="stylesheet">
	<!-- Bootstrap CSS
            ============================================ -->
	<link rel="stylesheet" href="./css3/bootstrap.min.css">
	<!-- Bootstrap CSS
            ============================================ -->
	<link rel="stylesheet" href="./css3/font-awesome.min.css">
	<!-- owl.carousel CSS
            ============================================ -->
	<link rel="stylesheet" href="./css3/owl.carousel.css">
	<link rel="stylesheet" href="./css3/owl.theme.css">
	<link rel="stylesheet" href="./css3/owl.transitions.css">
	<!-- meanmenu CSS
            ============================================ -->
	<link rel="stylesheet" href="./css3/meanmenu/meanmenu.min.css">
	<!-- animate CSS
            ============================================ -->
	<link rel="stylesheet" href="./css3/animate.css">
	<!-- normalize CSS
            ============================================ -->
	<link rel="stylesheet" href="./css3/normalize.css">
	<!-- mCustomScrollbar CSS
            ============================================ -->
	<link rel="stylesheet"
		  href="./css3/scrollbar/jquery.mCustomScrollbar.min.css">
	<!-- jvectormap CSS
            ============================================ -->
	<link rel="stylesheet"
		  href="./css3/jvectormap/jquery-jvectormap-2.0.3.css">
	<!-- notika icon CSS
            ============================================ -->
	<link rel="stylesheet" href="./css3/notika-custom-icon.css">
	<!-- wave CSS
            ============================================ -->
	<link rel="stylesheet" href="./css3/wave/waves.min.css">
	<!-- main CSS
            ============================================ -->
	<link rel="stylesheet" href="./css3/main.css">
	<!-- style CSS

            ============================================ -->
	<link rel="stylesheet" href="./css3/jquery.dataTables.min.css">
	<link rel="stylesheet" href="style.css">
	<!-- responsive CSS
            ============================================ -->
	<link rel="stylesheet" href="./css3/responsive.css">
	
	<script src="js/update_item.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.0.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
	<script src="js/update_item_update.js"></script>
	
	<link rel="stylesheet" href="./css3/checkbox_new.css">
</head>

<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->
<!-- Start Header Top Area -->
    <div class="header-top-area">   	
        <div class="container">	
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="logo-area">
                        <a href="adminPanel.jsp"><img src="img/logo.png" alt="" width="50" height="50"/></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="header-top-menu" style="margin-top:24px; ">
                        
                        <%
                            	session = request.getSession();
							    if(session.getAttribute("user") != null)
							    {
							        Object temp = session.getAttribute("user");
							        User user = (User) temp;
							        if(user.getUserType() == User.userType.Admin){
							        	out.println("<h2>Welcome, Administrator</h2>");	//Admin
							        }
							        else if(user.getUserType() == User.userType.ProductManager){
							        	out.println("<h2>Welcome, Product Manager</h2>");	//ProductManager
							        }
									else if(user.getUserType() == User.userType.SalesManager){
							        	out.println("<h2>Welcome, Sales Manager</h2>");	//SalesManager
							        }
							        else {
							            %><script> alert("you are not authourized to see this page");
							            window.location = "index.jsp";</script><% 
							        }
							    }
							    else
							    {
							          %><script> alert("you are not authourized to see this page");
							        window.location = "index.jsp";</script><%
							    }
							    %>
							    
                    	</div>
                    	
                </div>
                <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                    <a class="fa fa-shield" href="index.jsp" style="font-size: 34px; color: grey; float:right; margin-top:24px;"></a>
                    	
                </div>
            </div>
        </div>
    </div>
    <!-- End Header Top Area -->
    <!-- Main Menu area start-->
    <div class="main-menu-area mg-tb-40">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <ul class="nav nav-tabs notika-menu-wrap menu-it-icon-pro">
                        <li ><a data-toggle="tab" href="#Home"><i class="notika-icon notika-house"></i> Home</a></li>
                        <li><a data-toggle="tab" href="#mailbox"><i class="notika-icon notika-mail"></i> Email</a></li>
                        <li><a data-toggle="tab" href="#Charts"><i class="notika-icon notika-bar-chart"></i> Charts</a></li>
                        <li class="active"><a data-toggle="tab" href="#Tables"><i class="notika-icon notika-windows"></i> Tables</a></li>
                    </ul>
                    <div class="tab-content custom-menu-content">
                    	<div id="Home" class="tab-pane  notika-tab-menu-bg animated flipInX">
                        	<ul class="notika-main-menu-dropdown">
                            	<li><a href="adminPanel.jsp">Home Page</a></li>
                            </ul>
                        </div>
                        <div id="mailbox" class="tab-pane notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                            	<li><a href="admin_mailPage.jsp">Compose Email</a></li>
                            </ul>
                        </div>
                        <div id="Charts" class="tab-pane notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li><a href="admin_charts_flot.jsp">Flot Charts</a>
                                </li>
                                <li><a href="admin_charts_area.jsp">Area Charts</a>
                                </li>
                            </ul>
                        </div>
                        <div id="Tables" class="tab-pane active notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                            	<%
                            	session = request.getSession();
							    if(session.getAttribute("user") != null)
							    {
							        Object temp = session.getAttribute("user");
							        User user = (User) temp;
							        if(user.getUserType() == User.userType.Admin){
							        	out.println("<li><a href=\"admin_Cats_table.jsp\">Category Table</a></li>");	//Category
							        	out.println("<li><a href=\"admin_Games_table.jsp\">Games Table</a></li>");	//Game
							        	out.println("<li><a href=\"admin_Invoice_table.jsp\">Invoice Table</a></li>");	//Orders
							        }
							        else if(user.getUserType() == User.userType.ProductManager){
							        	out.println("<li><a href=\"admin_Cats_table.jsp\">Category Table</a></li>");	//Category
							        	out.println("<li><a href=\"admin_Games_table.jsp\">Games Table</a></li>");	//Game
							        	out.println("<li><a href=\"admin_Invoice_table.jsp\">Invoice Table</a></li>");	//Orders
							        }
									else if(user.getUserType() == User.userType.SalesManager){
							        	out.println("<li><a href=\"admin_Games_table.jsp\">Games Table</a></li>");	//Game
							        	out.println("<li><a href=\"admin_Invoice_table.jsp\">Invoice Table</a></li>");	//Orders
							        }
							        else {
							            %><script> alert("you are not authourized to see this page");
							            window.location = "index.jsp";</script><% 
							        }
							    }
							    else
							    {
							          %><script> alert("you are not authourized to see this page");
							        window.location = "index.jsp";</script><%
							    }
							    %>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Main Menu area End-->
<!-- Breadcomb area Start-->
<div class="breadcomb-area">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="breadcomb-list">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="breadcomb-wp">
								<div class="breadcomb-icon">
									<i class="notika-icon notika-windows"></i>
								</div>
								<div class="breadcomb-ctn">
									<h2>Games Table</h2>
									<p>
										Welcome to Tech Market <span class="bread-ntd">Admin
												Panel Games Table</span>
									</p>
								</div>
							</div>
						</div>
						<!-- <div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">
                            <div class="breadcomb-report">
                                <button data-toggle="tooltip" data-placement="left" title="Download Report" class="btn"><i class="notika-icon notika-sent"></i></button>
                            </div>
                        </div> -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- Breadcomb area End-->
<!-- Data Table area Start-->
<div class="data-table-area">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="col-lg-12">
					<p class="lead">
						Updating Game
					</p>
					<div class="row justify-content-md-center" >
						<div class="col-8" style="margin-left: 14px;">
								<div class="form-group row" style="margin-left: 14px;">
									<label style="margin-top: 7px;"class="col-sm-2 col-form-label">Game ID:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="id" id="id" value="" placeholder="Game ID" readonly/>
									</div>
								</div>
								<% 
								if(session.getAttribute("user") != null)
							    {
							        Object temp = session.getAttribute("user");
							        User user = (User) temp;
							        if(user.getUserType() == User.userType.Admin || user.getUserType() == User.userType.ProductManager){
							        	out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
							        		out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Game Name:</label>");
							        		out.println("<div class=\"col-sm-10\">");
							        			out.println("<input type=\"text\" class=\"form-control\" name=\"name\" id=\"name\" value=\"\" placeholder=\"Game Name\"/>");
							        		out.println("</div>");
							        	out.println("</div>");
							        	
							        	out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
						        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Publisher:</label>");
						        			out.println("<div class=\"col-sm-10\">");
						        				out.println("<input type=\"text\" class=\"form-control\" name=\"publisher\" id=\"publisher\" value=\"\" placeholder=\"Publisher\"/>");
						        			out.println("</div>");
						        		out.println("</div>");
						        		
						        		out.println("<div class=\"form-group row\" width=\"700px;\" style=\"margin-left: 14px;\">");
						        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Categories:</label>");
						        			out.println("<div class=\"col-sm-10\">");
							        			out.println("<div class=\"selectRow\">");
							        				out.println("<select class=\"\" id=\"multipleSelectExample\" data-placeholder=\"Select an option\" multiple=\"\" style=\"width: 910px;\">");
							        					out.println("<option selected=1 value=\"1\">Option 1</option>");
							        					out.println("<option value=\"2\">Option 2</option>");
							        				out.println("</select>");
							        			out.println("</div>");
							        		out.println("</div>");
						        		out.println("</div>");
						        		
						        		out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
						        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Price:</label>");
						        			out.println("<div class=\"col-sm-10\">");
						        				out.println("<input type=\"text\" class=\"form-control\" name=\"price\" id=\"price\" value=\"\" placeholder=\"Price\"/>");
						        			out.println("</div>");
						        		out.println("</div>");
						        		
						        		out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
						        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Sale Price:</label>");
						        			out.println("<div class=\"col-sm-10\">");
						        				out.println("<input type=\"text\" class=\"form-control\" name=\"sale_price\" id=\"sale_price\" value=\"\" placeholder=\"Sale Price\"/>");
						        			out.println("</div>");
						        		out.println("</div>");
						        		
						        		out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
						        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Stock:</label>");
						        			out.println("<div class=\"input-group number-spinner\">");
						        				out.println("<span class=\"input-group-btn\">");
						        					out.println("<button class=\"btn btn-default\" data-dir=\"dwn\"  style=\"margin-left: 15px ;\"><span class=\"glyphicon glyphicon-minus\"></span></button>");
						        				out.println("</span>");
						        				out.println("<input type=\"text\" class=\"form-control text-center\" value=\"1\" name=\"stock\" id=\"stock\" placeholder=\"Stock\">");
						        				out.println("<span class=\"input-group-btn\">");
						        					out.println("<button class=\"btn btn-default\" data-dir=\"up\"  style=\"margin-right: 15px ;\"><span class=\"glyphicon glyphicon-plus\"></span></button>");
						        				out.println("</span>");
						        			out.println("</div>");
						        		out.println("</div>");
						        		
						        		out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
						        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Short Description:</label>");
						        			out.println("<div class=\"col-sm-10\">");
						        				out.println("<input type=\"text\" class=\"form-control\" name=\"shortdescription\" id=\"shortdescription\" value=\"\" placeholder=\"Short Description\"/>");
						        			out.println("</div>");
						        		out.println("</div>");
						        		
						        		out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
						        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Detailed Description: </label>");
						        			out.println("<div class=\"col-sm-10\">");
						        				out.println("<input type=\"text\" class=\"form-control\" name=\"detaileddescription\" id=\"detaileddescription\" value=\"\" placeholder=\"Detailed Description\"/>");
						        			out.println("</div>");
						        		out.println("</div>");
						        		
						        		out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
						        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Minimum Requirements: </label>");
						        			out.println("<div class=\"col-sm-10\">");
						        				out.println("<input type=\"text\" class=\"form-control\" name=\"minimum\" id=\"minimum\" value=\"\" placeholder=\"Minimum Requirements\"/>");
						        			out.println("</div>");
						        		out.println("</div>");
						        		
						        		out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
						        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">About the game: </label>");
						        			out.println("<div class=\"col-sm-10\">");
						        				out.println("<input type=\"text\" class=\"form-control\" name=\"aboutthegame\" id=\"aboutthegame\" value=\"\" placeholder=\"About the game\"/>");
						        			out.println("</div>");
						        		out.println("</div>");
						        		
						        		out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
						        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Background: </label>");
						        			out.println("<div class=\"col-sm-10\">");
						        				out.println("<input type=\"text\" class=\"form-control\" name=\"background\" id=\"background\" value=\"\" placeholder=\"Background\"/>");
						        			out.println("</div>");
						        		out.println("</div>");
						        		
						        		out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
						        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Screenshots: </label>");
						        			out.println("<div class=\"col-sm-10\">");
						        				out.println("<textarea style=\"rows='2'\" type=\"text\" class=\"form-control\" name=\"screenshots\" id=\"screenshots\" placeholder=\"Screenshots\"></textarea>");
						        			out.println("</div>");
						        		out.println("</div>");
						        		
						        		out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
						        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Header Image: </label>");
						        			out.println("<div class=\"col-sm-10\">");
						        				out.println("<input type=\"text\" class=\"form-control\" name=\"headerimage\" id=\"headerimage\" value=\"\" placeholder=\"Header Image\"/>");
						        			out.println("</div>");
						        		out.println("</div>");
						        		
						        		out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
						        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Platforms: </label>");
						        			out.println("<div class=\"col-sm-10\">");
						        				out.println("<input type=\"text\" class=\"form-control\" name=\"platforms\" id=\"platforms\" value=\"\" placeholder=\"Platforms\"/>");
						        			out.println("</div>");
						        		out.println("</div>");
							        }
									else if(user.getUserType() == User.userType.SalesManager){
										out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
						        		out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Game Name:</label>");
						        		out.println("<div class=\"col-sm-10\">");
						        			out.println("<input type=\"text\" class=\"form-control\" name=\"name\" id=\"name\" value=\"\" placeholder=\"Game Name\"readonly/>");
						        		out.println("</div>");
						        	out.println("</div>");
						        	
						        	out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
					        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Publisher:</label>");
					        			out.println("<div class=\"col-sm-10\">");
					        				out.println("<input type=\"text\" class=\"form-control\" name=\"publisher\" id=\"publisher\" value=\"\" placeholder=\"Publisher\"readonly/>");
					        			out.println("</div>");
					        		out.println("</div>");
					        		
					        		out.println("<div class=\"form-group row\" width=\"700px;\" style=\"margin-left: 14px;\">");
					        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Categories:</label>");
					        			out.println("<div class=\"col-sm-10\">");
						        			out.println("<div class=\"selectRow\">");
						        				out.println("<select class=\"\" id=\"multipleSelectExample\" data-placeholder=\"Select an option\" multiple=\"\" style=\"width: 910px;\" disabled>");
						        					out.println("<option selected=1 value=\"1\">Option 1</option>");
						        					out.println("<option value=\"2\">Option 2</option>");
						        				out.println("</select>");
						        			out.println("</div>");
						        		out.println("</div>");
					        		out.println("</div>");
					        		
					        		out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
					        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Price:</label>");
					        			out.println("<div class=\"col-sm-10\">");
					        				out.println("<input type=\"text\" class=\"form-control\" name=\"price\" id=\"price\" value=\"\" placeholder=\"Price\"/>");
					        			out.println("</div>");
					        		out.println("</div>");
					        		
					        		out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
					        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Sale Price:</label>");
					        			out.println("<div class=\"col-sm-10\">");
					        				out.println("<input type=\"text\" class=\"form-control\" name=\"sale_price\" id=\"sale_price\" value=\"\" placeholder=\"Sale Price\"/>");
					        			out.println("</div>");
					        		out.println("</div>");
					        		
					        		out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
					        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Stock:</label>");
					        			out.println("<div class=\"input-group number-spinner\">");
					        				out.println("<span class=\"input-group-btn\">");
					        					out.println("<button class=\"btn btn-default\" data-dir=\"dwn\"  style=\"margin-left: 15px ;\"><span class=\"glyphicon glyphicon-minus\"></span></button>");
					        				out.println("</span>");
					        				out.println("<input type=\"text\" class=\"form-control text-center\" value=\"1\" name=\"stock\" id=\"stock\" placeholder=\"Stock\">");
					        				out.println("<span class=\"input-group-btn\">");
					        					out.println("<button class=\"btn btn-default\" data-dir=\"up\"  style=\"margin-right: 15px ;\"><span class=\"glyphicon glyphicon-plus\"></span></button>");
					        				out.println("</span>");
					        			out.println("</div>");
					        		out.println("</div>");
					        		
					        		out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
					        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Short Description:</label>");
					        			out.println("<div class=\"col-sm-10\">");
					        				out.println("<input type=\"text\" class=\"form-control\" name=\"shortdescription\" id=\"shortdescription\" value=\"\" placeholder=\"Short Description\"readonly/>");
					        			out.println("</div>");
					        		out.println("</div>");
					        		
					        		out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
					        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Detailed Description: </label>");
					        			out.println("<div class=\"col-sm-10\">");
					        				out.println("<input type=\"text\" class=\"form-control\" name=\"detaileddescription\" id=\"detaileddescription\" value=\"\" placeholder=\"Detailed Description\"readonly/>");
					        			out.println("</div>");
					        		out.println("</div>");
					        		
					        		out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
					        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Minimum Requirements: </label>");
					        			out.println("<div class=\"col-sm-10\">");
					        				out.println("<input type=\"text\" class=\"form-control\" name=\"minimum\" id=\"minimum\" value=\"\" placeholder=\"Minimum Requirements\"readonly/>");
					        			out.println("</div>");
					        		out.println("</div>");
					        		
					        		out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
					        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">About the game: </label>");
					        			out.println("<div class=\"col-sm-10\">");
					        				out.println("<input type=\"text\" class=\"form-control\" name=\"aboutthegame\" id=\"aboutthegame\" value=\"\" placeholder=\"About the game\"readonly/>");
					        			out.println("</div>");
					        		out.println("</div>");
					        		
					        		out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
					        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Background: </label>");
					        			out.println("<div class=\"col-sm-10\">");
					        				out.println("<input type=\"text\" class=\"form-control\" name=\"background\" id=\"background\" value=\"\" placeholder=\"Background\"readonly/>");
					        			out.println("</div>");
					        		out.println("</div>");
					        		
					        		out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
					        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Screenshots: </label>");
					        			out.println("<div class=\"col-sm-10\">");
					        				out.println("<textarea style=\"rows='2'\" type=\"text\" class=\"form-control\" name=\"screenshots\" id=\"screenshots\" placeholder=\"Screenshots\"readonly></textarea>");
					        			out.println("</div>");
					        		out.println("</div>");
					        		
					        		out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
					        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Header Image: </label>");
					        			out.println("<div class=\"col-sm-10\">");
					        				out.println("<input type=\"text\" class=\"form-control\" name=\"headerimage\" id=\"headerimage\" value=\"\" placeholder=\"Header Image\"readonly/>");
					        			out.println("</div>");
					        		out.println("</div>");
					        		
					        		out.println("<div class=\"form-group row\" style=\"margin-left: 14px;\">");
					        			out.println("<label style=\"margin-top: 7px;\"class=\"col-sm-2 col-form-label\">Platforms: </label>");
					        			out.println("<div class=\"col-sm-10\">");
					        				out.println("<input type=\"text\" class=\"form-control\" name=\"platforms\" id=\"platforms\" value=\"\" placeholder=\"Platforms\"readonly/>");
					        			out.println("</div>");
					        		out.println("</div>");
							        }
							    }
								%>
								<script type="text/javascript">
								$(document).on('click', '.number-spinner button', function () {    
									var btn = $(this),
										oldValue = btn.closest('.number-spinner').find('input').val().trim(),
										newVal = 0;
									
									if (btn.attr('data-dir') == 'up') {
										newVal = parseInt(oldValue) + 1;
									} else {
										if (oldValue > 0) {
											newVal = parseInt(oldValue) - 1;
										} else {
											newVal = 0;
										}
									}
									btn.closest('.number-spinner').find('input').val(newVal);
								});
								</script>
								<div class="form-group row" style="margin-left: 28px;">
								
									<div class="checkbox_2">
							            <label style="font-size: 1.8em">
							                <input id="checkbox_new" type="checkbox" value="" checked>
							                <span class="cr_2"><i class="cr-icon fa fa-check"></i></span>
							                On Sale
							            </label>
							        </div>
						        </div>
								<br/>
								<button type="submit" class="btn btn-primary btn-block btn-lg" name="edit" id="update_button" >Update</button>

								<a class='btn btn-success btn-block btn-lg' href="admin_Games_table.jsp"
								   style="margin-left: auto; margin-right: auto; display: block; margin-top: 5%; margin-bottom: 0%">Take
									Me To The Games List</a>
						</div>
						<div class="col-3"></div>
					</div>
				</div>


			</div>
		</div>
	</div>
</div>
<!-- Data Table area End-->
<!-- Start Footer area-->
<div class="footer-copyright-area">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="footer-copy-right">
					<p>Copyright 2020. All rights reserved.</p>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Footer area-->
<!-- jquery
    ============================================ -->
<!-- bootstrap JS
    ============================================ -->
<script src="./js3/bootstrap.min.js"></script>
<!-- wow JS
    ============================================ -->
<script src="./js3/wow.min.js"></script>
<!-- price-slider JS
    ============================================ -->
<script src="./js3/jquery-price-slider.js"></script>
<!-- owl.carousel JS
    ============================================ -->
<script src="./js3/owl.carousel.min.js"></script>
<!-- scrollUp JS
    ============================================ -->
<script src="./js3/jquery.scrollUp.min.js"></script>
<!-- meanmenu JS
    ============================================ -->
<script src="./js3/meanmenu/jquery.meanmenu.js"></script>
<!-- counterup JS
    ============================================ -->
<script src="./js3/counterup/jquery.counterup.min.js"></script>
<script src="js/counterup/waypoints.min.js"></script>
<script src="./js3/counterup/counterup-active.js"></script>
<!-- mCustomScrollbar JS
    ============================================ -->
<script src="./js3/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<!-- sparkline JS
    ============================================ -->
<script src="./js3/sparkline/jquery.sparkline.min.js"></script>
<script src="./js3/sparkline/sparkline-active.js"></script>
<!-- flot JS
    ============================================ -->
<script src="./js3/flot/jquery.flot.js"></script>
<script src="./js3/flot/jquery.flot.resize.js"></script>
<script src="./js3/flot/flot-active.js"></script>
<!-- knob JS
    ============================================ -->
<script src="./js3/knob/jquery.knob.js"></script>
<script src="./js3/knob/jquery.appear.js"></script>
<script src="./js3/knob/knob-active.js"></script>
<!--  Chat JS
    ============================================ -->
<script src="./js3/chat/jquery.chat.js"></script>
<!--  todo JS
    ============================================ -->
<script src="./js3/todo/jquery.todo.js"></script>
<!--  wave JS
    ============================================ -->
<script src="./js3/wave/waves.min.js"></script>
<script src="./js3/wave/wave-active.js"></script>
<!-- plugins JS
    ============================================ -->
<script src="./js3/plugins.js"></script>
<!-- Data Table JS
    ============================================ -->
<script src="./js3/data-table/jquery.dataTables.min.js"></script>
<script src="./js3/data-table/data-table-act.js"></script>
<!-- main JS
    ============================================ -->
<script src="./js3/main.js"></script>

</body>

</html>