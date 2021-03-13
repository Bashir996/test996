<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSales.aspx.cs" Inherits="Delivery.Admin.ViewSales" %>

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
                    <div class="panel-body">

                        <!----------------   Add Department Start   --------------->
                        <div>
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <form id="f2" runat="server" class="form-horizontal">

                                        <asp:Repeater ID="rbr" runat="server">
                                            <HeaderTemplate>
                                                <div id="doctorlist" class="switchgroup">
                                                    <table class="table table-bordered table-hover">
                             <tr>
                                <th>order id</th>
                                <th>Product Name</th>
                                <th>category</th>
                                <th>Product image</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Total Price</th>
                                <th>Delivery State</th>
                                <th> Update State</th>
                                <th>Cancel</th>
                            </tr>
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
                          <a href="updateState.aspx?aid=<%#Eval("order_id") %>" class="btn btn-primary"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
                             </td>
                        <td>
                  <a href="../Customer/CancelMyCart.aspx?aid=<%#Eval("order_id") %>" style="background-color: #e83030;" class="btn btn-danger"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>

                        </td>


                    </tr>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                </table>
               </div>
                                            </FooterTemplate>
                                        </asp:Repeater>



                                    </form>
                                </div>
                            </div>
                        </div>
                        <!----------------   Add Department Ends   --------------->
                    </div>

                    <!----------------   Panel Body Ends   --------------->


                
                <!-----------  Content Menu Tab Ends   ------------>
            </div>
            <!-------   Content Area Ends  --------->
        </div>
        <script src="js/bootstrap.min.js"></script>
</body>
</html>
