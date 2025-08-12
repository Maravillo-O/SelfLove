<%@ Page Language="C#" AutoEventWireup="False" CodeBehind="WebForm1.aspx.cs" Inherits="Self_Love_EF.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Self Love</title>
 <link href="style.css" rel="stylesheet"/>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
             <header>
    <div class="left-column">
      <a href="WebForm1.aspx" class="logo">
    <h1>Self Love</h1>
</a>
    </div>

    <div class="center-nav">
        <nav>
            <div class="center-nav">
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav ms-auto">

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">
                            Terapeutas
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Perfil 1</a></li>
                            <li><a class="dropdown-item" href="#">Perfil 2</a></li>
                            <li><a class="dropdown-item" href="#">Perfil 3</a></li>
                        </ul>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">
                            Precios
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Mensual</a></li>
                            <li><a class="dropdown-item" href="#">Trimestral</a></li>
                            <li><a class="dropdown-item" href="#">Anual</a></li>
                        </ul>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">
                            Cursos
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Autoestima</a></li>
                            <li><a class="dropdown-item" href="#">Ansiedad</a></li>
                            <li><a class="dropdown-item" href="#">Relaciones</a></li>
                        </ul>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">
                            Contacto
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">WhatsApp</a></li>
                            <li><a class="dropdown-item" href="#">Correo</a></li>
                            <li><a class="dropdown-item" href="#">Formulario Libros</a></li>
                        </ul>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
</div>

        </nav>
    </div>
              <div class="auth-buttons">
<asp:Button ID="Button1" runat="server" Text="Log In" CssClass="btn btn-white" OnClick="Button1_Click" />
<asp:Button ID="Button3" runat="server" Text="Sign In" CssClass="btn btn-blue" OnClick="Button2_Click" />

 </div>
</header>
                
     <div id="carouselExample" class="carousel slide my-4" data-bs-ride="carousel">
  <div class="carousel-inner">
    
    <div class="carousel-item active">
        <img src="images/mind.jpg" class="d-block carousel-img" alt="Imagen mente">
      <div class="carousel-caption d-none d-md-block text-dark bg-white bg-opacity-50 rounded p-2">
        <h5>Conecta con tu mente</h5>
        <p>Encuentra el equilibrio emocional que necesitas</p>
      </div>
    </div>
    
    <div class="carousel-item">
      <img src="/images/flowers.jpg" class="d-block carousel-img" alt="Imagen flores">
      <div class="carousel-caption d-none d-md-block text-dark bg-white bg-opacity-50 rounded p-2">
        <h5>Florece desde dentro</h5>
        <p>Cultiva amor propio y bienestar personal</p>
      </div>
    </div>
    
    <div class="carousel-item">
      <img src="/images/momii.jpg" class="d-block carousel-img" alt="Imagen mamá">
      <div class="carousel-caption d-none d-md-block text-dark bg-white bg-opacity-50 rounded p-2">
        <h5>Apoyo familiar</h5>
        <p>Tu red de apoyo también es parte de tu crecimiento</p>
      </div>
    </div>
    
  </div>

  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>
        <p>
        <asp:Button ID="Button2" runat="server" Text="Registro Publicaciones" CssClass="btn btn-primary rounded-pill" OnClick="Button2_Click" />
        </p>
    </form>
             </body>
</html>
