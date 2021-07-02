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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (DateTime.Parse(args.Value) > DateTime.Now)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = true;
            if (generoList.SelectedIndex == -1)
            {
                args.IsValid = false;
            }
        }

        protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = true;
            if (estiloJogoList.SelectedIndex == -1)
            {
                args.IsValid = false;
            }
        }

        protected void CustomValidator4_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = true;
            if (plataformaList.SelectedIndex == -1)
            {
                args.IsValid = false;
            }
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

                if (tituloVal.IsValid && engineVal.IsValid && graficosVal.IsValid &&
                    generoVal.IsValid && producaoVal.IsValid && dataVal1.IsValid &&
                    dataVal2.IsValid && descricaoVal.IsValid && jogabilidadeVal.IsValid &&
                    estiloJogoVal.IsValid && plataformaVal.IsValid && avalJogoVal1.IsValid &&
                    avalJogoVal2.IsValid)
                {
                    command.CommandText = "UPDATE tb_info_jogos " +
                        "SET engine='" + engineList.SelectedValue + "'," +
                        "graficos='" + radioGraficos.SelectedValue + "'," +
                        "generos ='" + generoList.SelectedValue + "'," +
                        "producao ='" + producaoOp.SelectedValue + "'," +
                        "lancamento ='" + lancamentoTxt.Text + "'," +
                        "descricao ='" + descricaoTxt.Text + "'," +
                        "jogabilidade ='" + radioJogabilidade.SelectedValue + "'," +
                        "estilo_jogo ='" + estiloJogoList.SelectedValue + "'," +
                        "plataformas ='" + plataformaList.SelectedValue + "'," +
                        "avaliacao ='" + avalJogoTxt.Text + "' WHERE titulo LIKE '" + tituloTxt.Text + "'" +
                        "AND id_user= " + id_user + "";

                    int rowAffected = command.ExecuteNonQuery();


                    if (rowAffected > 0)
                    {
                        pagTitulo.Visible = true;
                        pagTitulo.Text = "Dados atualizados!";
                    }
                    else
                    {
                        pagTitulo.Visible = true;
                        pagTitulo.Text = "Título inexistente!";
                    }

                }
            }
            catch (Exception ex)
            {
                pagTitulo.Visible = true;
                pagTitulo.Text = "Erro na edição! \n" + ex.Message;
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