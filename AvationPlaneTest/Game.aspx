<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Game.aspx.cs" Inherits="AvationPlaneTest.Game" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <style>
        /* Set the page background color */
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
            


        #imageMapImage {
            background-image: url(~/Control1.png);
            background-repeat: no-repeat;
            background-size: 100% 100%;
            top: 0px;
            left: -560px;
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
}

</head>
<body>

    <asp:Panel ID="image" runat="server" Height="1080" BackImageUrl="~/Background2.png" CssClass="image">

        <div id="content">

            <!--image id="imageMapBox" src="ImageMapBox.png">
            </-->

            <asp:ImageMap 
                ID="imageMapImage" 
                runat="server" 
                ImageUrl="~/Control1.png"  
                CssClass="imageMapImage" 
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

        <div class="right">
        <div class="divA">
            <asp:Panel ID="pnlQ" runat="server" BackImageUrl="~/Images/PromptBox.png" CssClass="textPanelQ">
                <asp:Label ID="lblQ" runat="server" CssClass="textLabel" Text=".askhajksdhkajhsdjkasdjkaksdhakjsdkajhsdklajhsdkahskahsdjkahksdjlhaksjldhajklsdh"></asp:Label>
                
            </asp:Panel>
        </div>



        <asp:Panel ID="image" runat="server" Height ="1080" BackImageUrl="~/Background2.png" CssClass="image">

            <p>

                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                Game goes here</p>
    <p>
        <asp:Label ID="lblFind" runat="server" Text="Find:"></asp:Label>
    &nbsp;plane control</p>
    <p>
        &nbsp;</p>

    <p>
        &nbsp;

        </asp:Panel>
    
    </asp:Content>

