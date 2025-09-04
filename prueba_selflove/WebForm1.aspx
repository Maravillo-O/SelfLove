<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="prueba_selflove.WebForm1" %>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Test Selflove</title>
  <link rel="stylesheet" href="styles.css">
   
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
</head>
<body>
  <form id="form1" runat="server">
  <div id="pregunta1" class="pregunta">
    <asp:Label ID="lblpregunta_1" runat="server" Text="¿Te has sentido triste o vacío la mayor parte del día durante las últimas dos semanas?"></asp:Label><br /><br />
    <asp:RadioButtonList ID="Rbl_pregunta1" runat="server">
      <asp:ListItem Value="0">Nunca</asp:ListItem>
      <asp:ListItem Value="1">Rara Vez</asp:ListItem>
      <asp:ListItem Value="2">A veces</asp:ListItem>
      <asp:ListItem Value="3">Frecuentemente</asp:ListItem>
      <asp:ListItem Value="4">Siempre</asp:ListItem>
    </asp:RadioButtonList>
      <asp:GridView ID="GridView1" runat="server">
      </asp:GridView>
  </div>

  <div id="pregunta2" class="pregunta" style="display:none;">
    <asp:Label ID="lblpregunta_2" runat="server" Text="¿Has perdido el interés o placer en actividades que antes disfrutabas?"></asp:Label><br /><br />
    <asp:RadioButtonList ID="Rbl_pregunta2" runat="server">
      <asp:ListItem Value="0">Nunca</asp:ListItem>
      <asp:ListItem Value="1">Rara Vez</asp:ListItem>
      <asp:ListItem Value="2">A veces</asp:ListItem>
      <asp:ListItem Value="3">Frecuentemente</asp:ListItem>
      <asp:ListItem Value="4">Siempre</asp:ListItem>
    </asp:RadioButtonList>
  </div>

      <div id="pregunta3" class="pregunta" style="display:none;">
  <asp:Label ID="Label3" runat="server" Text="¿Has tenido dificultad para dormir o has dormido en exceso?"></asp:Label><br /><br />
  <asp:RadioButtonList ID="Rbl_pregunta3" runat="server">
    <asp:ListItem Value="0">Nunca</asp:ListItem>
    <asp:ListItem Value="1">Rara Vez</asp:ListItem>
    <asp:ListItem Value="2">A veces</asp:ListItem>
    <asp:ListItem Value="3">Frecuentemente</asp:ListItem>
    <asp:ListItem Value="4">Siempre</asp:ListItem>
  </asp:RadioButtonList>
</div>

            <div id="pregunta4" class="pregunta" style="display:none;">
  <asp:Label ID="Label4" runat="server" Text="¿Te sientes sin energía o constantemente fatigado/a?"></asp:Label><br /><br />
  <asp:RadioButtonList ID="Rbl_pregunta4" runat="server">
    <asp:ListItem Value="0">Nunca</asp:ListItem>
    <asp:ListItem Value="1">Rara Vez</asp:ListItem>
    <asp:ListItem Value="2">A veces</asp:ListItem>
    <asp:ListItem Value="3">Frecuentemente</asp:ListItem>
    <asp:ListItem Value="4">Siempre</asp:ListItem>
  </asp:RadioButtonList>
</div>

            <div id="pregunta5" class="pregunta" style="display:none;">
  <asp:Label ID="Label5" runat="server" Text="¿Has tenido pensamientos negativos sobre ti mismo/a, como sentirte inútil o culpable?"></asp:Label><br /><br />
  <asp:RadioButtonList ID="Rbl_pregunta5" runat="server">
    <asp:ListItem Value="0">Nunca</asp:ListItem>
    <asp:ListItem Value="1">Rara Vez</asp:ListItem>
    <asp:ListItem Value="2">A veces</asp:ListItem>
    <asp:ListItem Value="3">Frecuentemente</asp:ListItem>
    <asp:ListItem Value="4">Siempre</asp:ListItem>
  </asp:RadioButtonList>
