<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddMaterial.aspx.cs" Inherits="Manashreefab.AddMaterial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div clss="container">
        <div class="form-horizontal">
            <h2>Add Material</h2>
            <hr />

            <div class="form-group">
                <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="Material Name"></asp:Label>
                <div class="col-md-3">
                   <asp:TextBox ID="txtMaterial" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="Enter Material Name" ControlToValidate="txtMaterial" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-btn-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAddMaterial" CssClass="btn btn-success" runat="server" Text="Add Materail" OnClick="btnAddMaterial_Click"  />
                </div>
            </div>
        </div>

        <br />
        <br />
        <br />
        <h2> Size</h2>
        <hr />
        <div class="panel panel-default">
            <div class="panel-heading">All Size</div>
            <asp:Repeater ID="rptrMaterial" runat="server">
                <HeaderTemplate>
                     <table class="table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th> Size</th>
                      
                    </tr>
                </thead>

                <tbody>
                </HeaderTemplate>

                <ItemTemplate>
                     <tr>
                        <th><%# Eval("MaterialID") %></th>
                        <td><%# Eval("MaterialName") %></td>
                       
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
