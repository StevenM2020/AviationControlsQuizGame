<%-- Script:    Results Design 
     Authors:   Steven, David
     Date:      5/4/2023 --%> 
<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
CodeBehind="Results.aspx.cs" Inherits="AvationPlaneTest.Results" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <head>
    <title>Results</title>
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
        background-color: #4caf50;
        color: white;
        font-size: 16px;
        border: none;
        cursor: pointer;
      }
      /* background image */
      #image {
        background-image: url(~/Background2.png);
        background-repeat: no-repeat;
        background-size: 100% 100%;
        height: 1080px;
        
      }
      /* Set the text panel properties */
      .textPanel {
        width: 100%;
        height: auto;
        background-repeat: no-repeat;
        background-size: 100% 100%;
        padding: 20px;
        align-items: center;
        justify-content: center;
        display: flex;
        flex-direction: column;
        margin-bottom: 100px;

      }
      /* Set the text label properties */
      .textLabel {
        font-family: Arial;
        font-size: 30px;
        color: white;
        word-wrap: break-word;
        text-align: center;
      }
      /* Set the button placement properties */
      .divbtn {
        display: flex;
        flex-direction: row;
      }
        /* Set the results div properties */
      .divResults {
        padding: 10px;
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
    </style>
  </head>
  <body>
    <asp:Panel
      ID="image"
      runat="server"
      Height="1080"
      BackImageUrl="~/Background2.png"
      CssClass="image"
    >
      <div class="divResults">
        <div class="divbtn">
          <asp:Panel
            ID="pnlResults"
            runat="server"
            BackImageUrl="~/Images/PromptBox.png"
            CssClass="textPanel"
          >
          <div>
            <asp:Label
              ID="lblPoints"
              runat="server"
              CssClass="textLabel"
              Text="default points text" 
            ></asp:Label>
        </div>
        <div>
            <asp:Label
            ID="lblScore"
            runat="server"
            CssClass="textLabel"
            Text="default score text"
          ></asp:Label>
        </div>
          </asp:Panel>
        </div>
        <asp:imagebutton
          ID="imgbtnA2"
          runat="server"
          ImageUrl="~/Images/Main_Menu_button.png"
          OnClick="btnMM"
        />
      </div>
    </asp:Panel>
  </body>
</asp:Content>