</div>

                   <div id="pregunta6" class="pregunta" style="display:none;">
  <asp:Label ID="Label6" runat="server" Text="¿Sientes preocupación excesiva por cosas cotidianas, incluso cuando no hay motivo claro?"></asp:Label><br /><br />
  <asp:RadioButtonList ID="Rbl_pregunta6" runat="server">
    <asp:ListItem Value="0">Nunca</asp:ListItem>
    <asp:ListItem Value="1">Rara Vez</asp:ListItem>
    <asp:ListItem Value="2">A veces</asp:ListItem>
    <asp:ListItem Value="3">Frecuentemente</asp:ListItem>
    <asp:ListItem Value="4">Siempre</asp:ListItem>
  </asp:RadioButtonList>
</div>

                         <div id="pregunta7" class="pregunta" style="display:none;">
  <asp:Label ID="Label7" runat="server" Text="¿Te sientes nervioso/a, inquieto/a o con dificultad para relajarte?"></asp:Label><br /><br />
  <asp:RadioButtonList ID="Rbl_pregunta7" runat="server">
    <asp:ListItem Value="0">Nunca</asp:ListItem>
    <asp:ListItem Value="1">Rara Vez</asp:ListItem>
    <asp:ListItem Value="2">A veces</asp:ListItem>
    <asp:ListItem Value="3">Frecuentemente</asp:ListItem>
    <asp:ListItem Value="4">Siempre</asp:ListItem>
  </asp:RadioButtonList>
</div>

                               <div id="pregunta8" class="pregunta" style="display:none;">
  <asp:Label ID="Label8" runat="server" Text="¿Has experimentado taquicardia, sudoración o temblores sin causa médica aparente?"></asp:Label><br /><br />
  <asp:RadioButtonList ID="Rbl_pregunta8" runat="server">
    <asp:ListItem Value="0">Nunca</asp:ListItem>
    <asp:ListItem Value="1">Rara Vez</asp:ListItem>
    <asp:ListItem Value="2">A veces</asp:ListItem>
    <asp:ListItem Value="3">Frecuentemente</asp:ListItem>
    <asp:ListItem Value="4">Siempre</asp:ListItem>
  </asp:RadioButtonList>
</div>

                                     <div id="pregunta9" class="pregunta" style="display:none;">
  <asp:Label ID="Label9" runat="server" Text="¿Evitas situaciones por miedo a sentir ansiedad o pánico?"></asp:Label><br /><br />
  <asp:RadioButtonList ID="Rbl_pregunta9" runat="server">
    <asp:ListItem Value="0">Nunca</asp:ListItem>
    <asp:ListItem Value="1">Rara Vez</asp:ListItem>
    <asp:ListItem Value="2">A veces</asp:ListItem>
    <asp:ListItem Value="3">Frecuentemente</asp:ListItem>
    <asp:ListItem Value="4">Siempre</asp:ListItem>
  </asp:RadioButtonList>
</div>

                                           <div id="pregunta10" class="pregunta" style="display:none;">
  <asp:Label ID="Label10" runat="server" Text="¿Tienes dificultad para concentrarte debido a tus pensamientos o preocupaciones?"></asp:Label><br /><br />
  <asp:RadioButtonList ID="Rbl_pregunta10" runat="server">
    <asp:ListItem Value="0">Nunca</asp:ListItem>
    <asp:ListItem Value="1">Rara Vez</asp:ListItem>
    <asp:ListItem Value="2">A veces</asp:ListItem>
    <asp:ListItem Value="3">Frecuentemente</asp:ListItem>
    <asp:ListItem Value="4">Siempre</asp:ListItem>
  </asp:RadioButtonList>
