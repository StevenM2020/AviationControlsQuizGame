<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AvationPlaneTest._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <head>
       <title>Start Screen</title>
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
            left: 475px;
        }
        .bottomLeft {
            position: absolute;
            bottom: -30px;
            left: 150px;
        }
    .divA{
    padding: 10px;
    }
    #Label1{
       padding: 250px;
        padding-bottom: 50px;
        align-items: center;
        justify-content: center;
        position: relative;
        margin: auto;
        display: flex;
        flex-direction: column;
        width: 100%;
        height: 100%;
    }
     .divInstructions {
        padding: 10px;
        padding-bottom: 50px;
        margin: auto;
        display: flex;
        flex-direction: column;
        width: 25%;
        height: 100%;
         position: absolute;
            left: 7rem;
            top: 110%;
            transform: translateY(-50%);
        
      }
    </style>

    </head> 
    
    <body> 
        <%-- Background --%>
        <asp:Panel ID="image" runat="server" Height="1080" BackImageUrl="~/Background2.png" CssClass="image">
        <div class="content">
        <%-- Title --%>
        <asp:Panel ID="Label1"> 
        <asp:Label runat="server" Font-Size=40>Aviation Controls Quiz Game</asp:Label>
          
            <%-- Instruction box --%>
            <div class="divInstructions">
            <asp:Panel ID="pnlQ" runat="server" BackImageUrl="~/Images/PromptBox.png" CssClass="textPanelQ">
                <asp:Label ID="lblQ" runat="server" CssClass="textLabel" Text="Use the Arrow buttons below the images to change the displayed control panels, then select the desired control ont the image followed by clicking the yellow button on the right to the desired answer. "></asp:Label>
                
            </asp:Panel>
        </div>
            <%-- Start Button --%>
          <asp:imagebutton
          ID="imgbtnA2"
          runat="server"
          ImageUrl="~/Images/StartButton.png"
          OnClick="btnStart_Click"
        />
        </asp:Panel>
        </div>

        </asp:Panel>
   </body>
    
    
    
    
    

    </asp:Content>
