<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="proyectoTallerDD.app.forms.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
<link href="../Styles/styleMenu.css" rel="stylesheet" />

    <title></title>
</head>
<body>
    <header id="header">
    <div class="inner">
        <a href="home.aspx" class="logo"><i class="fas fa-hands-helping"></i> Practicando.cl</a>
    </div>    
    </header>

    <div class="d-flex justify-content-around">
        <h1>LOGIN</h1>
    </div>
    <br />
    <form  runat="server" method="post" id="formlogin" action="">
         <div class="asd container">
      
        <div class="row panelCreacion" >
            <div class="col-3"></div><!-- panel vacio para centrar-->
            <br />
            <div class="col-md-6">
                
                <div class="form-group"><!-- datos de usuario-->
                    <br />
                    <div class="d-flex justify-content-around">
                        <label><i class="fas fa-user"></i> Usuario</label>
                    </div>
                   <asp:TextBox id="nombreUsuario" runat="server" CssClass="form-control"/>
                    <!--<input type="text" name="nombreUsuario" id="nombreUsuario" class="form-control" id="nombreUsuario"/>-->
                </div> 
                
                <div class="form-group"><!-- datos de contraseña-->
                    <br />
                    <div class="d-flex justify-content-around">
                    <label><i class="fas fa-key"></i> Contraseña</label>
                        </div>
                     <asp:TextBox id="passwordUsuario" runat="server" TextMode="Password" CssClass="form-control" />
                    <!--<input type="password" name="passwordUsuario" id="passwordUsuario" class="form-control"id="passwordUsuario"/>-->
                </div>
              
                <!--boton para crear el perfil-->
                
                <div class="col-md-12" >
                    <br />
                    <div class="d-flex justify-content-around">
                   <!-- <button type="button" class="btn btn-outline-success" id="botonInciarSesion"  runat="server" OnClick="logearUsuario">
                        <i class="fas fa-door-open"></i> Iniciar Sesion</button>-->
                         <asp:Button  ID="enviarForm" runat="server" Text="Ingresar" CssClass="btn btn-success" OnClick="logearUsuario"/>
                    </div>
                </div>

            </div>
            
        </div>
           

    </div>
    </form>
</body>
</html>
