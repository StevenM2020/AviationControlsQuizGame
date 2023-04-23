<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Game.aspx.cs" Inherits="AvationPlaneTest.Game" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <style>
        /* Set the page background color */
        image {
            background-size: cover;
            width: 100%;
            
        }

    </style>

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

