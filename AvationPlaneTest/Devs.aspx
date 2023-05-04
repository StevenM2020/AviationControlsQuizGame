<%-- Script: Devs Design 
     Authors: Andy 
     Date: 5/4/2023 --%> 

<%@ Page Title="Devs" Language="C#" MasterPageFile="~/Site.Master"
AutoEventWireup="true" CodeBehind="Devs.aspx.cs"
Inherits="AvationPlaneTest.Devs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <head>
    <title>Devs</title>
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
      /* moves links*/
      .link {
        margin-left: 60px;
        color: white;
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
      <h3 style="margin-left: 0px">About The Developers</h3>

      <p style="margin-left: 60px">
        This learning game was developed by <b>H.E.A.D.S.</b>
      </p>

      <p style="margin-left: 60px">
        <b>Ethan</b>
      </p>
      <a href="https://www.linkedin.com/in/ethan-lehutsky-332b301b9"class="link">LinkedIn</a>
      <p></p>
      <p style="margin-left: 60px">
        <b>Andy</b>
      </p>
      <a href="https://ajj12.myportfolio.com" class="link">Portfolio</a>
      <p></p>
      <a href="https://www.linkedin.com/in/andrew-jackowski-0510241a7/"class="link">LinkedIn</a>
      <p></p>
      <p style="margin-left: 60px">
        <b>David</b>
      </p>
      <a href="https://www.linkedin.com/in/david-waldron-021a951b5" class="link">LinkedIn</a>
      <p></p>
      <p style="margin-left: 60px">
        <b>Steven</b>
        <p></p>
        <a href="https://stevenmotz.myportfolio.com/work" class="link">Portfolio</a>
      </p>
      <a href="https://www.linkedin.com/in/steven-motz-972a99215/" class="link">LinkedIn</a>
      <p></p>
      <b style="margin-left: 60px">Hunter</b>
      <p></p>
      <a href="https://hunterhawkman.wixsite.com/hunterhockman" class="link">Portfolio</a>
      <p></p>
      <a href="https://www.linkedin.com/in/hunter-hockman-7559141b4/"class="link">LinkedIn</a
      >
      <p></p>
    </div>
  </asp:Panel>
</asp:Content>
