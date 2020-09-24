<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication4.About" %>

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
        .auto-style2 {
            height: 76px;
        }
        .auto-style3 {
            width: 1206px;
            height: 57px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td><h1>About Page</h1></td>
                </tr>
                <tr>
                    <td><h2>HAppy GYM CLUB</h2></td>
                </tr>
                <tr>
                    <td>&nbsp;Weekend Batches are also available&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;Our branches are in&nbsp; Banjara hills,Ameerpet,Lingampally,Kukatpally</td>
                </tr>
                <tr>
                    <td>We have experienced trainers&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <marquee direction=left>
            <asp:Image ID="Image2" runat="server" CssClass="auto-style3" Height="232px" ImageUrl="~/Images/Bg3.jpg" Width="479px" />
             <asp:Image ID="Image3" runat="server" CssClass="auto-style3" Height="232px" ImageUrl="~/Images/Bg1.jpg" Width="479px" />
             <asp:Image ID="Image4" runat="server" CssClass="auto-style3" Height="232px" ImageUrl="~/Images/Bg4.jpg" Width="479px" />
            </marquee></h1></td>
                    </td>
                </tr>
               
                    
                
            </table>
        </div>
    </form>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2"><i aria-hidden="true" class="fa fa-map-marker" style="box-sizing: border-box; outline: none; display: inline-block; speak: none; font-style: normal; font-weight: 400; font-variant: normal; text-transform: none; line-height: 1; -webkit-font-smoothing: antialiased; font-family: fontawesome !important; color: rgb(255, 51, 0); font-size: 16px; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;"></i>
                <span class="vendor-place" style="box-sizing: border-box; outline: none; color: rgb(51, 51, 51); font-family: Montserrat, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;"><span>&nbsp;</span>Begumpet</span><span style="box-sizing: border-box; outline: none; color: rgb(51, 51, 51); font-family: Montserrat, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">&nbsp;&nbsp;|&nbsp;&nbsp;</span><a class="mapModal" style="box-sizing: border-box; outline: none; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); text-decoration: none; cursor: pointer; font-family: Montserrat, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;" value="/map/landingmap?city=hyderabad&amp;fitnesstype=gym&amp;key=fitness-time-begumpet"><i aria-hidden="true" class="fa fa-map-o" style="box-sizing: border-box; outline: none; display: inline-block; speak: none; font-style: normal; font-weight: normal; font-variant: normal; text-transform: none; line-height: 1; -webkit-font-smoothing: antialiased; font-family: fontawesome !important; color: rgb(255, 51, 0);"></i><span>&nbsp;</span>View 
                on map</a><div class="auto-style3" style="box-sizing: border-box; outline: none; color: rgb(120, 120, 120); margin-top: 10px; font-family: Montserrat, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
                    31/2/2RT, Street No.5, Prakash Nagar, Near Water Tank, Begumpet, Hyderabad - 500016<br />
                    Street 5, Suraram colony,Ameerpet</div>
            </td>
            <td class="auto-style2"></td>
        </tr>
         <tr>
        <td colspan="6"><h1>
            
            <marquee direction=left>
<strong>Visit your nearest branch today!!!!!</strong>
                  </marquee>
        
        </h1></td>
    </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</body>
</html>
