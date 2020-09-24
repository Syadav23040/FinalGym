<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Equipments.aspx.cs" Inherits="WebApplication4.Equipments" %>

<%@ Register Src="~/GymUserControl1.ascx" TagPrefix="uc1" TagName="GymUserControl1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../StyleSheet1.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style3 {
            width: 271px;
        }
    </style>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <link href="../StyleSheet1.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <uc1:GymUserControl1 runat="server" ID="GymUserControl1" />
        </div>
    <table class="table">
        <tr>
            <td colspan="2"><h1>GYM Equipments Page</h1></td>
            <marquee direction=left>
<strong>Equipments should be handled carefully!!!</strong>
                  </marquee>
        </tr>
        <tr>
            <td class="auto-style3">Equipment Name</td>
            <td>
                <asp:TextBox ID="txtEName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Quantity</td>
            <td>
                <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbl" runat="server"></asp:Label>
            </td>
        </tr>
        
    </table>
    </form>
    </body>
</html>
