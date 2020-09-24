<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="WebApplication4.SignIn" %>

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
            margin-top: 11;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
       <table class="auto-style1">
        <tr>
            <marquee direction=left>
<strong>Welcome to Sign In Page</strong>
                  </marquee>
             <asp:Image ID="Image5" runat="server" BorderColor="#000099" BorderStyle="Solid" BorderWidth="2px" Height="200px" ImageAlign="Middle" 
                    ImageUrl="~/Images/Bg5.jpg" Width="200px" />
            <td colspan="3"><h2>Sign In</h2></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
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
           <marquee direction=left>
<strong>Feel free to contact us!!!</strong>
                  </marquee>
            
        </h1> </td>
    </tr>
        <tr>
            <td class="auto-style4">User Name</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="Insert User Name " ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">User Password</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtUserPwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUserPwd" ErrorMessage="Insert Password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="btnSignIn" runat="server" OnClick="btnSignIn_Click" Text="SignIn" CssClass="auto-style1" Height="53px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
