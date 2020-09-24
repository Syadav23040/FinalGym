<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="WebApplication4.Delete" %>

<%@ Register src="GymUserControl1.ascx" tagname="GymUserControl1" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <link href="StyleSheet1.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style3 {
            width: 344px;
        }
        .auto-style4 {
            width: 330px;
        }
        .auto-style6 {
            height: 14px;
        }
        .auto-style7 {
            height: 14px;
            width: 190px;
        }
        .auto-style8 {
            width: 302px;
        }
        .auto-style9 {
            width: 552px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:GymUserControl1 ID="GymUserControl11" runat="server" />
        </div>
    <table class="auto-style1">
        <tr>
            <td colspan="2"><h1 class="auto-style9">Delete Page</h1></td>
        </tr>
     
        <tr>
                    <td class="auto-style3">Choose Member ID</td>
                    <td class="auto-style8">
                     
                        <asp:DropDownList ID="ddlMId" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlEmpId_SelectedIndexChanged">
              
                        </asp:DropDownList>
                    </td>
                                    <td class="auto-style7">&nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
    </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style6" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lbl" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
    </body>
</html>
