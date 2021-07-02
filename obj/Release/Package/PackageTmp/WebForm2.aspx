<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="MasterPage_PI.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <br />
        <asp:Label ID="pagTitulo" runat="server" Text="Editar Jogo" Font-Size="20pt" Font-Names="Century Gothic" ForeColor="White" BorderColor="White" BorderStyle="Solid" Visible="False"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <div style="border: medium solid #FFFFFF; border-radius: 20px; width: 418px; background-color: #121330;">
            <br />
            <br />
            <br />
            <asp:Label ID="titulo" runat="server" Text="Título: " Font-Names="Century Gothic" ForeColor="White" Font-Bold="True"></asp:Label>
            <br />
            <asp:TextBox ID="tituloTxt" CssClass="campos" runat="server" Width="200px" Font-Names="Century Gothic" CausesValidation="True"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="tituloVal" runat="server" ControlToValidate="tituloTxt" ErrorMessage="Informe o título do jogo!" Font-Bold="True" Font-Names="Century Gothic" ForeColor="Red" EnableClientScript="False"></asp:RequiredFieldValidator>
            <br />
            <hr style="width: 263px" />
            <br />
            <asp:Label ID="engine" runat="server" Text="Engine: " Font-Names="Century Gothic" ForeColor="White" Font-Bold="True"></asp:Label>
            <br />
            <asp:DropDownList ID="engineList" CssClass="campos" runat="server" Font-Names="Century Gothic" CausesValidation="True">
                <asp:ListItem Value="0">Selecione</asp:ListItem>
                <asp:ListItem>Unity 3D</asp:ListItem>
                <asp:ListItem>Unreal Engine</asp:ListItem>
                <asp:ListItem>Game Maker</asp:ListItem>
                <asp:ListItem>Godot</asp:ListItem>
                <asp:ListItem>CryEngine</asp:ListItem>
                <asp:ListItem>Construct</asp:ListItem>
                <asp:ListItem>Game Salad</asp:ListItem>
                <asp:ListItem>RPG Maker</asp:ListItem>
                <asp:ListItem>AppGameKit</asp:ListItem>
                <asp:ListItem>BuildBox</asp:ListItem>
                <asp:ListItem>Outra</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:RequiredFieldValidator ID="engineVal" runat="server" ControlToValidate="engineList" EnableClientScript="False" ErrorMessage="Selecione a engine!" Font-Bold="True" Font-Names="Century Gothic" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
            <br />
            <hr style="width: 263px" />
            <br />
            <asp:Label ID="graficos" runat="server" Text="Gráficos: " Font-Names="Century Gothic" ForeColor="White" Font-Bold="True"></asp:Label>
            <asp:RadioButtonList ID="radioGraficos" runat="server" Font-Names="Century Gothic" ForeColor="White" CausesValidation="True">
                <asp:ListItem>2D</asp:ListItem>
                <asp:ListItem>3D</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="graficosVal" runat="server" ControlToValidate="radioGraficos" EnableClientScript="False" ErrorMessage="Escolha o tipo do gráfico!" Font-Bold="True" Font-Names="Century Gothic" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <hr style="width: 263px" />
            <br />
            <asp:Label ID="generos" runat="server" Text="Gêneros: " Font-Names="Century Gothic" ForeColor="White" Font-Bold="True"></asp:Label>
            <asp:CheckBoxList ID="generoList" runat="server" Font-Names="Century Gothic" ForeColor="White" CausesValidation="True">
                <asp:ListItem>Ação</asp:ListItem>
                <asp:ListItem>Aventura</asp:ListItem>
                <asp:ListItem>Estratégia</asp:ListItem>
                <asp:ListItem>RPG</asp:ListItem>
                <asp:ListItem>Esporte</asp:ListItem>
                <asp:ListItem>Corrida</asp:ListItem>
                <asp:ListItem>Jogo on-line</asp:ListItem>
                <asp:ListItem>Simulação</asp:ListItem>
                <asp:ListItem>Outro</asp:ListItem>
            </asp:CheckBoxList>
            <asp:CustomValidator ID="generoVal" runat="server" EnableClientScript="False" ErrorMessage="Marque ao menos um gênero para o jogo!" Font-Bold="True" Font-Names="Century Gothic" ForeColor="Red" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
            <br />
            <hr style="width: 263px" />
            <br />
            <asp:Label ID="producao" runat="server" Text="Produção: " Font-Names="Century Gothic" ForeColor="White" Font-Bold="True"></asp:Label>
            <br />
            <asp:DropDownList ID="producaoOp" CssClass="campos" runat="server" Font-Names="Century Gothic" CausesValidation="True">
                <asp:ListItem Value="0">Selecione</asp:ListItem>
                <asp:ListItem>Indie</asp:ListItem>
                <asp:ListItem>Arcade</asp:ListItem>
                <asp:ListItem>Advergames</asp:ListItem>
                <asp:ListItem>Educacional</asp:ListItem>
                <asp:ListItem>Social</asp:ListItem>
                <asp:ListItem>Comercial</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:RequiredFieldValidator ID="producaoVal" runat="server" ControlToValidate="producaoOp" EnableClientScript="False" ErrorMessage="Seleciona a produção do jogo!" Font-Bold="True" Font-Names="Century Gothic" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
            <br />
            <hr style="width: 263px" />
            <br />
            <asp:Label ID="lancamento" runat="server" Text="Data de lançamento: " Font-Names="Century Gothic" ForeColor="White" Font-Bold="True"></asp:Label><br />
            <asp:TextBox ID="lancamentoTxt" CssClass="campos" runat="server" Font-Names="Century Gothic" TextMode="Date" CausesValidation="True"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="dataVal1" runat="server" EnableClientScript="False" ErrorMessage="Informe a data de lançamento!" Font-Bold="True" Font-Names="Century Gothic" ForeColor="Red" ControlToValidate="lancamentoTxt"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="dataVal2" runat="server" ErrorMessage="Data inválida!" Font-Bold="True" Font-Names="Century Gothic" ForeColor="Red" ControlToValidate="lancamentoTxt" EnableClientScript="False" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            <br />
            <hr style="width: 263px" />
            <br />
            <asp:Label ID="descricao" runat="server" Text="Descrição: " Font-Names="Century Gothic" ForeColor="White" Font-Bold="True"></asp:Label>
            <br />
            <asp:TextBox ID="descricaoTxt" runat="server" CausesValidation="True" Font-Names="Century Gothic" CssClass="campos" MaxLength="1000" TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="descricaoVal" runat="server" ControlToValidate="descricaoTxt" EnableClientScript="False" ErrorMessage="Preencha a descrição!" Font-Bold="True" Font-Names="Century Gothic" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <hr style="width: 263px" />
            <br />
            <asp:Label ID="jobabilidade" runat="server" Text="Jogabilidade: " Font-Names="Century Gothic" ForeColor="White" Font-Bold="True"></asp:Label>
            <asp:RadioButtonList ID="radioJogabilidade" runat="server" Font-Names="Century Gothic" ForeColor="White" CausesValidation="True">
                <asp:ListItem>Single Player</asp:ListItem>
                <asp:ListItem>Multiplayer</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="jogabilidadeVal" runat="server" ControlToValidate="radioJogabilidade" EnableClientScript="False" ErrorMessage="Informe o tipo de jogabilidade!" Font-Bold="True" Font-Names="Century Gothic" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <hr style="width: 263px" />
            <br />
            <asp:Label ID="estiloJogo" runat="server" Text="Estilo de jogo: " Font-Names="Century Gothic" ForeColor="White" Font-Bold="True"></asp:Label>
            <asp:CheckBoxList ID="estiloJogoList" runat="server" Font-Names="Century Gothic" ForeColor="White">
                <asp:ListItem>Local</asp:ListItem>
                <asp:ListItem>Coop local</asp:ListItem>
                <asp:ListItem>Online</asp:ListItem>
                <asp:ListItem>Coop online</asp:ListItem>
            </asp:CheckBoxList>
            <asp:CustomValidator ID="estiloJogoVal" runat="server" EnableClientScript="False" ErrorMessage="Marque ao menos um estilo de jogo!" Font-Bold="True" Font-Names="Century Gothic" ForeColor="Red" OnServerValidate="CustomValidator3_ServerValidate"></asp:CustomValidator>
            <br />
            <hr style="width: 263px" />
            <br />
            <asp:Label ID="plataformas" runat="server" Text="Plataformas: " Font-Names="Century Gothic" ForeColor="White" Font-Bold="True"></asp:Label>
            <br />
            <asp:CheckBoxList ID="plataformaList" runat="server" Font-Names="Century Gothic" ForeColor="White" CausesValidation="True">
                <asp:ListItem>Computador</asp:ListItem>
                <asp:ListItem>Console</asp:ListItem>
                <asp:ListItem>Console Portátil</asp:ListItem>
                <asp:ListItem>Arcade</asp:ListItem>
                <asp:ListItem>Mobile</asp:ListItem>
            </asp:CheckBoxList>
            <asp:CustomValidator ID="plataformaVal" runat="server" EnableClientScript="False" ErrorMessage="Marque ao menos uma plataforma!" Font-Bold="True" Font-Names="Century Gothic" ForeColor="Red" OnServerValidate="CustomValidator4_ServerValidate"></asp:CustomValidator>
            <br />
            <hr style="width: 263px" />
            <br />
            <asp:Label ID="avalJogo" runat="server" Font-Bold="True" Font-Names="Century Gothic" ForeColor="White" Text="Avaliação do jogo (0-10):"></asp:Label>
            <br />
            <asp:TextBox ID="avalJogoTxt" runat="server" CssClass="campos" CausesValidation="True" Font-Names="Century Gothic" TextMode="Number" Width="45px" Font-Size="20pt" Height="28px" MaxLength="2"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="avalJogoVal1" runat="server" ControlToValidate="avalJogoTxt" EnableClientScript="False" ErrorMessage="Informe a avaliação do jogo!" Font-Bold="True" Font-Names="Century Gothic" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="avalJogoVal2" runat="server" ControlToValidate="avalJogoTxt" EnableClientScript="False" ErrorMessage="Informe uma avaliação válida!" Font-Bold="True" Font-Names="Century Gothic" ForeColor="Red" MaximumValue="10" MinimumValue="0" Type="Integer"></asp:RangeValidator>
            <br />
            <br />
            <asp:Button ID="btnEnviar" runat="server" Text="Enviar" CssClass="button" Font-Names="Century Gothic" Font-Size="19pt" Height="45px" Width="90px" OnClick="btnEnviar_Click" />
            <br />
            <br />
        </div>
    </center>
</asp:Content>
