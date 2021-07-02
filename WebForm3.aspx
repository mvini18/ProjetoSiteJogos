<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="MasterPage_PI.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <center>
            <br />
            <asp:Label ID="pagTitulo" runat="server" Font-Size="20pt" Font-Names="Century Gothic" ForeColor="White" BorderColor="White" BorderStyle="Solid">Deletar por nome do jogo</asp:Label>
            <br />
            <br />
            <br />
            <br />
            <div style="border: medium solid #FFFFFF; border-radius: 20px; width: 418px; background-color: #121330;">
                <br />
                <br />
                <br />
                <asp:Label ID="deletar" runat="server" Text="Nome:" Font-Names="Century Gothic" ForeColor="White" Font-Bold="True"></asp:Label>
                <br />
                <asp:TextBox ID="deletarTxt" CssClass="campos" runat="server" Width="200px" Font-Names="Century Gothic" CausesValidation="True" ></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Button ID="btnDeletar" CssClass="button" runat="server" Text="Deletar" Font-Names="Century Gothic" Font-Size="19pt" Height="45px" Width="105px" OnClick="btnDeletar_Click" />
                <br />
                <br />
            </div>
                <br />

        </center>
    </div>
</asp:Content>
