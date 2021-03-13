<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="Delivery.Customer.AddToCart" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<meta name="description" content="free-educational-responsive-web-template-webEdu"/>
	<meta name="author" content="webThemez.com"/>
	<title>Orders Details</title>
	<link rel="favicon" href="assets/images/favicon.png"/>
<%--    <link href="assets/css/Custom-Cs.css" rel="stylesheet" />
    <link href="assets/css/custom_css.css" rel="stylesheet" />--%>

	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700"/>
	<link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="assets/css/font-awesome.min.css"/> 
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen"/> 
	<link rel="stylesheet" href="assets/css/style.css"/>
    <link rel='stylesheet' id='camera-css'  href='assets/css/camera.css' type='text/css' media='all'/> 
    <script type="text/javascript" src="//cdn.fusioncharts.com/fusioncharts/latest/fusioncharts.js"></script>
    <script type="text/javascript" src="//cdn.fusioncharts.com/fusioncharts/latest/themes/fusioncharts.theme.fusion.js"></script>

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
<%--                <h3 style="margin-top: -30px;text-align: center;font-size: 40px;margin-bottom: 30px;">Product Details</h3>--%>

    <div class="row">
        <div class="col-md-5">
            <div style="max-width: 480px" class="thumbnail">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <asp:Repeater ID="rptrImages" runat="server">
                            <ItemTemplate>
                                <div>
                                    <img src="../Admin/images/<%#Eval("image") %>" onerror="this.src='images/noimage.jpg'">
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="col-md-7">
            <asp:Repeater ID="rptrProductDetails" EnableViewState="true" runat="server">
                <ItemTemplate>
                    <div class="divDet1">
                        <h1 class="proNameView"><%#Eval("pro_name") %></h1>
                        <span style="color: #fd5d5d;font-weight: bold;font-size: 20px;" class="proOgPriceView"><%#Eval("price") %> $</span>
                        <h4 style="color: #71d971;" class="proPriceView"><%#Eval("cat_name") %></h4>
                    </div>
                    <div class="divDet1">
                        <h2 class="h5Size">Description</h2>
                          <p><%#Eval("[desc]") %></p>
                    </div>


                </ItemTemplate>
            </asp:Repeater>

                     <div class="divDet1">
							<div class="form-group">
                                <asp:TextBox ID="t1" runat ="server" type="number"  class="form-control" placeholder="Quantity" style="width: 200px;"  ></asp:TextBox>
							</div>
                        <asp:Button ID="btnAddToCart" OnClick="btnAddToCart_Click" CssClass="btn btn-two" runat="server" Text="Delivery Now" />
                        <asp:Label ID="l1" runat="server"></asp:Label>
                    </div>

        </div>

            
            
        
					

        





    </div>
    </div>

   
        </form>
  

	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="assets/js/modernizr-latest.js"></script> 
	<script type='text/javascript' src='assets/js/jquery.min.js'></script>
    <script type='text/javascript' src='assets/js/fancybox/jquery.fancybox.pack.js'></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
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

