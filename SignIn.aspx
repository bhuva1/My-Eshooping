<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Sign In</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <link href="Custom.css" rel="stylesheet" />
   
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   
</head>
<body class="bg">
    <form id="form1" runat="server">
     


        <!----singin form start--->
        <div class="form">
          
        <div class ="container1 ">
            <div class ="form-horizontal ">
            
            
                <asp:Label ID="Label4" runat="server" Text="LOGIN FORM" CssClass="center" 
                    Font-Size="XX-Large" Font-Underline="True" ForeColor="Black"></asp:Label>
              <!--  <h2 style="color: #008000">LOGIN FORM  </h2>-->
                <br /><br /><br />
                <div class ="form-group">
                
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" 
                        Text="USERNAME:" ForeColor="Black"></asp:Label>
                    <div class ="col-md-3 " style="color: #00FF00">

                        <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server" 
                            Height="40px" Width="230px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Username" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class ="form-group">
                    <asp:Label ID="Label2" CssClass ="col-md-2 control-label " runat="server" 
                        Text="PASSWORD:" ForeColor="Black"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtPass" CssClass="form-control" runat="server" 
                            TextMode="Password" Height="40px" Width="230px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass ="text-danger " runat="server" ErrorMessage="*the password field is required" ControlToValidate="txtPass" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <asp:Label ID="Label3" CssClass =" control-label " runat="server" 
                            Text="Remember me" ForeColor="#00CC00"></asp:Label>
                    </div>
                </div>


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnLogin" CssClass ="btn btn-success " runat="server" 
                            Text="Login&raquo;" OnClick="btnLogin_Click" ForeColor="#33CC33" />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">Sign Up</asp:HyperLink>
                    </div>
                </div>
                
              <%--  for forgot password--%>
                 <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">
                        <asp:HyperLink ID="HyForgotPass" runat="server" NavigateUrl="ForgotPassword.aspx">Forgot Password</asp:HyperLink>
                       
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
        </div>
        <!----singin form End--->

          
    </form>
</body>
</html>

