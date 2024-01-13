<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication6.About" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">
            <asp:Button ID="EnglishButton" runat="server" Text="English" OnClick="LanguageButton_Click" CommandArgument="en" meta:resourcekey="EnglishButtonResource1" />
            <asp:Button ID="SpanishButton" runat="server" Text="Arabic" OnClick="LanguageButton_Click" CommandArgument="ar" meta:resourcekey="SpanishButtonResource1" />

            <%: Title %>.<asp:Label ID="Label1" runat="server" Text="Label" meta:resourcekey="Label1Resource1"></asp:Label>
    </h2>
        <h3>Your application description page.</h3>
        <p>Use this area to provide additional information.</p>
    </main>
</asp:Content>
