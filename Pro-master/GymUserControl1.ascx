<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GymUserControl1.ascx.cs" Inherits="WebApplication4.GymUserControl1" %>

<style type="text/css">

    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        margin-right: 0px;
        margin-left: 99px;
    }
</style>
<link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <link href="StyleSheet1.css" rel="stylesheet" />


<table class="auto-style1">
   
    <tr>
       
        <td colspan="6"><h1>

           <marquee direction=left>
            <asp:Image ID="Image1" runat="server" CssClass="auto-style3" Height="150px" ImageUrl="~/Images/Bg3.jpg" Width="300px" />
             <asp:Image ID="Image2" runat="server" CssClass="auto-style3" Height="150px" ImageUrl="~/Images/Bg1.jpg" Width="300px" />
             <asp:Image ID="Image3" runat="server" CssClass="auto-style3" Height="150px" ImageUrl="~/Images/Bg4.jpg" Width="300px" />
                <asp:Image ID="Image4" runat="server" CssClass="auto-style3" Height="150px" ImageUrl="~/Images/Bg5.jpg" Width="300px" /></marquee></h1></td>
            
                    
            </h1></td>
    </tr>
    <tr>
        <td colGYM Management System</h1>
            <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/signout.aspx">Signout</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
        </td>
        <td>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Display.aspx">Display</asp:HyperLink>
        </td>
        <td>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Search.aspx">Search</asp:HyperLink>
        </td>
        <td>
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Modify.aspx">Modify</asp:HyperLink>
        </td>
        <td>
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Equipments.aspx">Eqipments</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Delete.aspx">Delete</asp:HyperLink>
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;
            &nbsp;&nbsp;<asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Trainer.aspx">Trainer</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Fees.aspx">Fees</asp:HyperLink>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
