<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Manashreefab.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignIn</title>
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
                                <li ><a href="SingUp.aspx">SignUp</a></li>
                                <li class="active"><a href="SignIn.aspx">SignIn</a></li>
                               
                                
                                <li ><a href="Contactus.aspx">Contact Us</a></li>
                            </ul>
                        </div>
                        </div>
                </div>
            </div>
            </div>
        <br />
        <br />
        <br />

       <div class="container">
              <div class="form-horizontal">
                 <h2>Login Form</h2>
                <hr />
                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="UserName"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="Txtuser" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Username" ControlToValidate="Txtuser" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class ="form-group">
                    <asp:Label ID="Label2" CssClass ="col-md-2 control-label " runat="server" Text="Password"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="Txtpass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass ="text-danger " runat="server" ErrorMessage="*the password field is required" ControlToValidate="Txtpass" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <asp:Label ID="Label3" CssClass =" control-label " runat="server" Text="Remember me"></asp:Label>
                    </div>
                </div>


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="BtnLogin" CssClass ="btn btn-success " runat="server" Text="Login&raquo;" onClick="BtnLogin_Click" />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SingUp.aspx">Sign Up</asp:HyperLink>
                    </div>
                </div>
                
              <%--  for forgot password--%>
                 <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">
                        <asp:HyperLink ID="HyForgotPass" runat="server" NavigateUrl="~/ForgetPassword.aspx">Forgot Password</asp:HyperLink>
                       
                    </div>
                </div>



                 <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Label ID="lblError" CssClass ="text-danger " runat="server" ></asp:Label>
                    </div>
                </div>


            </div>


        </div>
        <!----singin form End--->
            
   


      

   
                    
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
