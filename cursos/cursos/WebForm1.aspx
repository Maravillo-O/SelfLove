<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="cursos.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/style.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
    <style>
        nav button {
            border: none;
            padding: 8px 15px;
            border-radius: 5px; 
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            margin-left: 10px;
        }

        nav button a {
            text-decoration: none;
            display: block;
            color: inherit;
        }
        .log-in-button {
            background-color: white;
            color: black;
            border: 2px solid black;
            border-radius: 5px;
            padding: 4px 20px;
        }

        .log-in-button:hover {
            background-color: #f0f0f0;
        }

        .sign-up-button {
            background-color: #f3a6ed;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 4px 20px;
        }

        .sign-up-button:hover {
            background-color: #e095dc;
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            align-items: center;
        }

        nav ul li {
            margin-right: 20px;
        }

        nav ul li a {
            text-decoration: none;
        }
        .selflove-logo {
            font-weight: bold;
            color: black !important;
            text-decoration: none !important;
            font-size: 28px;
            margin-right: auto;
        }

        .selflove-logo a {
            color: black !important;
            text-decoration: none !important;
        }
    </style>
    <form id="form1" runat="server">
        <div class="container">
            <header>
                <nav class="d-flex justify-content-between align-items-center py-3">
                    <div class="selflove-logo">
                        <a href="#">SelfLove</a>
                    </div>
                    <ul class="d-flex mb-0 ps-0">
                        <li class="nav-item dropdown" style="font-weight: bold;">
                            <a class="nav-link dropdown-toggle text-dark" href="#" id="navbarDropdownTerapeutas" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Terapeutas
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownTerapeutas">
                                <li><a class="dropdown-item" href="#">Todos los terapeutas</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown" style="font-weight: bold;">
                            <a class="nav-link dropdown-toggle text-dark" href="#" id="navbarDropdownPrecios" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Precios
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownPrecios">
                                </ul>
                        </li>
                        <li><a href="#" class="text-dark">Cursos</a></li>
                        <li><a href="#" class="text-dark">Contacto</a></li>
                        <li><button type="button" class="log-in-button"><a href="#">Log In</a></button></li>
                        <li><button type="button" class="sign-up-button"><a href="#">Sign Up</a></button></li>
                    </ul>
                </nav>
            </header>
        </div>

        <div class="container mt-4">
            <h3 class="text-center mb-3">CURSOS</h3>
            <hr />

            <div class="card p-3 mb-4">
                <h4 class="text-center mb-3">BÚSQUEDA DE CURSOS</h4>
                <div class="row g-3 align-items-center justify-content-center"> 
                    <div class="col-12 col-md-8">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control form-control-lg" Placeholder="Buscar por nombre de curso..."></asp:TextBox>
                    </div>
                    <div class="col-12 col-md-auto d-grid gap-2 d-md-block"> 
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-info btn-lg" Text="Buscar" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" CssClass="btn btn-secondary btn-lg mt-2 mt-md-0" Text="Reiniciar" OnClick="Button2_Click" />
                    </div>
                </div>
            </div>

            <div class="grid-container">
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-hover"></asp:GridView>
            </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>