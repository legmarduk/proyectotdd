<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="publicar.aspx.cs" Inherits="proyectoTallerDD.app.forms.Postular" %>

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
    <header id="header">
    <div class="inner">
        <a href="home.aspx" class="logo"><i class="fas fa-hands-helping"></i> Practicando.cl</a>
    </div>    
    <div class="btn-group">
           <button type="button" class="btn  btn-dark btn-menu dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" 
            aria-expanded="false"><i class="far fa-user"></i> usuario </button>
         <div class="dropdown-menu accionMenu">
             <a class="dropdown-item " href="perfilestudiante.aspx" ><i class="fas fa-cogs"></i>  Editar Perfil</a>
             <a class="dropdown-item" href="#"><i class="far fa-edit"></i> Mis Postulaciones</a>
             <a class="dropdown-item" href="#"><i class="fas fa-sign-out-alt"></i> Cerrar sesion</a>
         </div>
    </div>
    </header>
    <form id="form1" runat="server">
        <div class="container">
            <asp:Label runat="server" CssClass="col-sm-3">Titulo</asp:Label>
            <br />
            <asp:TextBox runat="server" CssClass="col-sm-4" ID="titulo"></asp:TextBox>
            <br />
            <br />
            <div class="row">
            <div class="col-sm-6">
                <asp:Label runat="server" CssClass="col-sm-12">Descripcion</asp:Label>
                <asp:TextBox runat="server" CssClass="col-sm-12" Height="100px"></asp:TextBox>
            </div>
            <div class="col-sm-6">
                <asp:Label runat="server" CssClass="col-sm-12">Requerimientos</asp:Label>
                <asp:TextBox runat="server" CssClass="col-sm-12" Height="100px"></asp:TextBox>
            </div>
            </div>
            <br />
            <div class="row">
                <div class="col-sm-6">
                    <asp:Label runat="server" CssClass="col-sm-12">Pago</asp:Label>
                    <asp:DropDownList ID="DropDownList1" CssClass="col-sm-12" OnSelectedIndexChanged="setear" runat="server">
                        <asp:ListItem Value="0">Sin especificar</asp:ListItem>
                        <asp:ListItem Value="0">No</asp:ListItem>
                        <asp:ListItem Value="1">Si</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox runat="server" CssClass="col-sm-12" ID="cantidad" TextMode="Number"></asp:TextBox>
                </div>
                <div class="col-sm-6">
                    <asp:Label runat="server" CssClass="col-sm-6">Horas</asp:Label>
                    <asp:TextBox runat="server" CssClass="col-sm-6"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <asp:Label runat="server" CssClass="col-sm-3">Compatibilidad con Estudios :</asp:Label>
                <asp:RadioButton ID="Si" runat="server" /> SI
                <div class="col-sm-1"></div>
                <asp:RadioButton ID="No" runat="server" /> NO
            </div>
        </div>
    </form>
</body>
</html>
