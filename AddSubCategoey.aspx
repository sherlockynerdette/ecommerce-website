<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddSubCategoey.aspx.cs" Inherits="Manashreefab.AddSubCategoey" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div clss="container">
        <div class="form-horizontal">
            <h2>Add Sub Category</h2>
            <hr />

            <div class="form-group">
                <asp:Label ID="Label2" CssClass="col-md-2 control-label" runat="server" Text="Main Cateogry ID"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddl1" CssClass="form-control" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="Enter Main Category Id" ControlToValidate="ddl1" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="Sub Category Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtSubCategory" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorSubCategory" CssClass="text-danger" runat="server" ErrorMessage="Enter SubCategory" ControlToValidate="txtSubCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-btn-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAddSubCategory" CssClass="btn btn-success" runat="server" Text="Add" OnClick="btnAddSubCategory_Click" />
                </div>
            </div>
        </div>

         <br />
        <br />
        <br />
        <h2> Sub Category</h2>
        <hr />
        <div class="panel panel-default">
            <div class="panel-heading">All Size</div>
            <asp:Repeater ID="rptrsubCategory" runat="server">
                <HeaderTemplate>
                     <table class="table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th> Sub Category</th>
                        <th>Main Category Name</th>
                       
                    </tr>
                </thead>

                <tbody>
                </HeaderTemplate>

                <ItemTemplate>
                     <tr>
                        <th><%# Eval("SubCatID") %></th>
                        <td><%# Eval("SubCatName") %></td>
                         <td><%# Eval("CatName") %></td>
                       
                </ItemTemplate>

                <FooterTemplate>
                       
                </tbody>
            </table>
                </FooterTemplate>

            </asp:Repeater>
           
                
        </div>
    </div>
</asp:Content>
