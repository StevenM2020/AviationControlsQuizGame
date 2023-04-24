<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AvationPlaneTest._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <style>
        /* Set the page background color */
        #image {
            background-size: cover;
            background-repeat: no-repeat;
        }
        p {
            display: flex;
            height: 50vh;
            justify-content: center;
            align-items: center;
        }

    </style>
    
     <asp:Panel ID="image" runat="server" BackImageUrl="~/Background2.png" CssClass="image">
    <p>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="40pt" Text="Aviation Controls Quiz Game Start Screen"></asp:Label>
    </p>
    <p>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/StartButton.png" OnClick="btnStart_Click" />
        
    </p>

          </asp:Panel>
    </asp:Content>
