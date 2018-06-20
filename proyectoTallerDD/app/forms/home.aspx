<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="proyectoTallerDD.app.forms.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Practicando.cl</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">

    <link href="../Styles/styleMenu.css" rel="stylesheet" />
    <link href="../Styles/paguno.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <header id="header">
    <div class="inner">
        <a href="home.aspx" class="logo"><i class="fas fa-hands-helping"></i> Practicando.cl</a>
    </div>    
    <div class="btn-group">
         <button type="button" class="btn  btn-dark btn-menu dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" 
            aria-expanded="false">ENTRAR</button>
         <div class="dropdown-menu accionMenu">
             <a class="dropdown-item " href="crearacceso.aspx">Registrar Usuario</a>
             <a class="dropdown-item" href="login.aspx">Login</a>
         </div>
    </div>
    </header>
    <div class="fondo">
    <div class="container">
        <h1 class="titulohead">Bienvenido, ¿Que Buscas?</h1>
        <br />
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-4">
                <div>
                <h2 class="titulo2">Empresas</h2>
                <p class="pr">Si quieres publicar tu aviso hazlo facil ingresa acá y publica en 3 simples pasos, logea, llena tu perfil y publica</p>
                <div class="boton" align="center">
                    <a href="login.aspx"  class="btn btn-dark"><i class="fab fa-hotjar"></i> Publica AQUI</a>
                </div>
                </div>
            </div>
            <div class="col-sm-2"></div>
            <div class="col-sm-4">
                <h2 class="titulo2">Estudiante</h2>
                <p class="pr">Si andas perdido y buscas un lugar de practicas apreta acá, logea y busca lo que se acomoda a tu perfil.</p>
                <div class="boton" align="center">
                    <a href="login.aspx" class="btn btn-dark"><i class="fas fa-search"></i> Buscar</a>
                </div>
            </div>
            <div class="col-sm-1"></div>
        </div>
        <div class="row d-flex justify-content-around">
            <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img class="d-block w-100" src="../Images/banner.png" alt="HOLA 1" />
                </div>
                <div class="carousel-item">
                  <img class="d-block w-100" src="../Images/banner.png" alt="HOLA 2" />
                </div>
                <div class="carousel-item">
                  <img class="d-block w-100" src="../Images/banner.png" alt="HOLA 3" />
                </div>
              </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
