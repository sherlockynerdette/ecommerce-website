<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Manashreefab._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manashree fabrication</title>
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
                                <li id="btnSignUp" runat="server"><a href="SingUp.aspx">SignUp</a></li>
                                <li id="btnSignIn" runat="server"><a href="SignIn.aspx">SignIn</a></li>
                                <li>
                                     <asp:Button ID="btnlogout" CssClass="btn btn-navbar-default navbar-btn" runat="server" Text="Sign Out" OnClick="btnlogout_Click1" />
                            
                                </li>
                                <li ><a href="Category.aspx">Category</a></li>
                                
                                <li class ="dropdown">
                                    <a href ="Product.aspx" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
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
                            </ul>
                        </div>
                        </div>
                </div>

            <!---image slider--->
             <div class="container">
  <h2>Carousel Example</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="images/chairs.jpeg" alt="Los Angeles" style="width:2250px ;height:1140px"/>
          <div class="carousel-caption">
              <h3>Chairs</h3>
              <p>30 % off</p>
              <p><a class="btn btn-lg btn-primary" href="product.aspx" role="button">Buy Now</a></p>
          </div>
      </div>

      <div class="item">
        <img src="img/grills1.jpeg" alt="Chicago" style="width:100%;"/>
          <div class="carousel-caption">
              <h3>Grills</h3>
              <p>10 % off</p>
               <p><a class="btn btn-lg btn-primary" href="product.aspx" role="button">Buy Now</a></p>
          </div>
      </div>
    
      <div class="item">
        <img src="images/table.jpg" alt="New york" style="width:100%;height:68%"/>
          <div class="carousel-caption">
              <h3>Tables</h3>
               <p><a class="btn btn-lg btn-primary" href="Product.aspx" role="button">Buy Now</a></p>
          </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
     <hr />
    <div class="container center">
       
        <div class="row">
            <div class="col-lg-4">
                <img class="img-circle" src="img/tables1.jfif" alt="thumb" width="150" height="140" />
                <h2>Tables</h2>
                <p> Wooden Beautiful Design Table For Living Room Size(LxBxH-12x12x14) Inch Home decor table help accentuate the style of your other living room furniture. Usually placed at the home it is a very important component of the overall look of your living room.Wooden table comfortable and durable. Made from seasoned mango wood with hand carved design.</p>
                <p><a class="btn btn-default" href="Product.aspx" role="button">View More &raquo;</a></p>
            </div>

            <div class="row">
            <div class="col-lg-4">
                <img class="img-circle" src="images/grills.jpg" alt="thumb" width="150" height="140" />
                <h2>Grills</h2>
                <p> Metal grills form an integral part of any structure-be it residential, educational or commercial. Window grills, balcony grills, boundaries, etc not only provide security, but also enhance beauty of the structure. This series of five books provides a wide range of exclusive designs of grills and railings for all purposes. The exhaustive range of designs is sure to appeal to people looking for contemporary and traditional designs of grills and railings for their purposes and needs.</p>
                <p><a class="btn btn-default" href="Product.aspx" role="button">View More &raquo;</a></p>
            </div>

                <div class="row">
            <div class="col-lg-4">
                <img class="img-circle" src="img/chairs.jfif" alt="thumb" width="150" height="140" />
                <h2>Chairs</h2>
                <p> 
(1) "Product Dimensions":- Height: (30.0 inches) X Width: (19.0 inches) X Diameter: 19.0 (inches) | Metal Finish Application:- Powder Coated | Leg Material:- Metal | Upholstery Material:- Fabric | Upholstery Fill Material:- Foam | Weight Capacity:- 100 Kg | Back Style:- Solid back | </p>
                <p><a class="btn btn-default" href="Product.aspx" role="button">View More &raquo;</a></p>
            </div>
        </div>
        </div>
    </div>

    </div>
    <br />

    <!----footer start-->

    <footer>
        <div class="container">
            <p class="pull-right"><a href="#">Back To Top</a></p>
            <p>&copy;ManashreeEngineering.in &middot;<a href="Homepage.aspx">Home</a>&middot;<a href="product.aspx">Product</a>&middot;<a href="contactus.aspx">Contactus</a></p>
        </div>
    </footer>

    <!----footer end--->
                       
                    
            </div>
    </form>
</body>
</html>