</div>

                                                 <div id="pregunta11" class="pregunta" style="display:none;">
  <asp:Label ID="Label11" runat="server" Text="¿Has perdido recientemente a una persona significativa para ti?"></asp:Label><br /><br />
  <asp:RadioButtonList ID="Rbl_pregunta11" runat="server">
    <asp:ListItem Value="0">Nunca</asp:ListItem>
    <asp:ListItem Value="1">Rara Vez</asp:ListItem>
    <asp:ListItem Value="2">A veces</asp:ListItem>
    <asp:ListItem Value="3">Frecuentemente</asp:ListItem>
    <asp:ListItem Value="4">Siempre</asp:ListItem>
  </asp:RadioButtonList>
</div>


                                                       <div id="pregunta12" class="pregunta" style="display:none;">
  <asp:Label ID="Label12" runat="server" Text="¿Sientes un dolor intenso emocional que aparece de forma repentina o constante?"></asp:Label><br /><br />
  <asp:RadioButtonList ID="Rbl_pregunta12" runat="server">
    <asp:ListItem Value="0">Nunca</asp:ListItem>
    <asp:ListItem Value="1">Rara Vez</asp:ListItem>
    <asp:ListItem Value="2">A veces</asp:ListItem>
    <asp:ListItem Value="3">Frecuentemente</asp:ListItem>
    <asp:ListItem Value="4">Siempre</asp:ListItem>
  </asp:RadioButtonList>
</div>

                                                             <div id="pregunta13" class="pregunta" style="display:none;">
  <asp:Label ID="Label13" runat="server" Text="¿Sientes un dolor intenso emocional que aparece de forma repentina o constante?"></asp:Label><br /><br />
  <asp:RadioButtonList ID="Rbl_pregunta13" runat="server">
    <asp:ListItem Value="0">Nunca</asp:ListItem>
    <asp:ListItem Value="1">Rara Vez</asp:ListItem>
    <asp:ListItem Value="2">A veces</asp:ListItem>
    <asp:ListItem Value="3">Frecuentemente</asp:ListItem>
    <asp:ListItem Value="4">Siempre</asp:ListItem>
  </asp:RadioButtonList>
</div>

                                                                   <div id="pregunta14" class="pregunta" style="display:none;">
  <asp:Label ID="Label14" runat="server" Text="¿Evitas recordar o hablar de la persona que perdiste por el dolor que te causa?"></asp:Label><br /><br />
  <asp:RadioButtonList ID="Rbl_pregunta14" runat="server">
    <asp:ListItem Value="0">Nunca</asp:ListItem>
    <asp:ListItem Value="1">Rara Vez</asp:ListItem>
    <asp:ListItem Value="2">A veces</asp:ListItem>
    <asp:ListItem Value="3">Frecuentemente</asp:ListItem>
    <asp:ListItem Value="4">Siempre</asp:ListItem>
  </asp:RadioButtonList>
</div>

                                                                        <div id="pregunta15" class="pregunta" style="display:none;">
  <asp:Label ID="lblpregunta_15" runat="server" Text="¿Sientes que tu vida ha perdido sentido desde la pérdida?"></asp:Label>
  <asp:RadioButtonList ID="Rbl_pregunta15" runat="server">
    <asp:ListItem Value="0">Nunca</asp:ListItem>
    <asp:ListItem Value="1">Rara vez</asp:ListItem>
    <asp:ListItem Value="2">A veces</asp:ListItem>
    <asp:ListItem Value="3">Frecuentemente</asp:ListItem>
    <asp:ListItem Value="4">Siempre</asp:ListItem>
  </asp:RadioButtonList>

  <!-- Botón final -->
  <div style="margin-top: 2rem;">
   <asp:Button ID="btnconocer" runat="server" Text="Conocer psicólogo" OnClick="btnconocer_Click" CssClass="btn-final" />
    <asp:Label ID="Label1" runat="server" Text="" />
  </div>
</div>

  <div style="margin-top: 20px;">
    <button type="button" onclick="anterior()">Anterior</button>
    <button type="button" onclick="siguiente()">Siguiente</button>
   

      <asp:Label ID="lblResultado" runat="server" Text="Label"></asp:Label>

  </div>
</form>
     <script src="navegacion.js"></script>
</body>
</html>