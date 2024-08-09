<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecoveryPassword.aspx.cs" Inherits="Manashreefab.RecoveryPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RecoveryPassword</title>
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
                            <a class =" navbar-brand" ><span><img src ="images/logo.jpg" alt="Manashree Fabrication" height="40"/></span>MANASHREEE FABRICATION WORKS</a>
                            </div>
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav navbar-right">
                                <li ><a href="default.aspx">Home</a></li>
                               
                                <li ><a href="SignIn.aspx">SignIn</a></li>
                                <li ><a href="Category.aspx">Category</a></li>
                                
                                <li class ="dropdown">
                                    <a href ="Product.aspx" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li class="dropdown-header">Doors</li>
                                      
                                         <li><a href ="#">Wooden</a></li>
                                         <li><a href ="#">Steal</a></li>
                                            
                                        <li role="separator" class="divider"></li>
                                         <li class="dropdown-header">Grills</li>
                                                                 
                                         <li><a href ="#">Steal</a></li>
                                        <li><a href ="#">Metal</a></li>
                                           
                                         <li class="dropdown-header">Chairs</li>
                                        <li role="separator" class="divider"></li>
                                        
                                         <li><a href ="#">Wooden</a></li>
                                         <li><a href ="#">Steal</a></li>
                                        <li><a href ="#">Metal</a></li>
                                            
                                        <li role="separator" class="divider"></li>
                                         <li class="dropdown-header">Tables</li>
                                       
                                        
                                         <li><a href ="#">Wooden</a></li>
                                         <li><a href ="#">Steal</a></li>
                                        <li><a href ="#">Metal</a></li>
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
         <div class="container">
             <div class ="form-horizontal">
                <br />
                <br />
                <br />

                <h2>Reset Password</h2>
                <hr />
                <h3></h3>
                <div  class ="form-group">
                   <asp:Label ID="lblmsg" CssClass ="col-md-2 control-label" runat="server"  Visible="False" Font-Bold="True" Font-Size="X-Large"></asp:Label>

                </div>


                <div class ="form-group">
                    <asp:Label ID="lblNewPassword" CssClass ="col-md-2 control-label" runat="server" Text=" New Password" Visible="False"></asp:Label>
                    <div class ="col-md-3">
                        <asp:TextBox ID="txtNewPass" CssClass =" form-control" TextMode ="Password"  runat="server" Visible="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPass" CssClass ="Text-danger" runat="server" ErrorMessage="Enter Your New Password" ControlToValidate="txtNewPass" ForeColor="Red"></asp:RequiredFieldValidator>

                    </div>

                </div>

                
                <div class ="form-group">
                    <asp:Label ID="lblConfirmPass" CssClass ="col-md-2 control-label" runat="server" Text="Confirm New Password" Visible="False"></asp:Label>
                    <div class ="col-md-3">
                        <asp:TextBox ID="txtConfirmPass" CssClass =" form-control" TextMode ="Password"  runat="server" Visible="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPass" CssClass ="Text-danger" runat="server" ErrorMessage="Enter Your Confirm New Password" ControlToValidate="txtConfirmPass" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidatorPass" CssClass ="Text-danger" runat="server" ErrorMessage="confirm password not match...try again" ControlToCompare="txtConfirmPass" ForeColor="Red" ControlToValidate="txtNewPass"></asp:CompareValidator>
                    </div>

                </div> 


                <div class ="form-group">
                    <div class ="col-md-2">   </div>

                    <div class ="col-md-6">
                        <asp:Button ID="btnResetPass" CssClass ="btn btn-default" runat="server" Text="Reset" Visible="False" OnClick="btnResetPass_Click"  />
                   
                         </div>
                </div>

            </div>
        </div>


      
    </form>
      <!----footer start-->

     <footer class="footer-pos">
        <div class="container">
            <p class="pull-right"><a href="SingUp.aspx">Back To Top</a></p>
            <p>&copy;ManashreeEngineering.in &middot;<a href="Homepage.aspx">Home</a>&middot;<a href="product.aspx">Product</a>&middot;<a href="contactus.aspx">Contactus</a></p>
        </div>
    </footer>

    <!----footer end--->
</body>
</html>
