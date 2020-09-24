<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signout.aspx.cs" Inherits="WebApplication4.signout" %>

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
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="3"><h1>Sign Out Page</h1>
                       <br />
                        <h2>Thank you Visit Again</h2>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp; You have signed out from the website to sign In again&nbsp;
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Click Here</asp:HyperLink>
                    </td>
                </tr>
                 <tr>
       
        <td colspan="6"><h1>

           <marquee direction=left>
            <asp:Image ID="Image1" runat="server" CssClass="auto-style3" Height="150px" ImageUrl="~/Images/Bg3.jpg" Width="300px" />
             <asp:Image ID="Image2" runat="server" CssClass="auto-style3" Height="150px" ImageUrl="~/Images/Bg1.jpg" Width="300px" />
             <asp:Image ID="Image3" runat="server" CssClass="auto-style3" Height="150px" ImageUrl="~/Images/Bg4.jpg" Width="300px" />
                <asp:Image ID="Image4" runat="server" CssClass="auto-style3" Height="150px" ImageUrl="~/Images/Bg5.jpg" Width="300px" />
           </marquee></h1></td>
            
                    
            </h1></td>
    </tr>
                
            </table>
        </div>
    </form>
</body>
</html>

