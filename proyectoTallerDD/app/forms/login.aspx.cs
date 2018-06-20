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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

    }

        public void logearUsuario(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conexionDB"].ConnectionString);
            conn.Open();
            String sql = "EXEC dbo.LogearUsuario" + "'" + nombreUsuario.Text + "','" + passwordUsuario.Text + "'";
            //String sql ="SELECT id FROM DatosLogin where userName= "+"'" + nombreUsuario.Text + "'AND'"+"' pass='"+passwordUsuario+"";
            SqlCommand com = new SqlCommand(sql, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());



            conn.Close();
            if (temp != 0)
            {
                Response.Redirect("menu.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");
            }

        }

    }
    
}