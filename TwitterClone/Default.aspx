<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TwitterClone.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <% foreach (var currentPost in AllPosts) { %>
                <p><%= currentPost.Content %></p>
                <p><%= currentPost.PostedBy %></p>
            <% } %>
            <% foreach (var currentPost in AllPosts) if (currentPost.PostedBy == "joblipat") { %>
                <p><%= currentPost.Content %></p>
                <p><%= currentPost.PostedBy %></p>
            <% } %>
        </div>
    </form>
</body>
</html>
