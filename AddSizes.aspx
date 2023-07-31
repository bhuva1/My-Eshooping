<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddSizes.aspx.cs" Inherits="AddSizes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class ="container ">
            <div class ="form-horizontal ">
                <br />
                <br />

                <h2 align="left" style="text-decoration: underline; color: #000000">Add Size</h2>
                <hr />

                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="Size Name"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtSize" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorSize" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Size" ControlToValidate="txtSize" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                 <div class ="form-group">
                    <asp:Label ID="Label3" CssClass ="col-md-2 control-label " runat="server" Text="Brand"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="ddlBrand" CssClass ="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlBrand" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Main CategoryID" ControlToValidate="ddlBrand" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                 <div class ="form-group">
                    <asp:Label ID="Label4" CssClass ="col-md-2 control-label " runat="server" Text="Category"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="Category" CssClass ="form-control" runat="server"  
                            AutoPostBack="true" onselectedindexchanged="Category_SelectedIndexChanged"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCategory" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter  Category" ControlToValidate="Category" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                

                 <div class ="form-group">
                    <asp:Label ID="Label2" CssClass ="col-md-2 control-label " runat="server" Text="Sub Category"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="SubCategory" CssClass ="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorSubCategory" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Sub Category" ControlToValidate="SubCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                 <div class ="form-group">
                    <asp:Label ID="Label5" CssClass ="col-md-2 control-label " runat="server" Text="Gender"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:DropDownList ID="ddlGender" CssClass ="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Gender" ControlToValidate="ddlGender" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                
                


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAddSize" CssClass ="btn btn-success " runat="server" 
                            Text="Add Size" onclick="btnAddSize_Click"/>
                        
                    </div>
                </div>
                

            </div>

<h1>Size</h1>
        <hr />

 <div class="panel panel-default">

               <div class="panel-heading"> All Sizes</div>


     <asp:repeater ID="rptrSize" runat="server">

         <HeaderTemplate>
             <table class="table table-hover">
                  <thead>
                    <tr>
                        <th>#</th>
                        <th>Size</th>
                        <th>Brand</th>
                        <th>Category</th>
                         <th>Sub Category</th>
                         <th>Gender</th>
                        

                    </tr>

                </thead>



            <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                    <th> <%# Eval("SizeID") %> </th>
                    <td><%# Eval("SizeName") %>   </td>
                  <td><%# Eval("Name") %>   </td>
                  <td><%# Eval("CatName") %>   </td>
                   <td><%# Eval("SubCatName") %>   </td>
                   <td><%# Eval("GenderName") %>   </td>
                    
                </tr>
         </ItemTemplate>


         <FooterTemplate>
             </tbody>

              </table>
         </FooterTemplate>

     </asp:repeater>

              
                
            

   
</div>


        </div>
</asp:Content>

