using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prueba_selflove
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnconocer_Click(object sender, EventArgs e)
        {
            // Captura de respuestas
            int[] respuestas = new int[15];

            try
            {
                respuestas[0] = int.Parse(Rbl_pregunta1.SelectedValue);
                respuestas[1] = int.Parse(Rbl_pregunta2.SelectedValue);
                respuestas[2] = int.Parse(Rbl_pregunta3.SelectedValue);
                respuestas[3] = int.Parse(Rbl_pregunta4.SelectedValue);
                respuestas[4] = int.Parse(Rbl_pregunta5.SelectedValue);
                respuestas[5] = int.Parse(Rbl_pregunta6.SelectedValue);
                respuestas[6] = int.Parse(Rbl_pregunta7.SelectedValue);
                respuestas[7] = int.Parse(Rbl_pregunta8.SelectedValue);
                respuestas[8] = int.Parse(Rbl_pregunta9.SelectedValue);
                respuestas[9] = int.Parse(Rbl_pregunta10.SelectedValue);
                respuestas[10] = int.Parse(Rbl_pregunta11.SelectedValue);
                respuestas[11] = int.Parse(Rbl_pregunta12.SelectedValue);
                respuestas[12] = int.Parse(Rbl_pregunta13.SelectedValue);
                respuestas[13] = int.Parse(Rbl_pregunta14.SelectedValue);
                respuestas[14] = int.Parse(Rbl_pregunta15.SelectedValue);
               

                // Mostrar resultado solo si todo fue exitoso
                Label1.Text = "Respuestas capturadas correctamente.";
                Label1.Visible = true;
            }
            catch (FormatException)
            {
                Label1.Text = "Por favor, selecciona una opción válida en todas las preguntas.";
                Label1.Visible = true;
            }

            // Evaluación emocional
            int depresion = respuestas.Take(5).Count(r => r >= 3);
            int ansiedad = respuestas.Skip(5).Take(5).Count(r => r >= 3);
            int duelo = respuestas.Skip(10).Take(5).Count(r => r >= 3);
            bool perdidaHaceMasDe6Meses = true;

            string resultado = "";
            string especialidadDetectada = "";

            // Diagnóstico emocional
            if (depresion >= 3)
            {
                resultado += "⚠ Posibles signos de depresión.<br />";
                especialidadDetectada = "Psicología Clínica";
            }
            if (ansiedad >= 3)
            {
                resultado += "⚠ Posibles signos de ansiedad.<br />";
                if (string.IsNullOrEmpty(especialidadDetectada))
                    especialidadDetectada = "Psicología Transpersonal";
            }
            if (duelo >= 3 && perdidaHaceMasDe6Meses)
            {
                resultado += "⚠ Posibles signos de duelo complicado.<br />";
                if (string.IsNullOrEmpty(especialidadDetectada))
                    especialidadDetectada = "Psicoterapia Humanista";
            }
            if (string.IsNullOrEmpty(resultado))
            {
                resultado = "✅ No se detectan indicadores significativos según tus respuestas.";
                especialidadDetectada = "Psicología Positiva";
            }

            // Consulta de terapeuta recomendado
            using (SelfLoveEntities DBFPER = new SelfLoveEntities())
            {
                var consulta = DBFPER.Terapeutas
                    .Where(t => t.Especialidad == especialidadDetectada)
                    .OrderByDescending(t => t.Experiencia)
                    .ToList();

                if (consulta.Any())
                {
                    var terapeuta = consulta.First();
                    resultado += $"<br /><br />👩‍⚕️ Recomendamos contactar a un especialista en <strong>{terapeuta.Especialidad}</strong>.<br />" +
                                 $"🧑‍⚕️ <strong>Experiencia:</strong> {terapeuta.Experiencia} años<br />" +
                                 $"📄 <strong>Descripción:</strong> {terapeuta.Descripcion}";
                }
                else
                {
                    resultado += "<br /><br />⚠ No se encontró un terapeuta disponible en esta especialidad.";
                }

                // Mostrar lista en GridView
                GridView1.DataSource = consulta;
                GridView1.DataBind();
            }

            // Mostrar resultado textual
            lblResultado.Text = resultado;
        }
    }
}