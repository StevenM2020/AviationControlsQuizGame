<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Game.aspx.cs" Inherits="AvationPlaneTest.Game" %>


<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

<head>
    <title>Game</title>
    <style>

        /* Center the content on the page */
        #content {
            margin: 0 auto;
           
            padding: 100px;
            height: 406px;
        }
        #content2 {
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
        }
        .imageMapImage1 {
            background-repeat: no-repeat;
            background-size: 100% 100%;
            top: 100px;
            left: 175px;
            position: relative;
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
.bottomRight {
            position: absolute;
            bottom: -30px;
            left:675px;
        }
.bottomLeft {
            position: absolute;
            bottom: -30px;
            left: 150px;
        }
.divA{
    padding: 10px;
}
    </style>
</head>
<body>
    <asp:Panel ID="image" runat="server" Height="1080" BackImageUrl="~/Background2.png" CssClass="image">
        
        <div id="content"  runat="server">

                <asp:ImageMap 
                ID="imageMapImage1" 
                runat="server" 
                ImageUrl="~/Control1.png"  
                CssClass="imageMapImage1" 
                Height="700px" 
                Width="550px" 
                OnClick="saveButtonPress">

                <asp:RectangleHotSpot          
                    top="59"
                    left="364"
                    bottom="92"
                    right="405"
                    hotspotmode="PostBack"
                    postbackvalue="0">
                </asp:RectangleHotSpot> 

                <asp:RectangleHotSpot          
                    top="44"
                    left="63"
                    bottom="106"
                    right="110"
                    hotspotmode="PostBack"
                    postbackvalue="1">
                </asp:RectangleHotSpot> 

                <asp:RectangleHotSpot          
                    top="256"
                    left="245"
                    bottom="309"
                    right="296"
                    hotspotmode="PostBack"
                    postbackvalue="2">
                </asp:RectangleHotSpot> 

                <asp:RectangleHotSpot          
                    top="158"
                    left="424"
                    bottom="216"
                    right="535"
                    hotspotmode="PostBack"
                    postbackvalue="3">
                </asp:RectangleHotSpot> 

                <asp:RectangleHotSpot          
                    top="220"
                    left="422"
                    bottom="268"
                    right="533"
                    hotspotmode="PostBack"
                    postbackvalue="4">
                </asp:RectangleHotSpot> 

            </asp:ImageMap>     
        </div> 

        <div id="content2"  runat="server">
            <asp:ImageMap 
                ID="imageMapImage2" 
                runat="server" 
                ImageUrl="~/Control2.png"  
                CssClass="imageMapImage1" 
                Height="700px" 
                Width="550px" 
                OnClick="saveButtonPress">

                <asp:RectangleHotSpot          
                    top="25"
                    left="373"
                    bottom="90"
                    right="606"
                    hotspotmode="PostBack"
                    postbackvalue="5">
                </asp:RectangleHotSpot> 

                <asp:RectangleHotSpot          
                    top="68"
                    left="1"
                    bottom="149"
                    right="148"
                    hotspotmode="PostBack"
                    postbackvalue="6">
                </asp:RectangleHotSpot> 

                <asp:RectangleHotSpot          
                    top="619"
                    left="264"
                    bottom="641"
                    right="298"
                    hotspotmode="PostBack"
                    postbackvalue="7">
                </asp:RectangleHotSpot> 

                <asp:RectangleHotSpot          
                    top="617"
                    left="463"
                    bottom="659"
                    right="508"
                    hotspotmode="PostBack"
                    postbackvalue="8">
                </asp:RectangleHotSpot> 

                <asp:RectangleHotSpot          
                    top="330"
                    left="227"
                    bottom="361"
                    right="258"
                    hotspotmode="PostBack"
                    postbackvalue="9">
                </asp:RectangleHotSpot> 

            </asp:ImageMap>     
        </div>

        <div class="bottomRight">
            <asp:imagebutton ID="overheadButton" runat="server" ImageUrl="~/Images/ChoiceButtonOn.png" OnClick= "changeToOverhead"/>
        </div>

        <div class="bottomLeft">
            <asp:imagebutton ID="secondOfficerButton" runat="server" ImageUrl="~/Images/ChoiceButtonOff.png" OnClick= "changeToOfficer"/>
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
            </div>


    </asp:Panel>
</body>
</asp:Content>

