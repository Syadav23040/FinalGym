<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Display.aspx.cs" Inherits="WebApplication4.Display" %>

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
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="table-responsive">
            <table class="table">
                <tr>
                    <td>
                         <uc1:GymUserControl1 ID="GymUserControl11" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td><h2>Display Page</h2></td>
                    <marquee direction=left>
<strong>All Details are found here!!!</strong>
                  </marquee>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="gvMember" runat="server">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

