using System;
using MySql.Data.MySqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace tareaprog14
{
    public partial class Registros : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data Source=localhost;port=3306;Initial Catalog=proyecto;User Id=root;password=''");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("login.aspx");
            }
            Label3.Text = "¡Bienvenido!: " + Session["usuario"].ToString();
            ListItem i;
            i = new ListItem("Administrador", "ADM");
            ddLista.Items.Add(i);
            i = new ListItem("Usuario", "USR");
            ddLista.Items.Add(i);
        }

        protected void registrar_Click(object sender, EventArgs e)
        {
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO usuarios(código, nombre, usuario, contraseña, rango) values ('" + id.Text + "','" + nombre.Text + "','" + usuarioreg.Text + "','" + passwordreg.Text + "','" + ddLista.Text + "')";

            cmd.ExecuteNonQuery();


            con.Close();
            Label2.Text = "Datos guardados";
        }
    }
}