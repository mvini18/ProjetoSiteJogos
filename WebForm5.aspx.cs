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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            var connString = "Server=localhost;Database=db_jogos;Uid=root;Password=admin123";
            var connection = new MySqlConnection(connString);
            var ds = new DataSet();

            try
            {
                var id_user = Session["id"];
                connection.Open();
                MySqlDataAdapter conexaoAdapter = new MySqlDataAdapter("SELECT titulo as Titulo, engine as Engine, graficos as Graficos," +
                    " generos as Generos, producao as Producao, lancamento as Lancamento," +
                    " descricao as Descricao, jogabilidade as Jogabilidade," +
                    " estilo_jogo as Estilo, plataformas as Plataformas, avaliacao as Avaliacao" +
                    " from tb_info_jogos as info, tb_usuario as user WHERE user.id = id_user and id_user = " + id_user + " and info.titulo like '%"+buscarTxt.Text+"%'", connection);
                conexaoAdapter.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                GridView1.RowStyle.HorizontalAlign = HorizontalAlign.Center;
                GridView1.HeaderStyle.ForeColor = Color.CadetBlue;

            }
            catch (Exception ex)
            {
                pagTitulo.Visible = true;
                pagTitulo.Text = "Não foi possível realizar a busca! \n" + ex.Message;
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