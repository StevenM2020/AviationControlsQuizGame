<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Game.aspx.cs" Inherits="AvationPlaneTest.Game" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<head>
    <title>Game</title>
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
.textPanel {
  width: 50%;
  height: auto;
  background-repeat: no-repeat;
  background-size: 100% 100%;
  padding: 20px;
}
.textPanelQ {
  width: 75%;
  height: auto;
  background-repeat: no-repeat;
  background-size: 100% 100%;
  padding: 20px;
}
/* Set the text label properties */
.textLabel {
  font-family: Arial;
  font-size: 16px;
  color: white;
  word-wrap: break-word;
}
.divAbtn{
    display: flex;
    flex-direction: row;
}

.right {
            position: absolute;
            right: -50px;
            top: 200px;
            width: 50%;
        }
.divA{
    padding: 10px;
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

        <div class="right">
        <div class="divA">
            <asp:Panel ID="pnlQ" runat="server" BackImageUrl="~/Images/PromptBox.png" CssClass="textPanelQ">
                <asp:Label ID="lblQ" runat="server" CssClass="textLabel" Text=".askhajksdhkajhsdjkasdjkaksdhakjsdkajhsdklajhsdkahskahsdjkahksdjlhaksjldhajklsdh"></asp:Label>
                
            </asp:Panel>
        </div>


         
        <div class="divA">
            <div class="divAbtn">
            <asp:Panel ID="pnlA1" runat="server" BackImageUrl="~/Images/PromptBox.png" CssClass="textPanel">
                <asp:Label ID="lblA1" runat="server" CssClass="textLabel" Text=".askhajksdhkajhsdjkasdjkaksdhakjsdkajhsdklajhsdkahskahsdjkahksdjlhaksjldhajklsdh"></asp:Label>
            </asp:Panel>
            <asp:imagebutton ID="imgbtnA1" runat="server" ImageUrl="~/Images/ChoiceButtonOff.png" OnClick="imgbtnA1_Click" />
        </div>
        </div>
        <div class="divA">
            <div class="divAbtn">
            <asp:Panel ID="pnlA2" runat="server" BackImageUrl="~/Images/PromptBox.png" CssClass="textPanel">
                <asp:Label ID="lblA2" runat="server" CssClass="textLabel" Text="askhajksdhkajhsdjkasdjkaksdhakjsdkajhsdklajhsdkahskahsdjkahksdjlhaksjldhajklsdh"></asp:Label>
            </asp:Panel>
            <asp:imagebutton ID="imgbtnA2" runat="server" ImageUrl="~/Images/ChoiceButtonOff.png" OnClick="imgbtnA2_Click" />
        </div>
        </div>
        <div class="divA">
            <div class="divAbtn">
            <asp:Panel ID="pnlA3" runat="server" BackImageUrl="~/Images/PromptBox.png" CssClass="textPanel">
                <asp:Label ID="lblA3" runat="server" CssClass="textLabel" Text="askhajksdhkajhsdjkasdjkaksdhakjsdkajhsdklajhsdkahskahsdjkahksdjlhaksjldhajklsdh"></asp:Label>
            </asp:Panel>
            <asp:imagebutton ID="imgbtnA3" runat="server" ImageUrl="~/Images/ChoiceButtonOff.png" OnClick="imgbtnA3_Click" />
        </div>
        </div>
        <div class="divA">
            <div class="divAbtn">
            <asp:Panel ID="pnlA4" runat="server" BackImageUrl="~/Images/PromptBox.png" CssClass="textPanel">
                <asp:Label ID="lblA4" runat="server" CssClass="textLabel" Text="askhajksdhkajhsdjkasdjkaksdhakjsdkajhsdklajhsdkahskahsdjkahksdjlhaksjldhajklsdh"></asp:Label>
            </asp:Panel>
            <asp:imagebutton ID="imgbtnA4" runat="server" ImageUrl="~/Images/ChoiceButtonOff.png" OnClick="imgbtnA4_Click" />
        </div>

        <asp:imagebutton ID="imgbtnSubmit" runat="server" ImageUrl="~/Images/Submit.png" OnClick="imgbtnSubmit_Click" />
            </div>


        <div class="divA">
            <div class="divAbtn">
            <asp:Panel ID="pnlConsole" runat="server" BackImageUrl="~/Images/PromptBox.png" CssClass="textPanel">
                <asp:Label ID="lblConsole" runat="server" CssClass="textLabel" Text="Console:"></asp:Label>
            </asp:Panel>
        </div>

        </div>



    </asp:Panel>
</body>
</asp:Content>

