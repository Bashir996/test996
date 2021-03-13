<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateState.aspx.cs" Inherits="Delivery.Admin.updateState" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>E-Delivery System</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <script src="js/jquery.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            $('#doctorlist').show();
            $('.doctor li:first-child a').addClass('active');
            $('.doctor li a').click(function (e) {

                var tabDiv = this.hash;
                $('.doctor li a').removeClass('active');
                $(this).addClass('.active');
                $('.switchgroup').hide();
                $(tabDiv).fadeIn();
                e.preventDefault();

            });


        });
    </script>
</head>
<body style="overflow-x: hidden; background-image:url(../Admin/images/22.jpg)">
    <div class="container-fluid">

        <!--- Header Start -------->
        <div class="row header" style="background-color: #337AB700;">

            <div class="col-md-10">
                <h2>E-Delivery System</h2>
            </div>

            <div class="col-md-2 ">
                <ul class="nav nav-pills ">
                    <li class="dropdown dmenu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Admin <span class="caret"></span></a>
                        <ul class="dropdown-menu ">
                            <li><a href="Login.aspx">Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <!--- Header Ends --------->

        <div class="row">

            <!----- Menu Area Start ------>
            <div class="col-md-2 menucontent">
                <ul class="nav nav-pills nav-stacked">
                    <li role="presentation"><a href="Managecategory.aspx"><h4>Manage category</h4></a></li>
                    <li role="presentation"><a href="ManageProduct.aspx"><h4>Manage product</h4></a></li>
                    <li role="presentation"><a href="Addcategory.aspx"><h4>Add category</h4></a></li>
                    <li role="presentation"><a href="AddProduct.aspx"><h4>Add Product</h4></a></li>
                    <li role="presentation"><a href="ViewUsers.aspx"><h4>View Customers</h4></a></li>
                    <li role="presentation"><a href="ViewSales.aspx"><h4>View Orders</h4></a></li>

                </ul>
            </div>
            <!---- Menu Ares Ends  -------->

            <!-------   Content Area start  --------->
            <div class="col-md-10 maincontent">

                <!-----------  Content Menu Tab Start   ------------>
            

                    <style>
                        .thub {
                            border: 1px solid #ddd; /* Gray border */
                            border-radius: 4px; /* Rounded border */
                            padding: 5px; /* Some padding */
                            width: 89px; /* Set a small width */
                        }

                        /* Add a hover effect (blue shadow) */
                        img:hover {
                            box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5);
                        }
                    </style>

                    <!----------------   Panel Body Start   --------------->
                     <div class="panel panel-default">

                    <div class="panel-body">
                       <form  id="f2" runat="server"  class="form-horizontal">

                            <div class="form-group">
                                <label  class="col-sm-4 control-label">Order State</label>
                                <div class="col-sm-4">
                                     <asp:TextBox ID="t1" runat="server" type="text" class="form-control"  placeholder="Order State"></asp:TextBox>

                                </div>
                            </div>




                            <div class="form-group">
                                <div class="col-sm-offset-4 col-sm-10">
                                    <asp:Button ID="b1" runat="server" class="btn btn-primary" Text="Update State" OnClick="b1_Click" />
                                                <asp:Label ID="l1" runat="server" Text=""></asp:Label>

                                </div>
                            </div>
                        </form>

                                </div>

                         </div>
                    <!----------------   Panel Body Ends   --------------->


                
                <!-----------  Content Menu Tab Ends   ------------>
            </div>
            <!-------   Content Area Ends  --------->
        </div>
        <script src="js/bootstrap.min.js"></script>
</body>
</html>
