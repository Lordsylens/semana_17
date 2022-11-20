using System;
using System.Data;
using MySql.Data.MySqlClient;

namespace tareaprog14
{
    public partial class Consultas : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost;port=3306;Initial Catalog=proyecto;User Id=root;password=''");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void enviar_Click(object sender, EventArgs e)
        {


        }

        protected void enviar2_Click(object sender, EventArgs e)
        {
            DataTable registros = new DataTable();
            registros.Columns.AddRange(new DataColumn[] {
                new DataColumn("Id",typeof(string)),
                new DataColumn("Codigo",typeof(string)),
                new DataColumn("Nombre",typeof(string)),
                new DataColumn("Usuario",typeof(string)),
                new DataColumn("Contraseña",typeof(string)),
                new DataColumn("Rango",typeof(string)),


            });


            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = ("select id, código, nombre, usuario, contraseña, rango from Usuarios");
            MySqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    registros.Rows.Add(
                        dr["Id"].ToString(),
                        dr["Código"].ToString(),
                        dr["Nombre"].ToString(),
                        dr["Usuario"].ToString(),
                        dr["Contraseña"].ToString(),
                        dr["Rango"].ToString()
                        );
                }
            }

            con.Close();

            GVConsultar.DataSource = registros;
            GVConsultar.DataBind();

        }
    }
    
}