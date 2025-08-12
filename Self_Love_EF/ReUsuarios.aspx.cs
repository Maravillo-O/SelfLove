using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.Entity;
using System.Web.UI.WebControls;


namespace Self_Love_EF
{
    public partial class ReTerapeu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            using (SelfLoveBDEntities UwuSelf = new SelfLoveBDEntities())
            {

                Usuarios Ado_Usu = new Usuarios
                {
                    Nombre=Txtnomtera.Text,
                    Correo=Txtcorreoter.Text,
                    Contrasena=Txtpasstera.Text,
                     FechaRegistro = DateTime.Now
                };
                UwuSelf.Usuarios.Add(Ado_Usu);
               UwuSelf.SaveChanges();
            }


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("RePsicolo.aspx"); // Cambia "Pagina2.aspx" por la ruta que necesites
        }

        /* protected void Button2_Click(object sender, EventArgs e)
         {
             string vBus = TxtBusqtera.Text.Trim();

             using (SelfLoveBDEntities uwu2Grid = new SelfLoveBDEntities())
             {
                 IQueryable<Usuarios> oNombres;

                 // Si el texto es numérico, busca por ID; si no, por nombre
                 if (int.TryParse(vBus, out int idBuscado))
                 {
                     oNombres = from q in uwu2Grid.Usuarios
                                where q.Id == idBuscado
                                select q;
                 }
                 else
                 {
                     oNombres = from q in uwu2Grid.Usuarios
                                where q.Nombre.Contains(vBus)
                                select q;
                 }

                 List<Usuarios> lista = oNombres.ToList();

                 if (lista.Count > 0)
                 {
                     var Nomtera = lista[0];

                     Txtnomtera.Text = Nomtera.Nombre;
                     Txtcorreoter.Text = Nomtera.Correo;
                     Txtpasstera.Text = Nomtera.Contrasena.ToString();
                 }

                 // Mostrar todo en el GridView

                 GridView1.DataSource = lista;
                 GridView1.DataBind();
             }
         }*/
    }
}