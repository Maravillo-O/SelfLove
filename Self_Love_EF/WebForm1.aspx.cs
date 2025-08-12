using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Self_Love_EF
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReUsuarios.aspx"); // Cambia "Pagina2.aspx" por la ruta que necesites
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("RePublicaciones.aspx"); // Cambia "Pagina2.aspx" por la ruta que necesites
        }
    }
}