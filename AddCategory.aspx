<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <div class ="container ">
            <div class ="form-horizontal ">
                <br />
                <br />

                <h2 align="center" style="color: #000000; text-decoration: underline;">ADD CATEGORY</h2>
                <hr />
               
                    

                         
                       <center> <asp:TextBox ID="txtCategory" CssClass="form-control" runat="server" 
                               placeholder="Enter Category Name" Width="180px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtCategoryName" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Brandname" ControlToValidate="txtCategory" ForeColor="Red"></asp:RequiredFieldValidator></center>
                    </div>
                
                

 
                <div class ="form-group">
                   
           

                    
                      <center>  <asp:Button ID="btnAddtxtCategory" CssClass="btn btn-success" runat="server" 
                            Text="Add Category" onclick="btnAddtxtCategory_Click" /></center>
                    </div>
                </div>
                

            </div>

             <h1>Categories</h1>
        <hr />

 <div class="panel panel-default">

               <div class="panel-heading"> All Categories</div>


     <asp:repeater ID="rptrCategory" runat="server">

         <HeaderTemplate>
             <table class="table">
                  <thead>
                    <tr>
                        
                        <th>Categories</th>
                        <th>Edit</th>

                    </tr>

                </thead>



            <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                    
                    <td><%# Eval("CatName") %>   </td>

                    <td>Edit</td>
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

