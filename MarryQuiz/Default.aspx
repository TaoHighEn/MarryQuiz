<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MarryQuiz._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <h1>請來賓拿起手機掃描QR Code進入問卷</h1>
        <div style="width:100%;align-content:center">
            <asp:Image ID="Image1" runat="server" AlternateText="QR Code Location"
           ImageAlign="Middle"
           ImageUrl="images/QRCode.png"/>
        </div>
    </main>

</asp:Content>
