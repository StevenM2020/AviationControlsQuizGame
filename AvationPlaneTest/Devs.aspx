<%@ Page Title="Devs" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Devs.aspx.cs" Inherits="AvationPlaneTest.Devs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<head>
    <title>Devs</title>
    <style>
        #image {
            background-image: url(~/Background2.png);
            background-repeat: no-repeat;
            background-size: 70% 70%;
            height: 800px;
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
        .link {
            margin-left: 60px;
            color: white;
        }
    </style>
</head>
<body>
   
</body>

    <asp:Panel ID="image" runat="server" Height="470" BackImageUrl="~/Background2.png" CssClass="image">
        <h3 style="margin-left: 0px;">About The Developers</h3>
    
        <p style="margin-left: 60px;"> 
            This learning game was developed by <b>H.E.A.D.S.</b>
        </p>

        <p style="margin-left: 60px;">
            <b>Ethan</b>
        </p>
        <a href="https://www.linkedin.com/in/ethan-lehutsky-332b301b9" class="link">LinkedIn</a>
        <p></p>
        <p style="margin-left: 60px;">
            <b>Andy</b>
        </p>
        <a href="https://ajj12.myportfolio.com" class="link">Portfolio</a>
        <p></p>
        <a href="https://www.linkedin.com/in/andrew-jackowski-0510241a7/" class="link">LinkedIn</a>
        <p></p>
        <p style="margin-left: 60px;">
            <b>David</b>
        </p>
        <a href="https://www.linkedin.com/in/david-waldron-021a951b5" class="link">LinkedIn</a>
        <p></p>
        <p style="margin-left: 60px;">
            <b>Steven</b>
          <p></p>
        <a href="https://stevenmotz.myportfolio.com/work" class="link">Portfolio</a>
        </p>
        <a href="https://www.linkedin.com/in/steven-motz-972a99215/" class="link">LinkedIn</a>
        <p></p>
        <b style="margin-left: 60px;">Hunter</b>
        <p></p>
        <a href="https://hunterhawkman.wixsite.com/hunterhockman" class="link">Portfolio</a>
        <p></p>
        <a href="https://www.linkedin.com/in/hunter-hockman-7559141b4/" class="link">LinkedIn</a>
        <p></p>
    </asp:Panel>
</asp:Content>