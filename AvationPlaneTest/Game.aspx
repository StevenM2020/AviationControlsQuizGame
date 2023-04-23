<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Game.aspx.cs" Inherits="AvationPlaneTest.Game" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<head>
    <title>Receipt</title>
    <style>

        /* Center the content on the page */
        #content {
            margin: 0 auto;
           
            padding: 100px;
            height: 406px;
        }


        /* Style the "Back to Store" button */
        .btn {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
            border: none;
            cursor: pointer;
        }
        #image {
            background-image: url(~/Background2.png);
            background-repeat: no-repeat;
            background-size: 100% 100%;
            height: 1080px;
        }
        #imageMapBox {
            background-image: url(~/ImageMapBox.png);
            background-repeat: no-repeat;
            background-size: 100% 100%;
            position: relative;
            top: 0px;
            left: -560px;

        }
        #imageMapImage {
            background-image: url(~/Control1.png);
            background-repeat: no-repeat;
            background-size: 100% 100%;
        }
        #imageb {
            margin: 0 auto;
            padding: 100px;
            height: 406px;
        }
    </style>
</head>
<body>
    <asp:Panel ID="image" runat="server" Height="1080" BackImageUrl="~/Background2.png" CssClass="image">

        <div id="content">
            <asp:ImageMap ID="imageMapImage" runat="server" ImageUrl="~/Control1.png"  CssClass="imageMapImage" Height="700px" Width="550px"></asp:ImageMap>
            <image id="imageMapBox" src="ImageMapBox.png">
            </image>
        </div> 

    </asp:Panel>
</body>
</asp:Content>

