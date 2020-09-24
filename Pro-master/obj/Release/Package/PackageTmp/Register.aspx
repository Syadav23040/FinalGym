<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication4.Register" %>

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
            width: 394px;
        }
        .auto-style4 {
            margin-left: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:GymUserControl1 ID="GymUserControl11" runat="server" />
        <div class="container">
        </div>
    <table class="table">
        <tr>
            <marquee direction=left>
<strong>Registrations are open till November!!!!!</strong>
            </marquee>
            <td colspan="2"><h1>Welcome Register Here</h1></td>
        </tr>
        <tr>
            <td class="auto-style3">First Name</td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" Display="None" ErrorMessage="Enter First Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Last Name</td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" Display="None" ErrorMessage="Enter Last Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Email</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="None" ErrorMessage="Enter Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Join Date</td>
            <td>
                <asp:TextBox ID="txtJDate" runat="server" CssClass="auto-style4" Width="256px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Gender</td>
            <td>
                <asp:RadioButton ID="rbmale" runat="server" Text="Male" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rbFemale" runat="server" Text="Female" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td class="auto-style3">Mobile</td>
            <td>
                <asp:TextBox ID="txtContact" runat="server" Width="253px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtContact" Display="None" ErrorMessage="Enter contact" ValidationExpression="[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]"></asp:RegularExpressionValidator>
            </td>
        </tr>
    </table>
        <table class="table">
            <tr>
                <td class="auto-style3">Date of Birth</td>
                <td>
                    <asp:TextBox ID="txtdob" runat="server" Width="255px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Membership Type</td>
                <td>
                    <asp:DropDownList ID="ddlMembershiptype" runat="server">
                        <asp:ListItem>Gold</asp:ListItem>
                        <asp:ListItem>Silver</asp:ListItem>
                        <asp:ListItem>Platinum</asp:ListItem>
                        <asp:ListItem>Bronze</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Preferred Timming</td>
                <td>
                    <asp:DropDownList ID="ddltime" runat="server">
                        <asp:ListItem>6AM-8AM</asp:ListItem>
                        <asp:ListItem>10AM-12PM</asp:ListItem>
                        <asp:ListItem>3PM-4PM</asp:ListItem>
                        <asp:ListItem>5PM-6PM</asp:ListItem>
                        <asp:ListItem>8PM-10PM</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddltime" Display="None" ErrorMessage="enter time"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Trainer Name</td>
                <td>
                    <asp:TextBox ID="txtTrainer" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
    </body>
</html>
