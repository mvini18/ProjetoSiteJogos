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
    public partial class WebForm9 : System.Web.UI.Page
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
                MySqlDataAdapter conexaoAdapter = new MySqlDataAdapter("SELECT nome as Nome, email as Email, idade as Idade," +
                    " senha as Senha, tipo_conta as Status from tb_usuario as user " +
                    "WHERE nome like '%" + buscarTxt.Text + "%'", connection);
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