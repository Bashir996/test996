<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Delivery.Customer.cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<meta name="description" content="free-educational-responsive-web-template-webEdu"/>
	<meta name="author" content="webThemez.com"/>
	<title>cart</title>
	<link rel="favicon" href="assets/images/favicon.png"/>
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700"/>
	<link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="assets/css/font-awesome.min.css"/> 
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen"/> 
	<link rel="stylesheet" href="assets/css/style.css"/>
    <link rel='stylesheet' id='camera-css'  href='assets/css/camera.css' type='text/css' media='all'/> 
<%--    <script type="text/javascript" src="//cdn.fusioncharts.com/fusioncharts/latest/fusioncharts.js"></script>
    <script type="text/javascript" src="//cdn.fusioncharts.com/fusioncharts/latest/themes/fusioncharts.theme.fusion.js"></script>--%>

</head>
<body>
    <form id="f1" runat="server">

   
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse" style="background-color: #032735;">
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
				<a class="navbar-brand" href="AdminHome.aspx">
					<img src="assets/images/logo.png" alt="Techro HTML5 template" style="margin-top: -35px;"/>

				</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right mainNav">
					<li><a href="Home.aspx">Home</a></li>
                    <li ><a href="ViewProduct.aspx">View Product</a></li>
                    <li class="active" style="height: 44px;"><a href="cart.aspx"><i class="glyphicon glyphicon-shopping-cart"></i></a></li>
                    <li><asp:LinkButton ID ="h1" runat ="server"  Text="Sign out" OnClick="h1_Click" ></asp:LinkButton></li>

				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
            

<br />
        <br />
  <div class="container">
              <h3 style="margin-top: -30px;text-align: center;font-size: 40px;margin-bottom: 30px;">Your Cart</h3>

        <div class="row">
        <div class="col-md-12">
            <asp:Repeater ID="rbr" runat="server">
                <HeaderTemplate>
                    <div class="table-responsive">
                            <table class="table">
                        <thead>
                            <tr>
                                <th>order id</th>
                                <th>Product Name</th>
                                <th>category</th>
                                <th>Product image</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Total Price</th>
                                <th>Delivery State</th>
                                <th>Cancel</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                         <td><%# Eval("order_id") %></td>
                        <td><%# Eval("pro_name") %></td>
                         <td><%#Eval("cat_name") %></td>
                        <td><img src="../Admin/images/<%#Eval("image") %>" class="img-circle" style="height: 50px;width: 50px;" /></td>
                        <td><%# Eval("price") %></td>
                        <td><%# Eval("qty") %></td>
                         <td><%#Eval("total") %></td>
                         <td><%#Eval("order_state") %></td>
                        <td>
                  <a href="CancelMyCart.aspx?id=<%#Eval("order_id") %>" style="background-color: #e83030;" class="btn btn-danger"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>

                        </td>

                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
            </table>


                    </div>
                </FooterTemplate>
            </asp:Repeater>
            
        </div>
    </div>
    </div>

   
        </form>
  

	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="assets/js/modernizr-latest.js"></script> 
	<script type='text/javascript' src='assets/js/jquery.min.js'></script>
    <script type='text/javascript' src='assets/js/fancybox/jquery.fancybox.pack.js'></script>
    
    <script type='text/javascript' src='assets/js/jquery.mobile.customized.min.js'></script>
    <script type='text/javascript' src='assets/js/jquery.easing.1.3.js'></script> 
    <script type='text/javascript' src='assets/js/camera.min.js'></script> 
    <script src="assets/js/bootstrap.min.js"></script> 
	<script src="assets/js/custom.js"></script>
    <script>
		jQuery(function(){
			
			jQuery('#camera_wrap_4').camera({
                transPeriod: 500,
                time: 3000,
				height: '600',
				loader: 'false',
				pagination: true,
				thumbnails: false,
				hover: false,
                playPause: false,
                navigation: false,
				opacityOnGrid: false,
				imagePath: 'assets/images/'
			});

		});
      
	</script>
    
</body>
</html>

