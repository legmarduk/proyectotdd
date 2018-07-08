<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="perfilempresa.aspx.cs" Inherits="proyectoTallerDD.app.forms.perfilempresaaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
<link href="../Styles/styleMenu.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server" method="post">

     <div class="d-flex justify-content-around">
          <h1>DATOS EMPRESA</h1>           
     </div>
<br />
     <asp:ValidationSummary runat="server" HeaderText="" DisplayMode="BulletList" CssClass="alert alert-danger"/>
        <div class="container">
               <div class="row">
                   
                   <div class="col-md-6"> <!--seccion izquierda -->
                        
                        <div class="form-group">
                            <label> <i class="fas fa-industry"></i> Nombre Empresa</label>
                            <asp:TextBox id="nombreEmpresa" runat="server" CssClass="form-control"   />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="nombreEmpresa"
                                ErrorMessage="Nombre es Campo Obligatorio" Display="None"></asp:RequiredFieldValidator>
				        </div>
                        
                        <div class="form-group">
                            <label><i class="fas fa-phone"></i> Telefeno Empresa</label>
                            <asp:TextBox id="telefonoEmpresa" runat="server" CssClass="form-control"   />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="telefonoEmpresa"
                                ErrorMessage="Telefono es Campo Obligatorio" Display="None"></asp:RequiredFieldValidator>
				        </div>

                        <div class="form-group">
                            <label><i class="fas fa-home"></i> Direccion Empresa</label>
                            <asp:TextBox id="direccionEmpresa" runat="server" CssClass="form-control"   />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="direccionEmpresa"
                                ErrorMessage="Direccion es Campo Obligatorio" Display="None"></asp:RequiredFieldValidator>
				        </div>
                       
                     
                   </div>
                   
                   
                   <div class="col-md-6"> <!--seccion derecha -->
                    
                        <div class="form-group">
                            <label><i class="fas fa-at"></i> Email Empresa</label>
                            <asp:TextBox id="mailEmpresa" runat="server" CssClass="form-control" TextMode="Email"  />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="mailEmpresa"
                                ErrorMessage="Email es Campo Obligatorio" Display="None"></asp:RequiredFieldValidator>
				        </div>

                       
                        <div class="form-group">
                            <label><i class="fas fa-wrench"></i> Rubro Empresa</label>
                            <asp:TextBox id="rubroEmpresa" runat="server" CssClass="form-control"   />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="rubroEmpresa"
                                ErrorMessage="Rubro es Campo Obligatorio" Display="None"></asp:RequiredFieldValidator>
				        </div>

                       <div class="form-group">
					        <label><i class="fas fa-comment-alt"></i> Descripcion</label>
					            <asp:TextBox id="descripcionEmpresa" runat="server" CssClass="form-control" Height="100px"
                         TextMode="MultiLine" />	
                     		
				        </div>
                    
                   </div>

                   <div class="col-md-12 d-flex justify-content-around" >
                            <asp:Button  ID="enviarForm" runat="server" Text="Ingresar" CssClass="btn btn-success"  OnClick="ModificarPerfilEmpresa"/>
                   </div>

               </div>
        </div>
 



    </form>
</body>
</html>
