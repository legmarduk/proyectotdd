<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="proyectoTallerDD.app.forms.test" %>

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
</head>
<body>
    <header id="header">
        <div class="inner">
            <a href="home.aspx" class="logo"><i class="fas fa-hands-helping"></i> Practicando.cl</a>
        </div>    
    </header>
    <form id="form1" runat="server">
        <div class="container">
            <br />
            <asp:HiddenField ID="aaaaa" runat="server" Value="1" />
            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DefaultMode="Edit">
                <EditItemTemplate>
                    <div class="row">
                        <asp:Label runat="server" CssClass="col-sm-3"><i class="fas fa-user"></i> Nombre Estudiante</asp:Label> 
                        <asp:TextBox ID="nombre_estudianteTextBox" CssClass="form-control col-sm-3" runat="server" Text='<%# Bind("nombre_estudiante") %>' />
                        <asp:Label runat="server" CssClass="col-sm-3">Rut Estudiante:</asp:Label>
                        <asp:TextBox ID="rut_estudianteTextBox" CssClass="form-control col-sm-3" runat="server" Text='<%# Bind("rut_estudiante") %>' />
                    </div>
                    <br />
                    <div class="row">
                        <asp:Label runat="server" CssClass="col-sm-3"><i class="fas fa-user"></i> Apellido Paterno:</asp:Label>
                        <asp:TextBox ID="apellido_pTextBox" CssClass="form-control col-sm-3" runat="server" Text='<%# Bind("apellido_p") %>' />
                        <asp:Label runat="server" CssClass="col-sm-3"><i class="fas fa-user"></i> Apellido Materno:</asp:Label>
                        <asp:TextBox ID="apellido_aTextBox" CssClass="form-control col-sm-3" runat="server" Text='<%# Bind("apellido_a") %>' />
                    </div>
                    <br />
                    <div class="row">
                        <asp:Label runat="server" CssClass="col-sm-3"> Email Estudiante:</asp:Label>
                        <asp:TextBox ID="email_estudianteTextBox" CssClass="form-control col-sm-3" runat="server" Text='<%# Bind("email_estudiante") %>' />
                        <asp:Label runat="server" CssClass="col-sm-3"> Fono Estudiante:</asp:Label>
                        <asp:TextBox ID="fono_estudianteTextBox" CssClass="form-control col-sm-3" runat="server" Text='<%# Bind("fono_estudiante") %>' />
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-sm-6">
                            <asp:Label runat="server" CssClass="col-sm-12"> Direción:</asp:Label>
                            <asp:TextBox ID="dir_estudianteTextBox" CssClass="form-control col-sm-12" runat="server" Text='<%# Bind("dir_estudiante") %>' />
                            <br />
                            <asp:Label runat="server" CssClass="col-sm-12"> Carrera:</asp:Label>
                            <asp:TextBox ID="id_carreraTextBox" CssClass="form-control col-sm-12" runat="server" Text='<%# Bind("id_carrera") %>' />
                        </div>
                        <div class="col-sm-6">
                            <asp:Label runat="server" CssClass="col-sm-6"> Descripción:</asp:Label>
                            <br />
                            <asp:TextBox ID="hab_estudianteTextBox" CssClass="form-control col-sm-12" runat="server" Text='<%# Bind("hab_estudiante") %>' Height="100px" />
                        </div>
                    </div>
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                    
                </EditItemTemplate>
                <InsertItemTemplate>
                    nombre_estudiante:
                    <asp:TextBox ID="nombre_estudianteTextBox2" runat="server" Text='<%# Bind("nombre_estudiante") %>' />
                    <br />
                    rut_estudiante:
                    <asp:TextBox ID="rut_estudianteTextBox2" runat="server" Text='<%# Bind("rut_estudiante") %>' />
                    <br />
                    apellido_p:
                    <asp:TextBox ID="apellido_pTextBox2" runat="server" Text='<%# Bind("apellido_p") %>' />
                    <br />
                    apellido_a:
                    <asp:TextBox ID="apellido_aTextBox2" runat="server" Text='<%# Bind("apellido_a") %>' />
                    <br />
                    email_estudiante:
                    <asp:TextBox ID="email_estudianteTextBox2" runat="server" Text='<%# Bind("email_estudiante") %>' />
                    <br />
                    fono_estudiante:
                    <asp:TextBox ID="fono_estudianteTextBox2" runat="server" Text='<%# Bind("fono_estudiante") %>' />
                    <br />
                    dir_estudiante:
                    <asp:TextBox ID="dir_estudianteTextBox2" runat="server" Text='<%# Bind("dir_estudiante") %>' />
                    <br />
                    id_carrera:
                    <asp:TextBox ID="id_carreraTextBox2" runat="server" Text='<%# Bind("id_carrera") %>' />
                    <br />
                    hab_estudiante:
                    <asp:TextBox ID="hab_estudianteTextBox2" runat="server" Text='<%# Bind("hab_estudiante") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                </InsertItemTemplate>
                <ItemTemplate>
                    nombre_estudiante:
                    <asp:Label ID="nombre_estudianteLabel" runat="server" Text='<%# Bind("nombre_estudiante") %>' />
                    <br />
                    rut_estudiante:
                    <asp:Label ID="rut_estudianteLabel" runat="server" Text='<%# Bind("rut_estudiante") %>' />
                    <br />
                    apellido_p:
                    <asp:Label ID="apellido_pLabel" runat="server" Text='<%# Bind("apellido_p") %>' />
                    <br />
                    apellido_a:
                    <asp:Label ID="apellido_aLabel" runat="server" Text='<%# Bind("apellido_a") %>' />
                    <br />
                    email_estudiante:
                    <asp:Label ID="email_estudianteLabel" runat="server" Text='<%# Bind("email_estudiante") %>' />
                    <br />
                    fono_estudiante:
                    <asp:Label ID="fono_estudianteLabel" runat="server" Text='<%# Bind("fono_estudiante") %>' />
                    <br />
                    dir_estudiante:
                    <asp:Label ID="dir_estudianteLabel" runat="server" Text='<%# Bind("dir_estudiante") %>' />
                    <br />
                    id_carrera:
                    <asp:Label ID="id_carreraLabel" runat="server" Text='<%# Bind("id_carrera") %>' />
                    <br />
                    hab_estudiante:
                    <asp:Label ID="hab_estudianteLabel" runat="server" Text='<%# Bind("hab_estudiante") %>' />
                    <br />

                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:datosmdf %>" SelectCommand="SELECT [nombre_estudiante], [rut_estudiante], [apellido_p], [apellido_a], [email_estudiante], [fono_estudiante], [dir_estudiante], [id_carrera], [hab_estudiante] FROM [Estudiantes] WHERE ([id_usuario] = @id_usuario)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="aaaaa" DefaultValue="0" Name="id_usuario" PropertyName="Value" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
