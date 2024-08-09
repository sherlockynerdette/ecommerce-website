<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Manashreefab.ViewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <h3>Welcome to view all products</h3>

    <div class="row" Style="padding-top:50px">
        <asp:Repeater ID="rptrProduct" runat="server">
            <ItemTemplate>
        <div class="col-sm-col-3 col-md-3">
            <a href="ProductView.aspx?PID=<%# Eval("PID")  %>" style="text-decoration:none;">
            <div class="thumbnail">
                <img src="images/ProductImages/<%# Eval("PID")  %>/<%# Eval("Name")  %><%# Eval("Extention")  %>" alt="<%# Eval("ImageName")  %>" />
                <div class="caption">
                    <div class="proName" style="font-family: sans-serif; font-size: 15px"><%# Eval("PName")  %></div>
                    <div class="ProPrice" style="font-family: sans-serif; font-size: 17px; font-weight: 600; "><span class="proOgPrice" style="font-family: sans-serif; font-size: 14px; font-weight: 400; color: gray"><%# Eval("PPrice")  %></span></div>
                </div>
                </div>
                

        </div>
                </a>
                </ItemTemplate>
            </asp:Repeater>
    </div>
</asp:Content>
