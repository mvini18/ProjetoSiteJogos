using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPage_PI
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var connString = "Server=localhost;Database=db_jogos;Uid=root;Password=admin123";
            var connection = new MySqlConnection(connString);
            var command = connection.CreateCommand();
            var ds = new DataSet();
            try
            {
                connection.Open();

                if (emailVal1.IsValid && emailVal2.IsValid && senhaVal.IsValid)
                {
                    command.CommandText = "SELECT email, senha from tb_usuario WHERE email= '" 
                        + emailTxt.Text + "' AND senha='" + senhaTxt.Text +"'";
                    MySqlDataReader dados = command.ExecuteReader();
                    var result = dados.HasRows;
                    if (result)
                    {
                        dados.Close();
                        MySqlDataAdapter conexaoAdapter = new MySqlDataAdapter("SELECT * from tb_usuario WHERE email= '"
                        + emailTxt.Text + "' AND senha='" + senhaTxt.Text + "'", connection);
                        conexaoAdapter.Fill(ds);
                        var id = ds.Tables["Table"].Rows[0]["id"];
                        Session["id"] = id;
                        Response.Redirect("WebForm1.aspx");
                    }
                    else
                    {
                        pagTitulo.Visible = true;
                        pagTitulo.Text = "Login inválido!";
                    }
                    
                }
            }
            catch (Exception ex)
            {
                pagTitulo.Visible = true;
                pagTitulo.Text = "Erro no login! \n" + ex.Message;
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
