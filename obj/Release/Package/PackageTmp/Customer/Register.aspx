<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Delivery.Customer.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<meta name="description" content="free-educational-responsive-web-template-webEdu"/>
	<meta name="author" content="webThemez.com"/>
	<title>Register</title>
	<link rel="favicon" href="assets/images/favicon.png"/>
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700"/>
	<link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="assets/css/font-awesome.min.css"/>
	<!-- Custom styles for our template -->
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen"/>
	<link rel="stylesheet" href="assets/css/style.css"/>
</head>
<body>
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse" style="background-color: #032735;">
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
				<a class="navbar-brand" href="Register.aspx">
					<img src="assets/images/logo.png" alt="Techro HTML5 template" style="margin-top: -35px;"/>

				</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right mainNav">
					<li><a href="Login.aspx">Login</a></li>
					<li class="active"><a href="Register.aspx">Register</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- /.navbar -->

		<header id="head" class="secondary" style="background-color: #032735;">
            <div class="container">
                    <h1>E-Delivery</h1>
                    <p>web based to E-Delivery and buy Product.</p>
                </div>
    </header>


	<!-- container -->
	<div class="container">
				<div class="row">
                    <div class="col-md-3">

                    </div>
					<div class="col-md-6">
						<h3 class="section-title"> Create Your Account</h3>
						
						<form id="f1" runat="server" class ="form-light mt-20" role="form">
                                  <div class="form-group">
                                <asp:TextBox ID="t1" runat ="server" type="text" class="form-control" placeholder="Full Name" ></asp:TextBox>
							</div>

							<div class="form-group">
                                <asp:TextBox ID="t2" runat ="server" class="form-control" placeholder="User Name" ></asp:TextBox>
							</div>
                            	<div class="form-group">
                                <asp:TextBox ID="t3" runat ="server" class="form-control" type="password" placeholder="Password"></asp:TextBox>
							</div>


                            	<div class="form-group">
                                <asp:TextBox ID="t4" runat ="server" class="form-control" placeholder="address" ></asp:TextBox>
							</div>

                              	<div class="form-group">
                                <asp:TextBox ID="t5" runat ="server" class="form-control" placeholder="phone" ></asp:TextBox>
							</div>

                            <div class="form-group">
                               
                            <asp:Button ID ="b1" runat="server" type="submit" class="btn btn-two" Text="Create" OnClick="b1_Click" />
                            <br />
                            <asp:Label ID="l1" runat="server" Text=""></asp:Label>
                                
                            </div>
						</form>
					</div>
				</div>
			</div>
	<!-- /container -->

	 


	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/custom.js"></script>

	<!-- Google Maps -->
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
	<script src="assets/js/google-map.js"></script>


</body>
</html>
