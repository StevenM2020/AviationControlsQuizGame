<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="AvationPlaneTest.About" %>

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
        .content {
            position: relative;
            left: 60px;
        }
   </style>
</head>
<body>

</body>

<asp:Panel ID="image" runat="server" Height="470" BackImageUrl="~/Background2.png" CssClass="image">
    <h3>About Aviation Game Test</h3>
    <p class="content"></p>
    <p class="content"></p>
    <p class="content"></p>
    <p></p>
    <p class="content">This game was created to teach and test students about the controls found in the cockpit.</p>
    <p class="content"></p>
    <p class="content">It was created for students in the Aviation Center at Pennsylvania College of Technology!</p>
    <p class="content"></p>
    <p class="content">If you have any questions or comments, feel free to contact us!</p>
</asp:Panel>

</asp:Content>