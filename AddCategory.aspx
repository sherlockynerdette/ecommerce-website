<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="Manashreefab.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div clss="container">
        <div class="form-horizontal">
            <h2>Add Category</h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="Category Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtCategory" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCategory" CssClass="text-danger" runat="server" ErrorMessage="Enter Category" ControlToValidate="txtCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-btn-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAddCategory" CssClass="btn btn-success" runat="server" Text="Add" OnClick="btnAddCategory_Click" />
                </div>
            </div>
        </div>
        <br />
        <br />
        <br />
        <h2>Category</h2>
        <hr />
        <div class="panel panel-default">
            <div class="panel-heading">All Size</div>
            <asp:Repeater ID="rptrCategory" runat="server">
                <HeaderTemplate>
                     <table class="table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Category</th>
                      
                    </tr>
                </thead>

                <tbody>
                </HeaderTemplate>

                <ItemTemplate>
                     <tr>
                        <th><%# Eval("CatID") %></th>
                        <td><%# Eval("CatName") %></td>
                    
                    </tr>
                </ItemTemplate>

                <FooterTemplate>
                       
                </tbody>
            </table>
                </FooterTemplate>

            </asp:Repeater>
           
                
        </div>
    </div>

</asp:Content>
