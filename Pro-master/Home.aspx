

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
   
    <style type="text/css">
        .auto-style2 {
            position: absolute;
            top: 0%;
            left: -4%;
            right: 0%;
            width: 104%;
            height: 25%;
            background-color: lightgoldenrodyellow;
        }
        .auto-style3 {
            position: absolute;
            top: 28%;
            left: 24%;
            width: 58%;
            height: 78%;
            background-color: white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2"><h1>Happy GYM System <br/>Banjara hills,Hyderabad 500055</h1></div>
        <div class="LeftP"><h2>Our Slide Show</h2>
            
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
        <div class="rightP">
            <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome</h1>
         <asp:Image ID="Image5" runat="server" BorderColor="#000099" BorderStyle="Solid" BorderWidth="2px" Height="200px" ImageAlign="Middle" 
                    ImageUrl="~/Images/Bg1.jpg" Width="200px" />
        </div>
        <div class="auto-style3">
            <marquee>
            <asp:Image ID="Image1" runat="server" BorderColor="#000099" BorderStyle="Solid" BorderWidth="2px" Height="200px" ImageAlign="Middle" 
                    ImageUrl="~/Images/Bg3.jpg" Width="200px" />
                  <asp:Image ID="Image2" runat="server" BorderColor="#000099" BorderStyle="Solid" BorderWidth="2px" Height="200px" ImageAlign="Middle" 
                    ImageUrl="~/Images/Bg1.jpg" Width="200px" />
                  <asp:Image ID="Image3" runat="server" BorderColor="#000099" BorderStyle="Solid" BorderWidth="2px" Height="200px" ImageAlign="Middle" 
                    ImageUrl="~/Images/Bg4.jpg" Width="200px" />
                <asp:Image ID="Image4" runat="server" BorderColor="#000099" BorderStyle="Solid" BorderWidth="2px" Height="200px" ImageAlign="Middle" 
                    ImageUrl="~/Images/Bg5.jpg" Width="200px" />
                <h2>For more details visit About, contact page </h2>
            </marquee>
        </div>
    
        <p>
            
                 <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/SignIn.aspx">Sign In</asp:HyperLink>
        </p>
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Contact.aspx">Contact</asp:HyperLink>
        <p>
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/About.aspx">About</asp:HyperLink>
                </p>
                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Feedback.aspx">Feedback</asp:HyperLink>
    
    </form>
</body>
</html>
