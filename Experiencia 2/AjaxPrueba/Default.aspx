<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AjaxPrueba._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
       
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="Label1" runat="server" Text="Label" Width="196 px"></asp:Label>
                <br />
                <br />
                <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Page_Load">
                </asp:Timer>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label" Width="196 px"></asp:Label>
        <br />
       
    </div>
</asp:Content>
