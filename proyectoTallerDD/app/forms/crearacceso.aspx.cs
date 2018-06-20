using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;


namespace proyectoTallerDD.app.forms
{
    public partial class crearacceso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void crearAcceso(object sender, EventArgs e)
        {
            string seleccionUsuario = seleccionCuenta.SelectedValue;

            int tipoCuenta = Convert.ToInt32(seleccionUsuario.ToString());/*conv el string en int*/
         
            if (tipoCuenta == 1)/*empresa*/
            {

            }
            if (tipoCuenta == 2)/*practicante*/
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexionDB"].ConnectionString);
                conn.Open();
                String sql = "EXEC dbo.CrearAccesoEstudiante" + "'" + nombreUsuario.Text + "','" + passwordUsuario.Text + "'";
                SqlCommand com = new SqlCommand(sql, conn);
                int respuesta = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (respuesta == 1)
                {
                    Response.Redirect("menu.aspx");
                }
                else {
                    Response.Redirect("crearacceso.aspx");
                }
            }
        }
    }
}