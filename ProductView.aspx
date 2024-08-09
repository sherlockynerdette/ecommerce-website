<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="Manashreefab.ProductView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 486px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />

    <div style="padding-top:50px">
        <asp:Repeater ID="rptrImage" runat="server" >
                <ItemTemplate>
        <div class="col-md-5">
            
            <div style="max-width:400px" class="thumbnail">
                  <img src="images/ProductImages/<%# Eval("PID")  %>/<%# Eval("Name")  %><%# Eval("Extention")  %>" alt="<%# Eval("Name")  %>" onerror="this.src='images/noimage.jfif'" />
               </div>
                    </ItemTemplate>
                </asp:Repeater>
            
            
        </div>
        <div class="col-md-5">
            <asp:Repeater ID="rptrdetail" runat="server"  OnItemDataBound="rptrdetail_ItemDataBound">
                <ItemTemplate>
            <div class="divDet1" style="font-family: sans-serif; border-bottom: 1px dashed #ff6a00; margin-bottom: 20px">
            <h1 class="proNameView" style="font-size: 20px; font-family: sans-serif; color: #696e80"><%#Eval("PName") %></h1>
            <span class="proOPrice"><%# Eval("PPrice") %></span>
                </div>
            <div class="divDet1" style="font-family: sans-serif; border-bottom: 1px dashed #ff6a00; margin-bottom: 20px">
                <h4 class="">Size</h4>
                <div>
                    <asp:RadioButtonList ID="rblsize" runat="server" Height="16px" RepeatDirection="Horizontal" Width="142px">
                        <asp:ListItem>S</asp:ListItem>
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>L</asp:ListItem>
                    </asp:RadioButtonList>
                    
                </div>
                     
                
                
                <asp:Button ID="BtnAddtoCart" CssClass="mainButton" runat="server" Text="Add to Cart" BackColor="#AC53A4" BorderColor="#AC53A4" BorderWidth="1px" Font-Names="Sylfaen" Font-Size="Medium" OnClick="BtnAddtoCart_Click" />
                <asp:Label ID="lblError" CssClass="textdanger" runat="server" ForeColor="#FD0000"></asp:Label>            
            
            </div>

           
        
            <div class="divDet1" style="font-family: sans-serif; border-bottom: 1px dashed #ff6a00; margin-bottom: 20px">
            <h4 class="h5size"><b>Description</b></h4>
                <p><%#Eval("PProductDetails") %></p>
                
                <h4 class="">Material</h4>
                <div>
                    <asp:RadioButtonList ID="rblMaterial" runat="server" Height="16px" RepeatDirection="Horizontal" Width="142px">
                        <asp:ListItem>S</asp:ListItem>
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>L</asp:ListItem>
                    </asp:RadioButtonList>
                    
                </div>
            </div>
            <div class="h5size">
                <p><%#((int)Eval("COD")==1)?"Cash on Delivery":"" %></p>
                <p><%#((int)Eval("30DayRet")==1)?"30 Days return":"" %></p>
            </div>

                    <asp:HiddenField ID="hfCatId" runat="server" value='<%# Eval("PCategory") %>'/>
                       <asp:HiddenField ID="hsubID" runat="server" value='<%# Eval("PSubCat") %>'/>

                    </ItemTemplate>
                </asp:Repeater>
    </div>
        </div>

</asp:Content>
