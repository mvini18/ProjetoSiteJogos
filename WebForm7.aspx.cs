using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPage_PI
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            var connString = "Server=localhost;Database=db_jogos;Uid=root;Password=admin123";
            var connection = new MySqlConnection(connString);
            var command = connection.CreateCommand();

            try
            {
                connection.Open();

                if(nomeVal.IsValid && emailVal1.IsValid && emailVal2.IsValid
                    && idadeVal.IsValid && senhaVal.IsValid 
                    && confSenhaVal1.IsValid && confSenhaVal2.IsValid)
                {
                    command.CommandText = "INSERT INTO tb_usuario (nome, email, idade, senha, tipo_conta) VALUES" +
                        " ('" + nomeTxt.Text + "','" + emailTxt.Text + "','" + idadeTxt.Text + "'," +
                        "'" + senhaTxt.Text + "','normal')";
                    command.ExecuteNonQuery();
                    pagTitulo.Text = "Cadastro concluído";
                    pagTitulo.BorderColor = System.Drawing.Color.Green;
                }
            }
            catch (Exception ex)
            {
                pagTitulo.Text = "Erro no cadastro! \n" + ex.Message;

            }
            finally
            {
                if (connection.State == ConnectionState.Open)
                {
                    connection.Close();
                }
            }

        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm6.aspx");
        }
    }
}