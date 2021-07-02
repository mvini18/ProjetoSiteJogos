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
    public partial class WebForm10 : System.Web.UI.Page
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
                var id_user = Session["id"];

                if (sugerirVal.IsValid)
                {
                    command.CommandText = "INSERT INTO tb_sugestoes (id_user, sugestao) VALUES" +
                        " (" + id_user + ",'" + sugerirTxt.Text + "')";
                    command.ExecuteNonQuery();
                    pagTitulo.Text = "Sugestão enviada!";
                    pagTitulo.BorderColor = System.Drawing.Color.Green;
                }
            }
            catch (Exception ex)
            {
                pagTitulo.Text = "Erro no envio! \n" + ex.Message;

            }
            finally
            {
                if (connection.State == ConnectionState.Open)
                {
                    connection.Close();
                }
            }
        }
    }
}