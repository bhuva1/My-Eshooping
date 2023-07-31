<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
    <meta charset="utf-8" >
    <meta name="viewport" content="width=device-width,initial-scale=1" >
    <meta http-equiv="x-UA-compatible" content="IE-edge" >
    <link href="Custom.css" rel="stylesheet" type="text/css" />
    <link href="Custom.css" rel="Stylesheet"  />


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style type="text/css">
.style1
        {
            position: relative;
            min-height: 1px;
            float: left;
            width: 86%;
            left: 5px;
            top: -4px;
            height: 66px;
            padding-left: 15px;
            padding-right: 15px;
            
               
}
         

    </style>
</head>
<body class="bg2">
    <form id="form1" runat="server">
   
         
    
       <hr />
    
    </div>
    
    
    </div>
    
    </div>
    
    <!----signup page---->
    <div class="form">
    <div class="center-page">
    
      <center>
  <div>
            <div class ="form-horizontal ">
                <h1 style="color: #000000">SIGN UP</center></h1>
                <hr />
    
    <label class="col-xs-11" style="color: #008000">UserName:</label>
    <div class="col-xs-11">
    <asp:TextBox ID="txtUname" runat="server" Class="form-control" placeholder="Enter your UserName"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" 
            CssClass ="text-danger " ErrorMessage="*plz Enter UserName " 
            ControlToValidate="txtUname" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>


      
    <label class="col-xs-11" style="color: #008000">Password:</label>
    <div class="col-xs-11">
    <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Class="form-control" placeholder="Enter your Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" 
            CssClass ="text-danger " ErrorMessage="*plz Enter Password " 
            ControlToValidate="txtPass" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>



      
    <label class="col-xs-11" style="color: #008000">Confirm Password:</label>
    <div class="col-xs-11">
    
     <asp:TextBox ID="txtcpass" runat="server" TextMode="Password" Class="form-control" placeholder="Enter your Confirm password"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidatorCpass" runat="server" 
              CssClass ="text-danger" ControlToValidate="txtcpass" ErrorMessage="Plz Enter Your Confirm Password"  ForeColor="Red"></asp:RequiredFieldValidator>
       
   
    
    </div>
    




      
    <label class="col-xs-11" style="color: #008000">Your Full Name:</label>
    <div class="col-xs-11">
    <asp:TextBox ID="txtName" runat="server" Class="form-control" placeholder="Enter your Name"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" 
           CssClass ="text-danger" ControlToValidate="txtName" 
            ErrorMessage="Plz Enter Your Full Nmae" ForeColor="Red"></asp:RequiredFieldValidator>
    
    
    </div>
    

      
    <label class="col-xs-11" style="color: #008000">Email:</label>
    <div class="col-xs-11">
     <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="Enter your Email"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" 
             CssClass ="text-danger" ControlToValidate="txtEmail" 
            ErrorMessage="Plz Enter Your Email" ForeColor="#FF3300"></asp:RequiredFieldValidator><br /><br />
   
    </div>
   <label class="col-xs-11"></label>

    <div class="style1">
        <asp:Button ID="txtSignUp" Class="btn btn-success" runat="server"  Text="SignUp&raquo;" 
            onclick="txtSignUp_Click1" BackColor="#00CC00" />

        <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
    </div>
    </div>
    </div>
   
    </div>
    </div>


    <!----signup page End--->
    
    
     
      </div>
     
     
     </div>
     
     
     
  





    </form>
</body>
</html>
