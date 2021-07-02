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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var connString = "Server=localhost;Database=db_jogos;Uid=root;Password=admin123";
            var connection = new MySqlConnection(connString);
            var command = connection.CreateCommand();
            try
            {
                connection.Open();
                var id_user = Session["id"];
                command.CommandText = "SELECT * from tb_usuario WHERE id= " + id_user + " AND tipo_conta='admin'";
                MySqlDataReader dados = command.ExecuteReader();
                var result = dados.HasRows;
                if (result)
                {
                    sugerir.Visible = false;
                    usuarios.Visible = true;
                    sugestao.Visible = true;
                }
                else
                {
                    sugerir.Visible = true;
                    usuarios.Visible = false;
                    sugestao.Visible = false;
                }
            }
            catch (Exception)
            {
                Response.Redirect("WebForm8.apsx");
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