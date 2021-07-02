<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm11.aspx.cs" Inherits="MasterPage_PI.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="inicio">
            <center>
            <br />
            <br />
            <br />
            <br />
            <br />
            <div style="border: medium solid #FFFFFF; border-radius: 20px; width: 418px; background-color: #121330;">
                <br />
                <asp:Button ID="btnBuscar" CssClass="button" runat="server" Text="Atualizar" Font-Names="Century Gothic" Font-Size="19pt" Height="45px" Width="122px" OnClick="btnBuscar_Click" />
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
