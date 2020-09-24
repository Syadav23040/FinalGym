<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modify.aspx.cs" Inherits="WebApplication4.Modify" %>

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
          .auto-style3 {
              width: 175px;
          }
          .auto-style4 {
              width: 100%;
          }
          .auto-style6 {
              width: 235px;
          }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="6">
                         <uc1:GymUserControl1 ID="GymUserControl11" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="6"><h2>Modify Page </h2></td>
                    <marquee direction=left>
<strong>Records can be updated here</strong>
                  </marquee>
                </tr>
                <tr>
                    <td class="auto-style3">Choose Member ID</td>
                    <td>
                        <asp:DropDownList ID="ddlMId" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlMId_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="6">
                        <asp:Label ID="lblMsg" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <asp:Panel ID="pnlEmp" runat="server">
                            <table class="auto-style4">
                                <tr>
                                    <td class="auto-style6">Member ID</td>
                                    <td>
                                        <asp:Label ID="lblMId" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                               <tr>
            <td class="auto-style3">First Name</td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Last Name</td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">Email</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="auto-style3">Join Date</td>
            <td>&nbsp;&nbsp;
                <asp:TextBox ID="txtJDate" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Gender</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="rbmale" runat="server" Text="Male" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rbfemale" runat="server" Text="Female" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Mobile</td>
            <td>
                <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
    </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Date of Birth</td>
                <td>
                    <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
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
                    </td>
            </tr>
            <tr>
                <td class="auto-style3">Trainer Name</td>
                <td>
                    <asp:TextBox ID="txtTrainer" runat="server"></asp:TextBox>
                </td>
            </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </div>
        <p>
                                        <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update Record" />
                                    </p>
    </form>
</body>
</html>
