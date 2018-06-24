using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace proyectoTallerDD.app.forms
{
    public partial class perfilestudiante : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*try catch*/
            try
            {
                int idConectada = (int)Session["identificador"];

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexionDB"].ConnectionString);
                conn.Open();

                String sql = "EXEC dbo.listar_usuario" + "'" + idConectada + "'";

                SqlCommand com = new SqlCommand(sql, conn);

                //Response.Write(sql);
                //Response.Write(com);

                conn.Close();

            }
            catch (Exception error)
            {
                Response.Redirect("login.aspx");
            }


            

        }



        protected void ModificarPerfilEstudiante(object sender, EventArgs e)
        {
            int idConectada = (int)Session["identificador"];

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexionDB"].ConnectionString);
            conn.Open();

            String sql = "EXEC dbo.EditarPerfilEstudiante" + "'" + nombreE.Text + "','" + apellidoPaternoE.Text + "','" + apellidoMaternoE.Text + "','" +
               rutEstudiante.Text + "','" + emailEstudiante.Text + "','" + telefonoEstudiante.Text + "','" + direccionEstudiante.Text + "','" +
               comentarioEstudiante.Text + "','" + DropDownList1.Text + "','" + idConectada + "'";
            SqlCommand com = new SqlCommand(sql, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());


            conn.Close();
            if (temp ==1) {
                Response.Redirect("menu.aspx");
            }

        } 
    }

}