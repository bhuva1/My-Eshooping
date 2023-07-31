<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddGender.aspx.cs" Inherits="AddGender" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div class ="container ">
            <div class ="form-horizontal ">
                <br />
                <br />

                <h2 align="center">Add Gender</h2>
                <hr />
                  <center> <asp:TextBox ID="txtGender" CssClass="form-control" runat="server" 
                               placeholder="Enter Gender Name" Width="180px"></asp:TextBox></center>
                       
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Gender" ControlToValidate="txtGender" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                


                


                <div class ="form-group">
                   

                        <center><asp:Button ID="btnAddBrand" CssClass ="btn btn-success " runat="server" 
                            Text="Add" onclick="btnAddBrand_Click"/></center>
                        
                    </div>
                </div>
                
              
                 



                


            </div>
         <h1>Gender</h1>
        <hr />

 <div class="panel panel-default">

               <div class="panel-heading"> All Gender</div>


     <asp:repeater ID="rptrGender" runat="server">

         <HeaderTemplate>
             <table class="table">
                  <thead>
                    <tr>
                        
                        <th>Gender</th>
                        <th>Edit</th>

                    </tr>

                </thead>



            <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                  
                    <td><%# Eval("GenderName") %>   </td>

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

