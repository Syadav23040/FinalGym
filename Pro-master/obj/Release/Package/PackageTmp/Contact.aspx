<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication4.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <link href="StyleSheet1.css" rel="stylesheet" />
   

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                 <tr>
        <td colspan="6"><h1>
            <marquee direction=left>
            <asp:Image ID="Image1" runat="server" CssClass="auto-style3" Height="232px" ImageUrl="~/Images/Bg3.jpg" Width="479px" />
             <asp:Image ID="Image2" runat="server" CssClass="auto-style3" Height="232px" ImageUrl="~/Images/Bg1.jpg" Width="479px" />
             <asp:Image ID="Image3" runat="server" CssClass="auto-style3" Height="232px" ImageUrl="~/Images/Bg4.jpg" Width="479px" />
            </marquee></h1></td>
           <marquee direction=left>
<strong>Feel free to contact us!!!</strong>
                  </marquee>
            
        </h1> </td>
    </tr>
                <tr>
              <h1>Contact Page</h1>
                        <p>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
                        </p></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Contact:9828373527act:9828373527</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Email:happy.123@gmail.com</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>For more details visit here&nbsp;&nbsp;&nbsp;&nbsp; https://www.fitternity.com/golds-gym-banjara-hills</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
