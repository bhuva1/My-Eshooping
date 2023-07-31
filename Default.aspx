<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>My E-Shopping website</title>
    <script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>

    <meta charset="utf-8" >
    <meta name="viewport" content="width=device-width,initial-scale=1" >
    <meta http-equiv="x-UA-compatible" content="IE-edge" >
    <link href="Custom.css" rel="stylesheet" type="text/css" />


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   
   
 
    

   
   
   
   
  <script type="text/javascript">

      $(document).ready(function myfunction() {
          $("#btnCart").click(function myfunction() {
              window.location.href = "Cart.aspx";
          });
      });
  
  </script>
</head>

<body class="bg">
    <form id="form1" runat="server">
    <div>

    <div class="navbar navbar-default navbar-fixed-top" role ="navigation">
    <div class ="container">
    <div class ="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class ="sr-only">toggle navigation</span>
        <span class ="icon-bar"></span>
        <span class ="icon-bar"></span>
        <span class ="icon-bar"></span>
        
        
         </button>
         <a class="navbar-brand" href="default.aspx"><span><img src="icons/icons/safeIcons.png" alt="MyEshopping" height="30" /></span>MyEshooping</a>
    
    
    </div>      
    <div class ="navbar-collapse collapse">
        <u1 class="nav navbar-nav navbar-right">
        <li class="active"><a href ="Default.aspx" style="color: #000000">Home</a></li>
        <li><a href="About.aspx"  style="color: #000000">About </a></li>
       
       
          <li class="dropdown>
              <li class ="drodown">
                            <a href ="#" class ="dropdown-toggle" data-toggle="dropdown"  style="color: #000000">Products<b class ="caret"></b></a>
                            <ul class ="dropdown-menu ">
                                <li> <a href ="Products.aspx"  style="color: #000000">All Products</a></li>
                                <li role="separator" class ="divider "></li> 
                                <li class ="dropdown-header "  style="color: #000000">Men</li>
                                <li role="separator" class ="divider "></li> 
                                <li> <a href ="ManShirt.aspx"  style="color: #000000">Shirts</a></li>
                                <li> <a href="ManPants.aspx"  style="color: #000000">Pants</a></li>
                                <li> <a href ="ManDenims.aspx"  style="color: #000000">Denims</a></li>
                                <li role="separator" class ="divider "></li>
                                <li class ="dropdown-header "  style="color: #000000">Women</li>
                                <li role="separator" class ="divider "></li>
                                <li> <a href ="WomanTop.aspx"  style="color: #000000">Top</a></li>
                                <li> <a href ="WomanLagging.aspx"  style="color: #000000">Leggings</a></li>
                                <li> <a href ="WomanSarees.aspx"  style="color: #000000">Sarees</a></li>
                            </ul>

                        </li>
           <li>
                        <button id="btnCart" class="btn btn-primary navbar-btn" type="button"  style="color: #000000">
                        Cart<span class="badge" id="pcount" runat="server"></span>
                        
                        </button>
                        
                        
                        </li>
              
              
              
              
              </ul>
          
          
          </li>
           <li id="btnSignUp" runat="server" ><a href="SignUp.aspx"  style="color: #000000">SignUp</a></li>
            <li id="btnSignIn" runat="server"  ><a href="SignIn.aspx" style="color: #000000">SignIn</a></li>
            <li>


            
            
            
            <asp:Button ID="btnlogout" CssClass="btn btn-default navbar-btn" runat="server" 
                    Text="Sign Out" onclick="btnlogout_Click"></asp:Button>
            
            
            
            </li>

        
        </u1>
    
    </div>
    
    </div>
    
    
    </div>
    <!---image slider---->
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
        <img src="imageslider/1.jpg" alt="Los Angeles" style="width:100%;height:251px;">
         <div class="carousel-caption">
          <h3>                                Women Shopping</h3>
          <p>50% off </p>
          <p><a class="btn btn-lg btn-primary" href="Cart.aspx" role="button">Buy Now</a></p>
        </div>
      </div>

      <div class="item">
        <img src="imageslider/2.png" alt="Chicago" style="width:100%;height:251px;">
        <div class="carousel-caption">
          <h3>Acce moble Shopping</h3>
          <p>20% off</p>
        </div>
      </div>
    
      <div class="item">
        <img src="imageslider/3.png" alt="New york" style="width:100%;height:251px;">
        <div class="carousel-caption">
          <h3> On mobile you can get</h3>
          <p>25% off</p>
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





     <!---image slider End---->


    
    </div>

    <!---middle contents start----->
    <hr />
    <div class="container center">
    <div class="row">
    <div class="col-lg-4">
    <img class="img-circle" src="mobiles/Mobile/iphone11.jpeg" alt="thumb" width="140" height="140" />
    <h2>Mobiles</h2>
    <p>  
                     Featuring a 15.49-cm (6.1) all-screen Liquid Retina LCD and a glass and aluminum
                    design, the iPhone 11 is as beautiful as it gets. Also, the IP68 rating ensures
                    that is water-resistant up to 2 meters for 30 minutes....


 </p>
    <p> <a class="btn btn-default" href="#" role="button">View more &raquo;</a></p>
    
    </div>

     <div class="col-lg-4">
    <img class="img-circle" src="images/Shoes.jpeg" alt="thumb" width="140" height="140" />
    <h2>Footwear</h2>
    <p>  
 Featuring a 15.49-cm (6.1) all-screen Liquid Retina LCD and a glass and aluminum
                    design, the iPhone 11 is as beautiful as it gets. Also, the IP68 rating ensures
                    that is water-resistant up to 2 meters for 30 minutes...

 </p>
    <p> <a class="btn btn-default" href="#" role="button">View more &raquo;</a></p>
    
    </div>
     <div class="col-lg-4">
    <img class="img-circle" src="images/tshirt.jpeg" alt="thumb" width="140" height="140" />
    <h2>Clothings</h2>
    <p>  
    Featuring a 15.49-cm (6.1) all-screen Liquid Retina LCD and a glass and aluminum
                    design, the iPhone 11 is as beautiful as it gets. Also, the IP68 rating ensures
                    that is water-resistant up to 2 meters for 30 minutes..

 </p>
    <p> <a class="btn btn-default" href="#" role="button">View more &raquo;</a></p>
    
    </div>
    </div>
      <style type="text/css">
 
    

   
   
   
   </style>
    <div class="panel panel-primary">
    <div class="bg1">
            <div class="panel-heading">
                BLACK FRIDAY DEAL</div>
            <div class="panel-body">
                <div class="row" style="padding-top: 50px">
                    <asp:Repeater ID="rptrProducts" runat="server">
                        <ItemTemplate>
                            <div class="col-sm-3 col-md-3">
                                <a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration: none;">
                                    <div class="thumbnail">
                                        <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>"
                                            alt="<%# Eval("ImageName") %>" />
                                        <div class="caption">
                                            <div class="probrand">
                                                <%# Eval ("BrandName") %>
                                            </div>
                                            <div class="proName">
                                                <%# Eval ("PName") %>
                                            </div>
                                            <div class="proPrice">
                                                <span class="proOgPrice">
                                                    <%# Eval ("PPrice","{0:0,00}") %>
                                                </span>
                                                <%# Eval ("PSelPrice","{0:c}") %>
                                                <span class="proPriceDiscount">(<%# Eval("DiscAmount","{0:0,00}") %>
                                                    off) </span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <div class="panel-footer">
                Buy 50 mobiles and get a gift card</div>
        </div>
    </div>
    </div>
    </div>
    
    

    
    
    
    
    
    </div>
    </div>




    <!--middle contents End---->


     <!---footer contents start here---->
     <footer>
     <div class="container">
     <p class="pull-right"><a href="#">Back To top</a></p>
     <p>&copy;2020 bhuvabhavesh.in &middot;<a href="Default.aspx">Home</a>&middot;<a href="About.aspx">about</a>&middot;<a href="Contact Us.aspx">Contact</a>&middot;<a href="Products.aspx">Product</a></p>
     
     
     
     </div>
     
     
     
     
     
     </footer>




      <!--footer contents End---->







    </form>
   
</body>
</html>
