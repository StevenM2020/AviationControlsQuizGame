<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="AvationPlaneTest.Results" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Results</title>
</head>
<body>
    <form id="form1" runat="server">
        <div><p>You got <%=Session["intPoints"] %> points out of <%=Session["intCurrentQuestionCounter"] %> total points.</p>
            <p><asp:Button ID="btnMainMenu" runat="server" Text="Main Menu" OnClick="btnMM" /></p>
        </div>
    </form>
</body>
</html>
