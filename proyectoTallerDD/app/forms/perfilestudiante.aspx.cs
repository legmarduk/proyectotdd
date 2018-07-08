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
            if(!IsPostBack)
            {
                    /*try catch*/
                try
                {
                    int idConectada = (int)Session["identificador"];
              
                    cargar(idConectada);
                }
                catch (Exception error)
                {
                    Response.Redirect("login.aspx");
                }
            }

        }


       protected void ModificarPerfilEstudiante(object sender, EventArgs e)
        {
            String nombre = nombreE.Text;
            String apellidoP = apellidoPaternoE.Text;
            String apellidoM = apellidoMaternoE.Text;
            String rut = rutEstudiante.Text;
            String email = emailEstudiante.Text;
            String telefono = telefonoEstudiante.Text;
            String direccion = direccionEstudiante.Text;
            String comentario = comentarioEstudiante.Text;
            String drop = DropDownList1.Text;

            int idConectada = (int)Session["identificador"];

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexionDB"].ConnectionString);
            conn.Open();

            String query = "EXEC dbo.EditarPerfilEstudiante " + "'" + nombre + "','" + apellidoP + "','" + apellidoM + "','" +
               rut + "','" + email + "'," + telefono + ",'" + direccion + "','" +
               comentario + "'," + drop + "," + idConectada + "";
            SqlCommand com2 = new SqlCommand(query, conn);
            int respuesta = Convert.ToInt32(com2.ExecuteScalar().ToString());

            conn.Close();
            if (respuesta == 1)
            {
                //Response.Write(query.ToString());

                Response.Write("<script> Los datos fueron actualizados correctamente </script>");
            }
            else
            {
                Response.Write("<script>Fallo al Actualizar los datos </script>");
            }



        }

        private void cargar(int id)
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexionDB"].ConnectionString);
            conn.Open();
            String sql = "EXEC dbo.listar_usuario " + "'" + id + "'";
            SqlCommand com = new SqlCommand(sql, conn);
            SqlDataReader dr = com.ExecuteReader();

            if (dr.Read())
            {
              
                nombreE.Text = (Convert.ToString(dr["nombre_estudiante"]));
                rutEstudiante.Text = (Convert.ToString(dr["rut_estudiante"]));
                apellidoPaternoE.Text = (Convert.ToString(dr["apellido_p"]));
                apellidoMaternoE.Text = (Convert.ToString(dr["apellido_a"]));
                telefonoEstudiante.Text = (Convert.ToString(dr["fono_estudiante"]));
                emailEstudiante.Text = (Convert.ToString(dr["email_estudiante"]));
                direccionEstudiante.Text = (Convert.ToString(dr["dir_estudiante"]));
                comentarioEstudiante.Text = (Convert.ToString(dr["hab_estudiante"]));

            }

            conn.Close();
        }

    }
}
