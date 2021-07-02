<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm10.aspx.cs" Inherits="MasterPage_PI.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="inicio">
            <center>
            <br />
            <asp:Label ID="pagTitulo" runat="server" Font-Size="20pt" Font-Names="Century Gothic" ForeColor="White" BorderColor="White" BorderStyle="Solid">Sugestões</asp:Label>
            <br />
            <br />
            <br />
            <br />
            <div style="border: medium solid #FFFFFF; border-radius: 20px; width: 418px; background-color: #121330;">
                <br />
                <br />
                <br />
                <asp:Label ID="buscar" runat="server" Text="Tem algo para nos reportar? Escreva aqui." Font-Names="Century Gothic" ForeColor="White" Font-Bold="True"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="sugerirTxt" CssClass="campos" runat="server" Width="290px" Font-Names="Century Gothic" CausesValidation="True" Height="110px" TextMode="MultiLine" ></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="sugerirVal" runat="server" ControlToValidate="sugerirTxt" ErrorMessage="Escreva uma sugestão!" Font-Bold="True" Font-Names="Century Gothic" ForeColor="Red" EnableClientScript="False"></asp:RequiredFieldValidator>
                <br />
                <br />
                <br />
                <asp:Button ID="btnEnviar" CssClass="button" runat="server" Text="Enviar" Font-Names="Century Gothic" Font-Size="19pt" Height="45px" Width="90px" OnClick="btnEnviar_Click" />
                <br />
                <br />
            </div>
                <br />
        </center>
        </div>
    </div>
</asp:Content>
