﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectoTallerDD.app.forms
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*try catch*/
            try
            {
                int idConectada = (int)Session["identificador"];

                aaaaa.Value = idConectada.ToString() ;
            }
            catch (Exception error)
            {
                Response.Redirect("login.aspx");
            }

        }
    }
}