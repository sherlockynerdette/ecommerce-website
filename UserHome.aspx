<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="Manashreefab.UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Home Page</title>
     <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
     <meta charset =" utf-8" />
    <meta name="viewport" content="width=devce-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible"/>
    <link href="css/Custome.css" rel="stylesheet" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     <script>
        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "Order.aspx";
            });
        });
     </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                            <a class =" navbar-brand" ><span><img src ="images/logo.jpg" alt="Manashree Fabrication" height="40"/></span>MANASHREEE FABRICATION WORKS</a>
                            </div>
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav navbar-right">
                                <li ><a href="default.aspx">Home</a></li>
                                
                                <li ><a href="Category.aspx">Category</a></li>
                                
                                <li class ="dropdown">
                                    <a href ="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                         <li><a href="Product.aspx">All Products</a></li>
                                         <li role="separator" class="divider"></li>
                                       
                                            </ul>
                                        
                                    </li>
                                <li ><a href="Cutamization.aspx">Custamization</a></li>
                                 <li>
                                    <button id="btnCart" class ="btn btn-primary navbar-btn" type="button">Cart<span class="badge" id="pCount" runat="server"></span>

                                    </button>

                                </li>
                                <li ><a href="Order.aspx">Order</a></li>
                                <li ><a href="Contactus.aspx">Contact Us</a></li>
                                <li><asp:Button ID="btnLogin" CssClass="btn btn-navbar-default navbar-btn" runat="server" Text="Sign In" OnClick="btnLogin_Click"/></li>
                               <li><asp:Button ID="btnlogout" CssClass="btn btn-navbar-default navbar-btn" runat="server" Text="Sign Out" OnClick="btnlogout_Click" /></li>
                                

                            </ul>
                        </div>
                        </div>
                </div>
            </div>
            </div>
        <br />
        <br />

        <br />
        <br />
        <br />
        <br />
        <h2>
        <asp:Label ID="lblSuccess" CssClass="text-success" runat="server" ></asp:Label>
            </h2>
        <!----footer start-->

     <footer class="footer-pos">
        <div class="container">
            <p class="pull-right"><a href="SingUp.aspx">Back To Top</a></p>
            <p>&copy;ManashreeEngineering.in &middot;<a href="Homepage.aspx">Home</a>&middot;<a href="product.aspx">Product</a>&middot;<a href="contactus.aspx">Contactus</a></p>
        </div>
    </footer>

    <!----footer end--->
        </form>
</body>
</html>
