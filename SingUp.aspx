<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SingUp.aspx.cs" Inherits="Manashreefab.SingUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SingUp</title>
    <meta charset =" utf-8" />
    <meta name="viewport" content="width=devce-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible"/>
    <link href="css/Custome.css" rel="stylesheet" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
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
                            <a class =" navbar-brand" href="default.aspx"><span><img src ="images/logo.jpg" alt="Manashree Fabrication" height="40"/></span>MANASHREEE FABRICATION WORKS</a>
                            </div>
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav navbar-right">
                                <li ><a href="default.aspx">Home</a></li>
                               <li class="active"><a href="SingUp.aspx">SignUp</a></li>
                                <li ><a href="SignIn.aspx">SignIn</a></li>
                                <li ><a href="Category.aspx">Category</a></li>
                                
                               <li class ="dropdown">
                                    <a href ="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                         <li><a href="Product.aspx">All Products</a></li>
                                         <li role="separator" class="divider"></li>
                                       
                                            </ul>
                                          
                                        
                                    </li>
                                <li ><a href="Custamization.aspx">Custamization</a></li>
                                <li ><a href="Order.aspx">Order</a></li>
                                <li ><a href="Contactus.aspx">Contact Us</a></li>
                            </ul>
                        </div>
                        </div>
                </div>


        </div>

        <!--SingUp--->
         <div class="center-page">
              
                <label class="col-xs-11">UserName:</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="Txtuser" runat="server" CssClass="form-control" placeholder="Enter Your Name"></asp:TextBox>
                </div>

                <label class="col-xs-11">Contact:</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="txtcontact" runat="server" CssClass="form-control" placeholder="Enter Number"></asp:TextBox>
                </div>

                <label class="col-xs-11">Email</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="Txtemail" runat="server" CssClass="form-control" placeholder="Enter Mail" TextMode="Email"></asp:TextBox>
                </div>

                <label class="col-xs-11">Address</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="Txtaddress" runat="server" CssClass="form-control" placeholder="Enter Address"></asp:TextBox>
                </div>

                <label class="col-xs-11">Password</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="Txtpass" runat="server" CssClass="form-control" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                </div>

                <label class="col-xs-11">Confirm Password:</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="Txtpass1" runat="server" CssClass="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                </div>

                 <label class="col-xs-11"></label>
                <div class="col-xs-11">
                    <asp:Button ID="txtsingup" Class="btn btn-success" runat="server" Text="SingUp"  onClick="txtsingup_Click"/>
                    <asp:Label ID="lblmsg" runat="server" ></asp:Label>
                </div>
             <div>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ManashreeConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
             </div>
                
            </div>



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
