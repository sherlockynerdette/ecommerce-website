<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Manashreefab.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ContactUs</title>
    <meta charset =" utf-8" />
    <meta name="viewport" content="width=devce-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible"/>
    <link href="css/Custome.css" rel="stylesheet" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style type="text/css">
         .auto-style8 {
            width: 142%;
            height: 30px;
        }
        
        .auto-style10 {
            height: 198px;
            width: 941px;
        }
        .auto-style13 {
            height: 125px;
            width: 941px;
        }
        .auto-style15 {
            width: 120%;
            height: 234px;
        }
        .auto-style16 {
            height: 163px;
            width: 941px;
        }
        .auto-style17 {
            height: 120px;
            width: 941px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
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
                                <li ><a href="SignIn.aspx">SignIn</a></li>
                                <li ><a href="Category.aspx">Category</a></li>
                                
                                <li class ="dropdown">
                                    <a href ="Product.aspx" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                     
                                            </ul>
                                        
                                    </li>
                                <li ><a href="Cutamization.aspx">Custamization</a></li>
                                <li ><a href="Order.aspx">Order</a></li>
                                <li class="active" ><a href="Contactus.aspx">Contact Us</a></li>
                            </ul>
                        </div>
                        </div>
                </div>
        <div>
             <table class="auto-style15" style="font-family: Gabriola; font-size: xx-large; background-image: url('images/back1.jpg');">
              <p class="auto-style8"/>
         &nbsp;
                  <tr>
                <td style="font-family: Gabriola; font-size: x-large" class="auto-style17">
                    <asp:Image ID="Image1" runat="server" Height="35px" ImageUrl="~/images/phone.png" Width="51px" />
                    &nbsp;Contact Us&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    7030944171&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; 7276134175&nbsp; &nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp; 7276054176<br />
                </td>
            </tr>
            <tr>
                <td style="font-family: Gabriola; font-size: x-large;" class="auto-style16">
                    <asp:Image ID="Image2" runat="server" Height="27px" ImageUrl="~/images/location.jpg" Width="30px" />
                    &nbsp;Location<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Plot:- L116,Phase lllA,Verna Industrial Estate,Verna - Goa.403722&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style13" style="font-family: Gabriola; font-size: x-large;">
                    <asp:Image ID="Image3" runat="server" Height="37px" ImageUrl="~/images/email.jfif" Width="54px" />
                    &nbsp;Email<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; manshree.enggwork@gmail.com&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                   
            </tr>
            <tr>
                <td class="auto-style10" style="font-family: Gabriola; font-size: x-large">
                    <asp:Image ID="Image6" runat="server" Height="27px" ImageUrl="~/images/web.png" Width="39px" />
                    &nbsp;Other handels&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image7" runat="server" Height="41px" ImageUrl="~/images/twiteer.jpg" Width="60px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image8" runat="server" Height="42px" ImageUrl="~/images/facebook.jfif" Width="89px" />
                    &nbsp;</td>
            </tr>
                     
        </table>
        </div>
    </form>
</body>
</html>
