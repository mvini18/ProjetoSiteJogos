<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MasterPage_PI.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="inicio">
        <h1>Quem somos</h1>
        <p>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="350px" ImageUrl="~/Imagens/comentarista-de-jogos.png" Width="350px" />
        </p>
        <p id="textoIni">Desenvolvido por estudantes do 7º Período do curso de Engenharia de Computação, 
            a GamePedia é um ótimo lugar para você organizar seus jogos e ficar antenado no mundo dos games!</p>
    </div>
</asp:Content>
