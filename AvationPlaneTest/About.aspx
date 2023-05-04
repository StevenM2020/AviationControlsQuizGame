<%--    Script:     About Design
        Authors:    Andy, Steven
        Date:       5/4/2023 --%>

<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master"
AutoEventWireup="true" CodeBehind="About.aspx.cs"
Inherits="AvationPlaneTest.About" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <head>
    <title>About</title>
    <style>
      /* background image */
      #image {
        background-image: url(~/Background2.png);
        background-repeat: no-repeat;
        background-size: 100% 100%;
        height: 1080px;
      }
      /* Center the content on the page */
      .content {
        font-family: Arial;
        font-size: 16px;
        color: white;
        word-wrap: break-word;
        text-align: center;
        padding: 50px;
      }
    </style>
  </head>
  <body></body>

  <asp:Panel
    ID="image"
    runat="server"
    Height="1080"
    ScrollBars="none"
    BackImageUrl="~/Background2.png"
    CssClass="image"
  >
    <div class="content">
      <h3>About Aviation Game Test</h3>
      <p>
        This game was created to teach and test students about the controls
        found in the cockpit.
      </p>
      <p>
        It was created for students in the Aviation Center at Pennsylvania
        College of Technology!
      </p>
      <p>If you have any questions or comments, feel free to contact us!</p>
    </div>
  </asp:Panel>
</asp:Content>
