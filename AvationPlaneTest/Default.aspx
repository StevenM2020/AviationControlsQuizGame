<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AvationPlaneTest._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="40pt" Text="Aviation Controls Quiz Game Start Screen"></asp:Label>
    </p>
    <p>
        <asp:Button ID="btnStart" runat="server" Text="Start" OnClick="btnStart_Click" />
    </p>
    </asp:Content>
