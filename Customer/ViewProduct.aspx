<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProduct.aspx.cs" Inherits="Delivery.Customer.ViewProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<meta name="description" content="free-educational-responsive-web-template-webEdu"/>
	<meta name="author" content="webThemez.com"/>
	<title>View Product</title>
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
                    <li class="active"><a href="ViewProduct.aspx">View Product</a></li>
                    <li><a href="cart.aspx"><i class="glyphicon glyphicon-shopping-cart"></i></a></li>
                    <li><asp:LinkButton ID ="h1" runat ="server"  Text="Sign out" OnClick="h1_Click" ></asp:LinkButton></li>

				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
            

<br />
        <br />
  <div class="container">
                <h3 style="margin-top: -30px;text-align: center;font-size: 40px;margin-bottom: 30px;">Our Products</h3>

    <div class="row">
        <div class="col-md-2" style="margin-top: -100px;">
                            
                    <h1 style="font-size: 20px;">Categories</h1>
               
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>

                </HeaderTemplate>
                <ItemTemplate>

              

                <div class="list-group">
  <a href="ViewProduct.aspx?id=<%# Eval("cat_id") %>" class="list-group-item list-group-item-action" style="background-color: #032735;color: white;"><%# Eval("cat_name") %></a>
</div>


                </ItemTemplate>
                <FooterTemplate>
                </FooterTemplate>
            </asp:Repeater>


        </div>
       <div class="col-md-10">
           <asp:Repeater ID="rbr" runat="server">
                <HeaderTemplate>
                   
                </HeaderTemplate>
                <ItemTemplate>

<div class="col-md-3">
           <div class="card-panel">
            <i class="material-icons large teal-text"><img src="../Admin/images/<%# Eval("image") %>" onerror="this.src='images/noimage.jpg'"  style="width: 195px;height:170px"/></i>
            <h4 style="font-weight: bold;font-size: 26px;"><%# Eval("pro_name") %></h4>
            <p>Category: <%# Eval("cat_name") %></p>
            <p style="color: #fd5d5d;font-weight: bold;font-size: 20px;">Price: <%# Eval("price") %> $</p>
               <asp:HyperLink ID="id"  class="btn btn-two" style="width: auto"
                runat="server" Text="View Details"
                  CausesValidation="False"  
                 NavigateUrl='<%# "~/Customer/AddToCart.aspx?id=" + Eval("pro_id") %>'>
</asp:HyperLink>
          </div>   
        </div>

                </ItemTemplate>
                <FooterTemplate>
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

