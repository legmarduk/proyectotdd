using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace proyectoTallerDD.app.forms
{
    public partial class perfilempresaaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
            if (!IsPostBack)
            {
                /*try catch*/
            try
                {
                    int idConectada = (int)Session["identificador"];
                    CargarDatos(idConectada);
                }
                catch (Exception error)
                {
                    Response.Redirect("login.aspx");
                }
            }
        }

        public void ModificarPerfilEmpresa(object sender, EventArgs e)
        {
            String nombre = nombreEmpresa.Text;
            String telefono = telefonoEmpresa.Text;
            String direccion = direccionEmpresa.Text;
            String mail = mailEmpresa.Text;
            String rubro = rubroEmpresa.Text;
            String descripcion = descripcionEmpresa.Text;
            int idConectada = (int)Session["identificador"];

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexionDB"].ConnectionString);
            conn.Open();

            String query = "EXEC dbo.EditarPerfilEmpresa"+"'"+nombre + "','"+telefono+ "','"+direccion+ "','"+mail+ "','"+rubro+ "','"
                +descripcion+ "',"+idConectada+ ""; //falta procedimiento almacenado
            SqlCommand com = new SqlCommand(query, conn);
            int respuesta = Convert.ToInt32(com.ExecuteScalar().ToString());

            conn.Close();

            if (respuesta == 1)
            {
                Response.Write("<script> Los datos fueron actualizados correctamente </script>");
            }
            else
            {
                Response.Write("<script>Fallo al Actualizar los datos </script>");
            }

        }

        public void CargarDatos(int id)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexionDB"].ConnectionString);
            conn.Open();
            String sql = "EXEC dbo.listar_Empresa " + "'" + id + "'";
            SqlCommand com = new SqlCommand(sql, conn);
            SqlDataReader dr = com.ExecuteReader();
            
            if (dr.Read())
            {

                nombreEmpresa.Text = (Convert.ToString(dr["nombre_empresa"]));
                telefonoEmpresa.Text = (Convert.ToString(dr["fono_empresa"]));
                direccionEmpresa.Text = (Convert.ToString(dr["dir_empresa"]));
                mailEmpresa.Text = (Convert.ToString(dr["mail_empresa"]));
                rubroEmpresa.Text = (Convert.ToString(dr["rubro_empresa"]));
                descripcionEmpresa.Text = (Convert.ToString(dr["desc_empresa"]));

            }
            
            conn.Close();
        }
    }
}
