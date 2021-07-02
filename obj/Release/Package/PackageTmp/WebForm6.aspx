<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="MasterPage_PI.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="inicio">
        <h1>Bem Vindo(a)</h1>
        <p>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="350px" ImageUrl="~/Imagens/jogos.png" Width="350px" />
        </p>
        <p id="textoIni">A GamePedia é um site para te manter informado sobre as últimas notícias do mundo dos jogos. 
            Aqui você também pode cadastrar jogos na nossa lista e conferir nossas dicas semanais!</p>
    </div>
        <center>
            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="button" Font-Names="Century Gothic" Font-Size="19pt" Height="45px" Width="90px" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Cadastrar" CssClass="button" OnClick="Button2_Click" Font-Names="Century Gothic" Font-Size="19pt" Height="45px" Width="140px" />
        </center>
    </form>
</body>
</html>
