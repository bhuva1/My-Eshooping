<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
    <meta charset="utf-8" >
    <meta name="viewport" content="width=device-width,initial-scale=1" >
    <meta http-equiv="x-UA-compatible" content="IE-edge" >
    <link href="Custom.css" rel="stylesheet" type="text/css" />


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <style type="text/css">
   * { box-sizing: border-box; }

html,
body {
	font-family: 'Roboto', sans-serif;
	height: 100%;
}

body {
	background: linear-gradient(rgba(26, 26, 26, 0.2), rgba(26, 26, 26, 0.4)), url('https://static.pexels.com/photos/9537/sea-beach-sand-sun.jpg') no-repeat;
	background-position: center center;
	background-size: cover;
	font-size: 16px;
	margin: 0;
}

a {
	color: #939398;
}

p {
	margin: 0;
}

.mb-0 {
	margin-bottom: 0 !important;
}

.mb-1 {
	margin-bottom: 0.25rem !important;
}

.mb-2 {
	margin-bottom: 2rem !important;
}

.text-left {
	text-align: left;
}

.text-center {
	text-align: center;
}

.w-100 {
	width: 100%;
}

/* Check Icon */
span.check-icon {
	border: solid #48a64c;
	border-top: 0;
	border-left: 0;
	display: none;
	height: 15px;
	width: 7.5px;
	transform: rotate(45deg);
}


span.check-icon {
	position: absolute;
	bottom: 11px;
	right: 17px;
}

input.valid ~ span.check-icon {
	display: inline-block;
}

/* Menu */
a.menu-toggle {
	cursor: pointer;
	position: absolute;
	top: 66px;
	right: 45px;
}

span.bar {
	background-color: #767676;
	display: block;
	height: 2px;
	margin-bottom: 2px;
	width: 15px;
}

span.bar:last-child {
	margin-bottom: 0;
}


.wrapper {
	display: flex;
	height: 100%;
	padding: 45px 25px;
	position: relative;
	margin: 0 auto;
	max-width: 1200px;

}

/* Quote Wrapper */
.quote-wrapper {
	background: linear-gradient(rgba(26, 26, 26, 0.2), rgba(26, 26, 26, 0.2)), url('https://images.pexels.com/photos/248771/pexels-photo-248771.jpeg') no-repeat center center;
	background-size: cover;
	border-radius: 10px 0 0 10px;
	flex-basis: 50%;
	height: 100%;
}

.quote-wrapper blockquote {
	display: flex;
	flex-direction: column;
	justify-content: center;
	height: 100%;
}

.quote-wrapper blockquote p {
	color: #fff;
	font-size: 1.9rem;
	font-weight: 400;
	text-align: center;
}

.quote-wrapper blockquote p.author {
	font-size: 1rem;
	font-weight: 100;
	margin-top: 7px;
	text-align: right;
	width: 90%;
}

h1.form-title {
	color: #222;
	font-size: 1.9rem;
	margin-bottom: 50px;
}

/* Form */

.form-wrapper {
	background: #fff;
	border-radius: 0 10px 10px 0;
	display: flex;
	flex-direction: column;
	flex-basis: 50%;
	height: 100%;
	justify-content: center;
	text-align: center;
}

.form-wrapper form .form-group {
	margin: 0 auto;
	margin-bottom: 45px;
	position: relative;
	width: 300px;
}

.form-group input {
	background-color: #efeff4;
	border: none;
	border-radius: 5px;
	font-size: 1rem;
	padding: 7px 0 5px 7px;
}

.form-group input:focus,
.form-group input:active {
	outline: none;
}

.form-group label.terms {
	color: #939398;
	font-size: 0.8rem;
}

.form-group input[type="submit"] {
	background-color: #007AFF;
	border: none;
	color: #fff;
	transition: all 0.2s;
}

.form-group input[type="submit"]:hover {
	background-color: #0047ab;
	cursor: pointer;
}

.form-group label:not(.terms) {
	color: #939398;
	font-size: 0.8rem;
	position: absolute;
	top: -25px;
}


.form-wrapper small {
	color: #939398;
	margin-top: 4px;
}


/* Media Queries */

@media screen and (max-width: 687px) {
	.wrapper {
		max-width: 500px;
	}

	/* hide quote-wrapper */
	.quote-wrapper {
		display: none;
	}

	/* Form Wrapper */
	.form-wrapper {
		background: rgba(255, 255, 255, 0.7);
		border-radius: 10px;
		flex-basis: 500px;
		margin: 0 auto;
	}

	.form-wrapper h1.form-title {
		margin-top: 0;
	}

	.form-group input {
		background-color: #fff;
	}
}


@media screen and (max-width: 372px) {
	a.menu-toggle {
		right: 25px;
	}

	.wrapper {
		padding-left: 0;
		padding-right: 0;
	}

	.form-wrapper {
		border-radius: 0;
		flex-basis: 1;
	}
}


@media screen and (max-height: 500px) {
	a.menu-toggle {
		top: 15px;
	}

	.wrapper {
		padding-bottom: 0;
		padding-top: 0;
	}

	h1.form-title {
		margin-bottom: 30px;
		margin-top: 7px;
	}
}

   
   
   </style>
</head>
<body>
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
         <a class="navbar-brand" href="default.aspx"><span><img src="icons/100-secure-icon.webp" alt="myEshopping" height="30" /></span>MyEshooping</a>
    
    
    </div>      
   
           
            
         </u1>
    </div>
    </div>
    </div>
    
    </div>

    <div class="container">
    <div class="form-horizontal">
        <h2>Recover Password</h2>
        <hr />
        <h3>Please Enter Your Email Address. We will send you the recovry link for your password!</h3>

        <div class="form-group">
            <asp:Label ID="lblEmail" CssClass="col-md-2 control-label" runat="server" Text="Email Address"></asp:Label>
            <div class="col-md-3">
                <asp:TextBox ID="txtEmailID" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" CssClass="text-danger" runat="server" 
                    ErrorMessage="Enter Your Email" ControlToValidate="txtEmailID" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
            
            
            </div>
            
        
        
        
        
        </div>

        <div class="form-group">
        <div class="col-md-2"></div>


        <div class="col-md-6">
            <asp:Button ID="btnRestpass" CssClass="btn btn-default" runat="server" 
                Text="Send" onclick="btnRestpass_Click" />
        <asp:Label ID="lblResetpassmsg"  CssClass="text-success" runat="server"></asp:Label>
        
        
        
        </div>
      
        
        </div>
    
    
    </div>
    
    
    
    </div>



    </form>

     <!---footer contents start here---->
       <hr />
     <footer>
     <div class="container">
     <p class="pull-right"><a href="#">Back To top</a></p>
     <p>&copy;2020 coderbaba.in &middot;<a href="Default.aspx">Home</a>&middot;<a href="#">About</a>&middot;<a href="#">Contact</a>&middot;<a href="#">Product</a></p>
      </div>
      </foote>
      
      <!--footer contents End---->
</body>
</html>
