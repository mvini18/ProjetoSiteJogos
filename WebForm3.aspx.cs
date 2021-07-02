using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPage_PI
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDeletar_Click(object sender, EventArgs e)
        {
            var connString = "Server=localhost;Database=db_jogos;Uid=root;Password=admin123";
            var connection = new MySqlConnection(connString);
            var command = connection.CreateCommand();
            var command2 = connection.CreateCommand();
            try
            {
                var id_user = Session["id"];
                connection.Open();

                command.CommandText = "SELECT titulo from tb_info_jogos WHERE titulo= '"
                    + deletarTxt.Text + "' and id_user=" +id_user+"";
                MySqlDataReader dados = command.ExecuteReader();
                var result = dados.HasRows;
                if (result)
                {
                    dados.Close();
                    command2.CommandText = "DELETE FROM tb_info_jogos WHERE id_user="+ id_user + " and titulo='" + deletarTxt.Text + "'";
                    dados = command2.ExecuteReader();
                    pagTitulo.Text = "Deletado com sucesso!";
                }
                else
                {
                    pagTitulo.Visible = true;
                    pagTitulo.Text = "Nome inválido!";
                }

            }
            catch (Exception ex)
            {
                pagTitulo.Visible = true;
                pagTitulo.Text = "Erro na remoção! \n" + ex.Message;
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