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
    public partial class WebForm11 : System.Web.UI.Page
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
                MySqlDataAdapter conexaoAdapter = new MySqlDataAdapter("select us.email as Email, su.sugestao as Sugestao from tb_usuario as us, tb_sugestoes as su where us.id = su.id_user", connection);
                conexaoAdapter.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                GridView1.RowStyle.HorizontalAlign = HorizontalAlign.Center;
                GridView1.HeaderStyle.ForeColor = Color.CadetBlue;

            }
            catch (Exception ex)
            {
                
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