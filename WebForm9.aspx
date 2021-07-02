<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm9.aspx.cs" Inherits="MasterPage_PI.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="inicio">
            <center>
            <br />
            <asp:Label ID="pagTitulo" runat="server" Font-Size="20pt" Font-Names="Century Gothic" ForeColor="White" BorderColor="White" BorderStyle="Solid" Visible="False"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <div style="border: medium solid #FFFFFF; border-radius: 20px; width: 418px; background-color: #121330;">
                <br />
                <br />
                <br />
                <asp:Label ID="buscar" runat="server" Text="Nome do usuário: " Font-Names="Century Gothic" ForeColor="White" Font-Bold="True"></asp:Label>
                <br />
                <asp:TextBox ID="buscarTxt" CssClass="campos" runat="server" Width="200px" Font-Names="Century Gothic" CausesValidation="True" ></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Button ID="btnBuscar" CssClass="button" runat="server" Text="Buscar" Font-Names="Century Gothic" Font-Size="19pt" Height="45px" Width="90px" OnClick="btnBuscar_Click" />
                <br />
                <br />
            </div>
                <br />

                <asp:GridView ID="GridView1" runat="server" ForeColor="White">
                </asp:GridView>
        </center>
        </div>
    </div>
</asp:Content>
