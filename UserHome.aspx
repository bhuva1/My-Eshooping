<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>User Home Page</title>
    <script src="http://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous">

    </script>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <link href="Custom.css" rel="stylesheet" />
   
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script>

        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "Cart.aspx";
            });
        });

    </script>

</head>
<body class="bg3">

    <form id="form1" runat="server">
    <div>
        <div class ="navbar navbar-default navbar-fixed-top" role ="navigation">
            <div class ="container ">
                <div class ="navbar-header">
                    <button type="button" class ="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                        <span class ="sr-only">Toggle navigation</span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>

                    </button>
                    <a class ="navbar-brand" href ="UserHome.aspx" ><span ><img src="icons/icons/safeIcons.png" alt="MyEShoppoing" height ="30" /></span>MyEShopping </a>

                </div>
                <div class ="navbar-collapse collapse">
                    <ul class ="nav navbar-nav navbar-right">
                        <li ><a href ="UserHome.aspx" style="color: #000000">Home</a> </li>
                         <li ><a href ="About.aspx" style="color: #000000">About</a> </li>
                       
                        <%--<li ><a href ="#">Blog-</a> </li>--%>
                        <li class ="drodown">
                            <a href ="#" class ="dropdown-toggle" data-toggle="dropdown" style="color: #000000">Products<b class ="caret"></b></a>
                            <ul class ="dropdown-menu ">
                                <li> <a href ="Products.aspx" style="color: #000000">All Products</a></li>
                                <li role="separator" class ="divider "></li> 
                                <li class ="dropdown-header " style="color: #000000">Men</li>
                                <li role="separator" class ="divider "></li> 
                                <li> <a href ="ManShirt.aspx" style="color: #000000">Shirts</a></li>
                                <li> <a href="ManPants.aspx" style="color: #000000">Pants</a></li>
                                <li> <a href ="ManDenims.aspx" style="color: #000000">Denims</a></li>
                                <li role="separator" class ="divider "></li>
                                <li class ="dropdown-header " style="color: #000000">Women</li>
                                <li role="separator" class ="divider "></li>
                                <li> <a href ="WomanTop.aspx" style="color: #000000">Top</a></li>
                                <li> <a href ="WomanLagging.aspx" style="color: #000000">Leggings</a></li>
                                <li> <a href ="WomanSarees.aspx" style="color: #000000">Sarees</a></li>
                            </ul>

                        </li>
                        <li>
                            <button id="btnCart" class="btn btn-primary navbar-btn" type="button" style="color: #000000">
                                Cart<span class="badge" id="pCount" runat="server"></span>

                            </button>
                        </li>
                        <li >

                            <asp:Button ID="btnLogin" CssClass ="btn btn-default navbar-btn " style="color: #000000" runat="server" Text="SignIn" OnClick="btnLogin_Click" />
                            <asp:Button ID="btnlogout" CssClass="btn btn-default navrbar-btn" 
                                 style="color: #000000" runat="server" Text="Sign Out" onclick="btnlogout_Click" />
                            
                        </li>
                        <li>
                        <asp:Button ID="Button1" CssClass ="btn btn-link navbar-btn " runat="server" Text=""  />
                        </li>
                        
                    </ul>
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


        <asp:Label ID="lblSuccess" runat="server" CssClass ="text-success "></asp:Label>

         <!---Footer COntents Start here---->
        <hr />
        <footer>
            <div class ="container ">
                <p class ="pull-right "><a href ="#">Back to top</a></p>
                <p>&copy;2020 .in &middot; <a href ="#">Home</a>&middot;<a href ="#">About</a>&middot;<a href ="#">Contact</a>&middot;<a href ="#">Products</a> </p>
            </div>

        </footer>

         <!---Footer COntents End---->
    </form>
</body>
</html>

"