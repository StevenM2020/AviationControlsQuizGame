<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="AvationPlaneTest.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <head>
    <title>Contact Us</title>
    <style>
        #image {
            background-image: url(~/Background2.png);
            background-repeat: no-repeat;
            background-size: 70% 70%;
            height: 800px;
            color: white;
        }

        #imageMapBox {
            background-image: url(~/ImageMapBox.png);
            background-repeat: no-repeat;
            background-size: 70% 70%;
            position: relative;
            top: 0px;
            left: 560px;

        }
        #imageMapImage {
            background-image: url(~/Control1.png);
            background-repeat: no-repeat;
            background-size: 80% 80%;
        }
        #imageb {
            margin: 0 auto;
            padding: 01px;
            height: 106px;
        }
        body {
            color: white;
        }
        a {
            color: white;
        }
        .address {
            padding-left: 60px;
        }
    </style>
</head>
<body>
   
</body>

<asp:Panel ID="image" runat="server" Height="470" BackImageUrl="~/Background2.png" CssClass="image">
    <h2><%: Title %>.</h2>

    <address class="address">
        1 College Ave,<br />
        Williamsport, PA 17701<br />
        <abbr title="Phone">P:</abbr>
        111-111-1111
    </address>

    <address class="address">
        <strong>Dev Team:</strong>   <a href="h.e.a.d.s.studio3@gmail.com">h.e.a.d.s.studio3@gmail.com</a><br />
    </address>
</asp:Panel>
</asp:Content>