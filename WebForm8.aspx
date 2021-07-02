<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="MasterPage_PI.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <center>
            <br />
            <asp:Label ID="pagTitulo" runat="server" Text="Erro Login" Font-Size="20pt" Font-Names="Century Gothic" ForeColor="White" BorderColor="White" BorderStyle="Solid" Visible="False"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <div style="border: medium solid #FFFFFF; border-radius: 20px; width: 418px; background-color: #121330;">
                <br />
                <br />
                <br />
                <asp:Label ID="email" runat="server" Text="Email: " Font-Names="Century Gothic" ForeColor="White" Font-Bold="True"></asp:Label>
                <br />
                <asp:TextBox ID="emailTxt" AutoCompleteType="Email" CssClass="campos" runat="server" Width="200px" Font-Names="Century Gothic" CausesValidation="True" TextMode="Email"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="emailVal1" runat="server" ControlToValidate="emailTxt" ErrorMessage="Informe o seu email!" Font-Bold="True" Font-Names="Century Gothic" ForeColor="Red" EnableClientScript="False"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="emailVal2" runat="server" ErrorMessage="Informe um email válido!" ControlToValidate="emailTxt" Font-Bold="True" Font-Names="Century Gothic" ForeColor="Red" EnableClientScript="False" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <br />

                <hr style="width: 263px" />

                <br />
                <asp:Label ID="senha" runat="server" Text="Senha: " Font-Names="Century Gothic" ForeColor="White" Font-Bold="True"></asp:Label>
                <br />
                <asp:TextBox ID="senhaTxt" CssClass="campos" runat="server" Width="200px" Font-Names="Century Gothic" CausesValidation="True" TextMode="Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="senhaVal" runat="server" ControlToValidate="senhaTxt" ErrorMessage="Informe a sua senha!" Font-Bold="True" Font-Names="Century Gothic" ForeColor="Red" EnableClientScript="False"></asp:RequiredFieldValidator>
                <br />

                <br />
                <br />
                <asp:Button ID="btnVoltar" CssClass="button" runat="server" Text="Voltar" Font-Names="Century Gothic" Font-Size="19pt" Height="45px" Width="90px" OnClick="btnVoltar_Click" />
                <asp:Button ID="btnLogin" CssClass="button" runat="server" Text="Entrar" Font-Names="Century Gothic" Font-Size="19pt" Height="45px" Width="90px" OnClick="btnLogin_Click" />
                <br />
                <br />
            </div>
        </center>
    </form>
</body>
</html>
