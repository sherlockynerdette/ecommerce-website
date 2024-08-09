<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Manashreefab.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="from-horizontal">
            <h2> <center>Add Product</center></h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Product Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtProductName" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
            </div>
            <br />
            <br />            
            <div class="form-group">
                <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Category"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"></asp:DropDownList>
                    
                </div>
            </div>

             <br />           
            <div class="form-group">
                <asp:Label ID="Label10" runat="server" CssClass="col-md-2 control-label" Text="SubCategory"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlSubCat" CssClass="form-control" runat="server"></asp:DropDownList>

                </div>
            </div>

             <br />       
            <div class="form-group">
                <asp:Label ID="Label11" runat="server" CssClass="col-md-2 control-label" Text="Materials"></asp:Label>
                <div class="col-md-3">
                     <asp:DropDownList ID="ddlMaterials" CssClass="form-control" runat="server"></asp:DropDownList>


                </div>
            </div>
              
            <br />

             <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Price"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
            </div>
           
            <br />
             <div class="form-group">
                <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Size"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlSize" CssClass="form-control" runat="server"></asp:DropDownList>

                </div>
            </div>
            <br />
 
            
             <div class="form-group">
                <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text="Product details"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPDetails" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
            </div>
            <br />
            <br />
            <br />
             <div class="form-group">
                <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg01" CssClass="form-control" runat="server" />
                </div>
            </div>
            <br />
            <br />
            <div class="form-group">
                <asp:Label ID="Label8" runat="server" CssClass="col-md-2 control-label" Text="Cash On Delivery"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="cbCOD" runat="server" />
                </div>
            </div>
            <br />
            <div class="form-group">
                <asp:Label ID="Label9" runat="server" CssClass="col-md-2 control-label" Text="30 days return"></asp:Label>
                <div class="col-md-3">
                  <asp:CheckBox ID="cb30ret" runat="server" />
                </div>
            </div>
            <br />
     
            <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="BtnAdd" CssClass ="btn btn-success " runat="server" Text="Add Product&raquo;" OnClick="BtnAdd_Click"  />
                       </div>
                </div>
                

        </div>

    </div>
</asp:Content>
