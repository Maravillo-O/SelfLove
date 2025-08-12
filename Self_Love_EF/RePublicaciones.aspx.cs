using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Self_Love_EF
{
    public partial class RePacient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SelfLoveBDEntities UwuSelf = new SelfLoveBDEntities())
            {
                Publicaciones Ado_pub = new Publicaciones
                {
                    Titulo=Txttit.Text,
                    Contenido=Txtcont.Text,
                    Autor=Txtautor.Text,
                    FechaPublicacion = DateTime.Now
                };
                UwuSelf.Publicaciones.Add(Ado_pub);
                UwuSelf.SaveChanges();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string vBus = TxtBNP.Text.Trim();

            using (SelfLoveBDEntities uwu3Grid = new SelfLoveBDEntities())
            {
                IQueryable<Publicaciones> oNombres;

                // Si el texto es numérico, busca por ID; si no, por nombre
                if (int.TryParse(vBus, out int idBuscado))
                {
                    oNombres = from q in uwu3Grid.Publicaciones
                               where q.Id == idBuscado
                               select q;
                }
                else
                {
                    oNombres = from q in uwu3Grid.Publicaciones
                               where q.Autor.Contains(vBus)
                               select q;
                }

                List<Publicaciones> lista = oNombres.ToList();

                if (lista.Count > 0)
                {
                    var Nomtera = lista[0];

                    Txttit.Text = Nomtera.Titulo;
                    Txtcont.Text = Nomtera.Contenido;
                    Txtautor.Text = Nomtera.Autor.ToString();
                }

                // Mostrar todo en el GridView

                GridView1.DataSource = lista;
                GridView1.DataBind();
            }
        }

        protected void Txttit_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}