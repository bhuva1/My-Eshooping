<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddBrand.aspx.cs" Inherits="AddBrand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class ="form-horizontal ">
                <br />
                <br />
  <h2 align="center" style="color: #000000; text-decoration: underline;">ADD BRAND</h2>
                <hr />
       
                       <center> <asp:TextBox ID="txtBrand" CssClass="form-control" runat="server" 
                               placeholder="Enter Brand Name" Width="180px"></asp:TextBox></center>
      
         <div class="col-mod-3">

         <script type="text/javascript">
             function stopRKey(evt) {
                 var evt = (evt) ? evt : ((event) ? event : null);
                 var node = (evt.target) ? evt.target : ((evt.scrElement) ? evt.srcElement : null);
                 if ((evt.keyCode == 13) && (node.type == "text")) { return false; }
                 document.onkeypress = stopRKey;
         </script>

             
      
            <center> <asp:RequiredFieldValidator ID="RequiredFieldValidatorBrandName"  cssclass="text-danger"  runat="server" ErrorMessage="Enter brandname" ControlToValidate="txtBrand" ForeColor="Red"></asp:RequiredFieldValidator></center>
            


    </div>
    </div>
    
    
    
    
    

    
    

      <div class="form-group">
    
       
    </div>
          <center><asp:Button ID="btnAddBrand" CssClass="btn btn-success" runat="server"  
              Text="Add" onclick="btnAddBrand_Click" Font-Bold="True" 
              ForeColor="Black" /></center>
              

         
    
    </div>
    </div>
    
        <h1>Brands</h1>
        <hr />

 <div class="panel panel-default">

               <div class="panel-heading"> All Brands</div>


     <asp:repeater ID="rptrBrands" runat="server">

         <HeaderTemplate>
             <table class="table">
                  <thead>
                    <tr>
                       
                        <th>Brand</th>
                        <th>Edit</th>

                    </tr>

                </thead>



            <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                   
                    <td><%# Eval("Name")%>   </td>

                    <td>Edit</td>
                </tr>
         </ItemTemplate>


         <FooterTemplate>
             </tbody>

              </table>
         </FooterTemplate>

     </asp:repeater>

              
                
         
         

   
</div>

<hr />
<%--<div class="row">
         

         <div class ="col-md-6"> 

         <div class="row">
         <div class="col-md-6">
         <div class="form-group">
                        <label>Enter ID:</label>
                        <asp:TextBox ID="txtID" CssClass="form-control" runat="server" AutoPostBack="true"  ontextchanged="txtID_TextChanged"></asp:TextBox> 
                        
                    </div>
                    <div class="form-group">
                   
                    </div>
         </div>
         <div class="col-md-6">
         <div class="form-group">
                        <label>Enter Brand:</label>
                        <asp:TextBox ID="txtUpdateBrandName" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
         
          <div class="form-group">
                        <asp:Button ID="btnUpdateBrand" CssClass ="btn btn-primary " runat="server" 
                            Text="UPDATE" onclick="btnUpdateBrand_Click"  />
                    </div>
         </div>
        
         </div>
                    
                    

                    
                    
          </div>    
          <div class="col-md-6"></div>

 </div>--%>

 <div class="container">
  
</asp:Content>

