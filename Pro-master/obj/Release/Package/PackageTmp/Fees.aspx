<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fees.aspx.cs" Inherits="WebApplication4.Fees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <link href="../StyleSheet1.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style2 {
            width: 1204px;
        }
        .auto-style3 {
            width: 406px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="table-responsive">
            <table class="table">
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h1> Fees Details Page&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
                        </h1></td>
                    <td>&nbsp;</td>
                </tr>
               <tr>
       
        <td colspan="6"><h1>
            <marquee direction="left">
            <asp:Image ID="Image1" runat="server" CssClass="auto-style2" Height="150px" ImageUrl="~/Images/Fees.jpeg" Width="300px" />
             <asp:Image ID="Image2" runat="server" CssClass="auto-style3" Height="150px" ImageUrl="~/Images/Bg3.jpg" Width="300px" />
             <asp:Image ID="Image3" runat="server" CssClass="auto-style3" Height="150px" ImageUrl="~/Images/Bg1.jpg" Width="300px" />
             <asp:Image ID="Image4" runat="server" CssClass="auto-style3" Height="150px" ImageUrl="~/Images/Bg4.jpg" Width="300px" />
             <asp:Image ID="Image5" runat="server" CssClass="auto-style3" Height="150px" ImageUrl="~/Images/Bg5.jpg" Width="300px" />
            </marquee></h1></td>
            </marquee>
            </h1></td>
    </tr>
            </table>
        </div>
        <table class="w-100">
            <tr>
                <marquee direction=left>
<strong>Last date for fee payment is 20/10/2020!!!</strong>
                  </marquee>
                <td class="auto-style3">Fees ID</td>
                <td>
                    <asp:DropDownList ID="ddlID" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Amount</td>
                <td>
                    <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmitt" runat="server" OnClick="btnSubmitt_Click" Text="Submitt" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Label ID="lbl" runat="server"></asp:Label>
    </form>
</body>
</html>
