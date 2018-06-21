using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectoTallerDD.app.forms
{
    public partial class menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            int idConectada = (int)Session["identificador"];


           // Response.Write(idConectada);

            // Response.Write("<script>alert('ERROR en los Datos',"+idConectada")</script>");
            
            
        }


    }
}