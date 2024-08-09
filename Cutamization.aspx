<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Cutamization.aspx.cs" Inherits="Manashreefab.Cutamization" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container">
        <div class="from-horizontal">
            <br /><br />
            <h3> <center>Custamiztaion</center></h3>
            <hr />
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Product Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtProductName" CssClass="form-control" runat="server"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtProductName" ErrorMessage="Enter Product Name" ForeColor="Red"></asp:RequiredFieldValidator>

                </div>
            </div>
            <br />
            <br />
            <br />
            <br />            
            <div class="form-group">
                <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Category"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server" AutoPostBack="true" ></asp:DropDownList>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlCategory" ErrorMessage="Enter Product Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                </div>
            </div>
            <br />
            <br />
             <br />       
            <div class="form-group">
                <asp:Label ID="Label11" runat="server" CssClass="col-md-2 control-label" Text="Materials"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtMaterial" CssClass="form-control" runat="server"></asp:TextBox>


                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMaterial" ErrorMessage="Enter Product Name" ForeColor="Red"></asp:RequiredFieldValidator>


                </div>
            </div>
            <br />
            <br />
            <br />       
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Size"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtsize" CssClass="form-control" runat="server"></asp:TextBox>


                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtsize" ErrorMessage="Enter Product Name" ForeColor="Red"></asp:RequiredFieldValidator>


                </div>
            </div>
            <br />
             <br />  
            <br />
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Colour"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtcolour" CssClass="form-control" runat="server"></asp:TextBox>


                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcolour" ErrorMessage="Enter Product Name" ForeColor="Red"></asp:RequiredFieldValidator>


                </div>
            </div>
            <br />

            <br />   
            <br />
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Texture"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txttexture" CssClass="form-control" runat="server"></asp:TextBox>


                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txttexture" ErrorMessage="Enter Product Name" ForeColor="Red"></asp:RequiredFieldValidator>


                </div>
            </div>
            <br />
            <br />
            <br />
             <div class="form-btn-group">
                <div class="col-md-2"></div>
                <div class="col-md-1">
                    <asp:Button ID="btnAddCategory" CssClass="btn btn-success" runat="server" Text="Custamize" OnClick="btnAddCategory_Click"  />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtProductName" ErrorMessage="All Field are Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            </div>
           </div>
</asp:Content>
