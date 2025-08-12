<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RePublicaciones.aspx.cs" Inherits="Self_Love_EF.RePacient" %>
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
     <button class="btn btn-white" href="#">Log In </button>
     <button class="btn btn-blue" href="#">Sign In </button>
 </div>
</header>
        <div class="mb-3">
            <asp:Label ID="Label6" runat="server" Text="REGISTRO LIBROS"></asp:Label>
            <br />
            Titulo<asp:TextBox ID="Txttit" runat="server" CssClass="form-control" OnTextChanged="Txttit_TextChanged"></asp:TextBox>
        </div>
        <div class="mb-3">
            <asp:Label ID="Label2" runat="server" CssClass="form-label" Text="Contenido"></asp:Label>
            <asp:TextBox ID="Txtcont" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="mb-3">
            <asp:Label ID="Label3" runat="server" CssClass="form-label" Text="Autor"></asp:Label>
            <asp:TextBox ID="Txtautor" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="mb-3">
        </div>
        <div class="d-grid gap-2">
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary rounded-pill" OnClick="Button1_Click" Text="Registro" />
            <br />
            <asp:Label ID="Label5" runat="server" CssClass="form-label" Text="Busqueda"></asp:Label>
            <asp:TextBox ID="TxtBNP" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="mt-4">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" CssClass="btn btn-primary rounded-pill" Text="Busqueda" />
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-hover" />
        </div>
        <div>
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" CssClass="btn btn-primary rounded-pill" OnClick="Button3_Click1"  Text="Return" />
        </div>
        <div>
        </div>
    </form>
</body>
</html>
