using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cursos
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ViewDataGrid();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            busqueda();
        }

        public void ViewDataGrid()
        {
            using (selfloveEntities oGrid = new selfloveEntities())
            {
                IQueryable<Recursos> datos = from q in oGrid.Recursos select q;
                List<Recursos> Lista = datos.ToList();

                GridView1.DataSource = Lista;
                GridView1.DataBind();
            }
        }
        public void busqueda()
        {
            string vBus = TextBox1.Text.Trim();

            using (selfloveEntities DBFrec = new selfloveEntities())
            {
                
                IQueryable<Recursos> oBusqueda = from q in DBFrec.Recursos where q.Nombre.Contains(vBus) || q.Autor.Contains(vBus) select q;

                List<Recursos> Lista = oBusqueda.ToList();
                if (Lista.Count > 0)
                {
                    GridView1.DataSource = Lista;
                    GridView1.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('No se encontraron resultados para la búsqueda.');</script>");
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            ViewDataGrid();
        }
    }
}