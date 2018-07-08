<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="proyectoTallerDD.app.forms.test" %>

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
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="aaaaa" runat="server" />
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="id_estudiante" DataSourceID="SqlDataSource1" DefaultMode="Edit">
                <EditItemTemplate>
                    <asp:HiddenField ID="id_estudianteLabel1" runat="server" Value='<%# Eval("id_estudiante") %>' />
                    
                    <br />
                    <div class="row">
                    <label class="lab col-sm-3"><i class="fas fa-user"></i>Nombre Estudiante:</label>
                    <asp:TextBox ID="nombre_estudianteTextBox" CssClass="col-sm-3" runat="server"  Text='<%# Bind("id_estudiante") %>' />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="nombre_estudianteTextBox" ErrorMessage="Nombre es Campo Obligatorio" Display="None"></asp:RequiredFieldValidator>
                    
                    <label class="lab col-sm-3"><i class="fas fa-address-card"></i>Rut Estudiante:</label>
                    <asp:TextBox ID="rut_estudianteTextBox" CssClass="col-sm-3" runat="server" Text='<%# Bind("rut_estudiante") %>' />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="rut_estudianteTextBox" ErrorMessage="Rut es Campo Obligatorio" Display="None"></asp:RequiredFieldValidator>
                    </div>
                    
                    <br />
                    <div class="row">
                    <label class="lab col-sm-3"><i class="fas fa-user"></i>Apellido Paterno:</label>
                    <asp:TextBox ID="TextBox1" CssClass="col-sm-3" runat="server" Text='<%# Bind("apellido_p") %>' />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox1" ErrorMessage="Apellido paterno es Campo Obligatorio" Display="None"></asp:RequiredFieldValidator>

                    <label class="lab col-sm-3"><i class="fas fa-user"></i>Apellido Materno:</label>
                    <asp:TextBox ID="apellido_aTextBox" CssClass="col-sm-3" runat="server" Text='<%# Bind("apellido_a") %>' />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="apellido_aTextBox" ErrorMessage="Apellido materno es Campo Obligatorio" Display="None"></asp:RequiredFieldValidator>
                    </div>

                    <br />
                    <div class="row">
                    <label class="lab col-sm-3"><i class="fas fa-envelope"></i>Email Estudiante:</label>
                    <asp:TextBox ID="email_estudianteTextBox" CssClass="col-sm-3" runat="server" Text='<%# Bind("email_estudiante") %>' />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="email_estudianteTextBox" ErrorMessage="Email es Campo Obligatorio" Display="None"></asp:RequiredFieldValidator>

                    <label class="lab col-sm-3"><i class="fas fa-phone-square"></i>Fono Estudiante:</label>
                    <asp:TextBox ID="fono_estudianteTextBox" CssClass="col-sm-3" runat="server" Text='<%# Bind("fono_estudiante") %>' />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="fono_estudianteTextBox" ErrorMessage="Telefono es Campo Obligatorio" Display="None"></asp:RequiredFieldValidator>
                    </div>
                    
                    <br />
                    <div class="row">
                        <div class="col-sm-6">
                        <asp:HiddenField ID="id_usuarioTextBox" runat="server" Value='<%# Bind("id_usuario") %>' />
                        <label class="lab col-sm-3"><i class="fas fa-home"></i>Dirección Estudiante:</label>
                        <asp:TextBox ID="dir_estudianteTextBox" CssClass="col-sm-3" runat="server" Text='<%# Bind("dir_estudiante") %>' />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="dir_estudianteTextBox" ErrorMessage="Direccion es Campo Obligatorio" Display="None"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label runat="server" CssClass="lab col-sm-3">Carrera:</asp:Label> 
                        <asp:TextBox ID="TextBox2" CssClass="form-control col-sm-3" runat="server" Text='<%# Bind("id_carrera") %>' />
                        </div>
                        
                        <div class="col-sm-6">
                        <label class="lab col-sm-6"><i class="fas fa-comment-alt"></i>Comentario:</label>
                        <asp:TextBox ID="hab_estudianteTextBox" CssClass="form-control col-sm-6" runat="server" Text='<%# Bind("hab_estudiante") %>' />
                        </div>
                    </div>
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                    
                </EditItemTemplate>
                <InsertItemTemplate>
                    Nombre:
                    <asp:TextBox ID="nombre_estudianteTextBox" runat="server" Text='<%# Bind("nombre_estudiante") %>' />
                    <br />
                    Apellido Paterno:
                    <asp:TextBox ID="apellido_pTextBox" runat="server" Text='<%# Bind("apellido_p") %>' />
                    <br />
                    Apellido Materno:
                    <asp:TextBox ID="apellido_aTextBox" runat="server" Text='<%# Bind("apellido_a") %>' />
                    <br />
                    Rut Estudiante:
                    <asp:TextBox ID="rut_estudianteTextBox" runat="server" Text='<%# Bind("rut_estudiante") %>' />
                    <br />
                    Email Estudiante:
                    <asp:TextBox ID="email_estudianteTextBox" runat="server" Text='<%# Bind("email_estudiante") %>' />
                    <br />
                    Fono Estudiante:
                    <asp:TextBox ID="fono_estudianteTextBox" runat="server" Text='<%# Bind("fono_estudiante") %>' />
                    <br />
                    Dirección Estudiante:
                    <asp:TextBox ID="dir_estudianteTextBox" runat="server" Text='<%# Bind("dir_estudiante") %>' />
                    <br />
                    Habilidad Estudiante:
                    <asp:TextBox ID="hab_estudianteTextBox" runat="server" Text='<%# Bind("hab_estudiante") %>' />
                    <br />
                    id_usuario:
                    <asp:TextBox ID="id_usuarioTextBox" runat="server" Text='<%# Bind("id_usuario") %>' />
                    <br />
                    id_carrera:
                    <asp:TextBox ID="id_carreraTextBox" runat="server" Text='<%# Bind("id_carrera") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id_estudiante:
                    <asp:TextBox ID="id_estudianteLabel" runat="server" Text='<%# Eval("id_estudiante") %>' />
                    <br />
                    nombre_estudiante:
                    <asp:TextBox ID="nombre_estudianteLabel" runat="server" Text='<%# Bind("nombre_estudiante") %>' />
                    <br />
                    apellido_p:
                    <asp:TextBox ID="apellido_pLabel" runat="server" Text='<%# Bind("apellido_p") %>' />
                    <br />
                    apellido_a:
                    <asp:TextBox ID="apellido_aLabel" runat="server" Text='<%# Bind("apellido_a") %>' />
                    <br />
                    rut_estudiante:
                    <asp:TextBox ID="rut_estudianteLabel" runat="server" Text='<%# Bind("rut_estudiante") %>' />
                    <br />
                    email_estudiante:
                    <asp:TextBox ID="email_estudianteLabel" runat="server" Text='<%# Bind("email_estudiante") %>' />
                    <br />
                    fono_estudiante:
                    <asp:TextBox ID="fono_estudianteLabel" runat="server" Text='<%# Bind("fono_estudiante") %>' />
                    <br />
                    dir_estudiante:
                    <asp:TextBox ID="dir_estudianteLabel" runat="server" Text='<%# Bind("dir_estudiante") %>' />
                    <br />
                    hab_estudiante:
                    <asp:TextBox ID="hab_estudianteLabel" runat="server" Text='<%# Bind("hab_estudiante") %>' Height="100px" />
                    <br />
                    id_usuario:
                    <asp:TextBox ID="id_usuarioLabel" runat="server" Text='<%# Bind("id_usuario") %>' />
                    <br />
                    id_carrera:
                    <asp:TextBox ID="id_carreraLabel" runat="server" Text='<%# Bind("id_carrera") %>' />
                    <br />

                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:practicadbConnectionString %>" SelectCommand="SELECT * FROM [Estudiantes] WHERE ([id_usuario] = @id_usuario)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="aaaaa" DefaultValue="0" Name="id_usuario" PropertyName="Value" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
