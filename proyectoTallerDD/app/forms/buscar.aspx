<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="buscar.aspx.cs" Inherits="proyectoTallerDD.app.forms.buscar" %>

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
            aria-expanded="false"><i class="far fa-user"></i> usuario</button>
         <div class="dropdown-menu accionMenu">
             <a class="dropdown-item " href="#" ><i class="fas fa-cogs"></i>  Editar Perfil</a>
             <a class="dropdown-item" href="#"><i class="far fa-edit"></i> Mis Postulaciones</a>
             <a class="dropdown-item" href="#"><i class="fas fa-sign-out-alt"></i> Cerrar sesion</a>
         </div>
    </div>
    </header>
    <div class="container">
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-3">
                <h2>Región</h2>
            </div>
            <div class="col-sm-2"></div>
            <div class="col-sm-3">
                <h2>Area de Interes</h2>
            </div>
            <div class="col-sm-2"></div>
        </div>
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-3">
            <div id="muniCProvincia" class="divCombo">
		    <select class="form-control form-control-md" name="muniCProvincia" onchange="cargarMunicipios();" id="muniCProvinciaSelect">
		        <option value="0" selected="">REGIÓN</option>
                <option value="2">ANTOFAGASTA</option>
                <option value="15">ARICA Y PARINACOTA</option>
                <option value="3">ATACAMA</option>
                <option value="11">AYSEN</option>
                <option value="8">BIOBÍO</option>
                <option value="4">COQUIMBO</option>
                <option value="9">LA ARAUCANÍA</option>
                <option value="6">LIBERTADOR 0'HIGGINS</option>
                <option value="10">LOS LAGOS</option>
                <option value="14">LOS RÍOS</option>
                <option value="12">MAGALLANES Y ANTÁRTIDA</option>
                <option value="7">MAULE</option>
                <option value="13">METROPOLITANA</option>
                <option value="1">TARAPACÁ</option>
                <option value="5">VALPARAÍSO</option></select>
   		    </div>
        </div>
        <div class="col-sm-2"></div>
        <div class="col-sm-3">
            <div class="divCombo" id="divCombo">
            <select id="SelectInt" class="form-control form-control-md">
                <option value="0" selected=""> Seleccione Area De Interes</option>
                <option value="1"> Desarrollo Web</option>
                <option value="2"> Java</option>
                <option value="3"> php</option>
            </select>
            </div>
        </div>
        <div class="col-sm-2"></div>
        </div>
    </div>
    </form>
</body>
</html>
