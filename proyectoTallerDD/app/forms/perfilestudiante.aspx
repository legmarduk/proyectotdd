<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="perfilestudiante.aspx.cs" Inherits="proyectoTallerDD.app.forms.perfilestudiante" %>

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
    <header id="header">
    <div class="inner">
        <a href="home.aspx" class="logo"><i class="fas fa-hands-helping"></i> Practicando.cl</a>
    </div>    
    </header>


    <form id="form1"  runat="server" method="post" a>
            
       

     <div class="d-flex justify-content-around">
          <h1>DATOS ESTUDIANTE</h1>
                    
     </div>



    <br />
            <asp:ValidationSummary runat="server" HeaderText="" DisplayMode="BulletList" CssClass="alert alert-danger"/>
        <div class="container">
		<div class="row panelForm">
			<div class="col-md-6"> <!--seccion izquierda-->
				<div class="form-group">
					<label class="lab"><i class="fas fa-user"></i> Nombre</label>
					<asp:TextBox id="nombreE" runat="server" CssClass="form-control"   />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="nombreE"
                                ErrorMessage="Nombre es Campo Obligatorio" Display="None"></asp:RequiredFieldValidator>
				</div>

				<div class="form-group">
					<label class="lab"><i class="fas fa-user"></i> Apellido Paterno</label>
					<asp:TextBox id="apellidoPaternoE" runat="server" CssClass="form-control"  />
                    
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="apellidoPaternoE"
                                ErrorMessage="Apellido paterno es Campo Obligatorio" Display="None"></asp:RequiredFieldValidator>   

				</div>

				<div class="form-group">
					<label class="lab"><i class="fas fa-user"></i> Apellido Materno</label>
					<asp:TextBox id="apellidoMaternoE" runat="server" CssClass="form-control"  />
                    
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="apellidoMaternoE"
                               ErrorMessage="Apellido materno es Campo Obligatorio" Display="None"></asp:RequiredFieldValidator>   
				</div>

				<div class="form-group">
					<label class="lab"><i class="fas fa-address-card"></i> Rut</label>
					<asp:TextBox id="rutEstudiante" runat="server" CssClass="form-control"  />	
                    
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="rutEstudiante"
                               ErrorMessage="Rut es Campo Obligatorio" Display="None"></asp:RequiredFieldValidator>  

				</div>
				<!-- combo interes -->
                <div class="form-group">
                    <asp:DropDownList runat="server"  class="form-control form-control-md" id="seleccionArea">
                        <asp:ListItem Text="Seleccione Area De Interes" Value="" Selected="True"/>
                        <asp:ListItem Text="Desarrollo Web" Value="1" />
                        <asp:ListItem Text="Java" Value="2" />
                        <asp:ListItem Text="php" Value="2" />
                    </asp:DropDownList>
                </div>
              <!-- combo interes -->
                <div class="form-group">
                    
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre_carrera" DataValueField="id_carrera" class="form-control form-control-md">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:practicadbConnectionString %>" SelectCommand="SELECT [nombre_carrera], [id_carrera] FROM [Carreras]"></asp:SqlDataSource>
                    
                </div>
			</div>

			<div class="col-md-6"><!--seccion derecha-->
				
				<div class="form-group">
					<label class="lab"><i class="fas fa-envelope"></i> Email</label>
					<asp:TextBox id="emailEstudiante" runat="server" CssClass="form-control" TextMode="Email"  />
                    
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="emailEstudiante"
                               ErrorMessage="Email es Campo Obligatorio" Display="None"></asp:RequiredFieldValidator> 
				</div>

				<div class="form-group">
					<label class="lab"><i class="fas fa-phone-square"></i> Telefono</label>
					<asp:TextBox id="telefonoEstudiante" runat="server" CssClass="form-control" TextMode="Phone"  />
                    
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="telefonoEstudiante"
                               ErrorMessage="Telefono es Campo Obligatorio" Display="None"></asp:RequiredFieldValidator> 
				</div>

				<div class="form-group">
					<label class="lab"><i class="fas fa-home"></i> direccion</label>
					<asp:TextBox id="direccionEstudiante" runat="server" CssClass="form-control"  />
                    
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="direccionEstudiante"
                               ErrorMessage="Direccion es Campo Obligatorio" Display="None"></asp:RequiredFieldValidator> 
				</div>
				
				<div class="form-group">
					<label><i class="fas fa-comment-alt"></i> Comentario</label>
					<asp:TextBox id="comentarioEstudiante" runat="server" CssClass="form-control" Height="100px"
                         TextMode="MultiLine" />	
                     		
				</div>

			</div>

            <div class="col-md-12 d-flex justify-content-around" >

               <asp:Button  ID="enviarForm" runat="server" Text="Ingresar" CssClass="btn btn-success" OnClick="ModificarPerfilEstudiante" />

            </div>

		</div>
		
	</div>
        <asp:HiddenField runat="server" ID="session" ></asp:HiddenField>
    </form>
</body>

</html>
