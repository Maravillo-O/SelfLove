<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReUsuarios.aspx.cs" Inherits="Self_Love_EF.ReTerapeu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Count</title>
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
     <button class="btn btn-white" href="#">Log In </button>
     <button class="btn btn-blue" href="#">Sign In </button>
 </div>
</header>
        <div class="mb-3">
       <div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow-lg border-0 rounded-3">
                <div class="card-header text-center bg-primary text-white">
                    REGISTRO USUARIOS
                </div>
                <div class="card-body">
                    <div class="mb-3">
                        <asp:Label ID="Label1" runat="server" CssClass="form-label" Text="Nombre"></asp:Label>
                        <asp:TextBox ID="Txtnomtera" runat="server" CssClass="form-control" placeholder="Nombre"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <asp:Label ID="Label3" runat="server" CssClass="form-label" Text="Correo"></asp:Label>
                        <asp:TextBox ID="Txtcorreoter" runat="server" CssClass="form-control" placeholder="Correo"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <asp:Label ID="Label4" runat="server" CssClass="form-label" Text="Contraseña"></asp:Label>
                        <asp:TextBox ID="Txtpasstera" runat="server" CssClass="form-control" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
                    </div>

                    <div class="d-grid gap-2">
                        <asp:Button ID="Button" runat="server" CssClass="btn btn-primary rounded-pill" OnClick="Button1_Click" Text="Registrar" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

             
    <div>
                          <asp:Button ID="Button5" runat="server" CssClass="btn btn-primary rounded-pill" OnClick="Button5_Click" Text="Registro para Psicologos" />
    </div>
</form>     
</body>
</html>
