<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddSize.aspx.cs" Inherits="Manashreefab.AddSize" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div clss="container">
        <div class="form-horizontal">
            <h2>Add Size</h2>
            <hr />

            <div class="form-group">
                <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="Size"></asp:Label>
                <div class="col-md-3">
                   <asp:TextBox ID="txtSize" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="Enter Size" ControlToValidate="txtSize" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-btn-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnAddSize" CssClass="btn btn-success" runat="server" Text="Add Size" OnClick="btnAddSize_Click"  />
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
            <asp:Repeater ID="rptrSize" runat="server">
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
                        <th><%# Eval("SizeID") %></th>
                        <td><%# Eval("SizeName") %></td>
                        
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
