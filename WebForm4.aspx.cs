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
    public partial class WebForm4 : System.Web.UI.Page
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
                    command.CommandText = "INSERT INTO tb_info_jogos (id_user, titulo, engine, graficos, generos, " +
                        "producao, lancamento, descricao, jogabilidade, estilo_jogo, plataformas, avaliacao) VALUES" +
                        " (" + id_user + ",'" + tituloTxt.Text + "','" + engineList.SelectedValue + "','" + radioGraficos.SelectedValue + "'," +
                        "'" + generoList.SelectedValue + "','" + producaoOp.SelectedValue + "','" + lancamentoTxt.Text + "'" +
                        ",'" + descricaoTxt.Text + "','" + radioJogabilidade.SelectedValue + "','" + estiloJogoList.SelectedValue + "'" +
                        ",'" + plataformaList.SelectedValue + "','" + avalJogoTxt.Text + "')";
                    command.ExecuteNonQuery();
                    pagTitulo.Text = "Cadastro concluído";
                    pagTitulo.Visible = true;
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
    }
}