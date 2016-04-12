﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="ContractGenerator.MyProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Profile</title>
    <link href="bootstrap.css" rel="stylesheet"/>
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.js"></script>
</head>
<body>
    <% Response.WriteFile("~/header.aspx");%>
    <% Response.WriteFile("~/footer.html");%>
    <form id="form1" runat="server">
    <div>
        <h1>My Profile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         
        </h1>
            <p><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MainPanel.aspx">Back to Main Panel</asp:HyperLink></p>
            <p>Change your password here</p>
        <asp:ChangePassword ID="ChangePassword1" runat="server"></asp:ChangePassword>
    </div>
    </form>
</body>
</html>