<%-- Script: Contact Design 
     Authors: Andy, Steven 
     Date: 5/4/2023 --%> 

<%@ Page
Title="Contact Us" Language="C#" MasterPageFile="~/Site.Master"
AutoEventWireup="true" CodeBehind="Contact.aspx.cs"
Inherits="AvationPlaneTest.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <head>
    <title>Contact Us</title>
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
        font-size: 18px;
        color: white;
        word-wrap: break-word;
        padding-left: 55px;
        padding-top: 30px;
      }
    </style>
  </head>
  <body></body>

  <asp:Panel
    ID="image"
    runat="server"
    Height="1080"
    BackImageUrl="~/Background2.png"
    CssClass="image"
  >
    <div class="content">
      <h1><%: Title %>.</h1>

      <address>
        1 College Ave,<br /> Williamsport, PA 17701<br />
        <abbr title="Phone">P:</abbr>
        111-111-1111
      </address>

      <address>
        <strong>Dev Team:</strong>
        <a href="h.e.a.d.s.studio3@gmail.com">h.e.a.d.s.studio3@gmail.com</a
        ><br />
      </address>
    </div>
  </asp:Panel>
</asp:Content>
