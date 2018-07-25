<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detalle.aspx.cs" Inherits="proyectoTallerDD.detalle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="id_publicacion" DataSourceID="Sqlform">
                <EditItemTemplate>
                    id_publicacion:
                    <asp:Label ID="id_publicacionLabel1" runat="server" Text='<%# Eval("id_publicacion") %>' />
                    <br />
                    titulo_publicacion:
                    <asp:TextBox ID="titulo_publicacionTextBox" runat="server" Text='<%# Bind("titulo_publicacion") %>' />
                    <br />
                    desc_publicacion:
                    <asp:TextBox ID="desc_publicacionTextBox" runat="server" Text='<%# Bind("desc_publicacion") %>' />
                    <br />
                    requerimientos:
                    <asp:TextBox ID="requerimientosTextBox" runat="server" Text='<%# Bind("requerimientos") %>' />
                    <br />
                    horas:
                    <asp:TextBox ID="horasTextBox" runat="server" Text='<%# Bind("horas") %>' />
                    <br />
                    pago:
                    <asp:TextBox ID="pagoTextBox" runat="server" Text='<%# Bind("pago") %>' />
                    <br />
                    compatibilidad:
                    <asp:CheckBox ID="compatibilidadCheckBox" runat="server" Checked='<%# Bind("compatibilidad") %>' />
                    <br />
                    fecha_publicacion:
                    <asp:TextBox ID="fecha_publicacionTextBox" runat="server" Text='<%# Bind("fecha_publicacion") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    titulo_publicacion:
                    <asp:TextBox ID="titulo_publicacionTextBox" runat="server" Text='<%# Bind("titulo_publicacion") %>' />
                    <br />
                    desc_publicacion:
                    <asp:TextBox ID="desc_publicacionTextBox" runat="server" Text='<%# Bind("desc_publicacion") %>' />
                    <br />
                    requerimientos:
                    <asp:TextBox ID="requerimientosTextBox" runat="server" Text='<%# Bind("requerimientos") %>' />
                    <br />
                    horas:
                    <asp:TextBox ID="horasTextBox" runat="server" Text='<%# Bind("horas") %>' />
                    <br />
                    pago:
                    <asp:TextBox ID="pagoTextBox" runat="server" Text='<%# Bind("pago") %>' />
                    <br />
                    compatibilidad:
                    <asp:CheckBox ID="compatibilidadCheckBox" runat="server" Checked='<%# Bind("compatibilidad") %>' />
                    <br />
                    fecha_publicacion:
                    <asp:TextBox ID="fecha_publicacionTextBox" runat="server" Text='<%# Bind("fecha_publicacion") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:HiddenField runat="server" ID="id_publicacion" Value='<%# Eval("id_publicacion") %>'/>
                    <br />
                    <div class="contcarta">
                    <div class="card">
                        <div class="card-header">
                            <label class="col-form-label">Título</label>
                            <asp:Label CssClass="col-form-label" ID="titulo_publicacionLabel" runat="server" Text='<%# Bind("titulo_publicacion") %>' />
                        </div>
                        <div class="card-body">
                            <label class="card-title">Descripción de la Practica :</label> <br />
                            <asp:Label CssClass="card-text" ID="desc_publicacionLabel" runat="server" Text='<%# Bind("desc_publicacion") %>' />
                            <br />
                            <label class="col-form-label">Requisitos minimos para postular :</label> <br />
                            <asp:Label ID="requerimientosLabel" runat="server" Text='<%# Bind("requerimientos") %>' />
                            <br />
                            <label class="col-form-label">Horas de practica :</label>
                            <asp:Label ID="horasLabel" runat="server" Text='<%# Bind("horas") %>' />
                            <br />
                            <label class="col-form-label">Pago :</label>
                            <asp:Label ID="pagoLabel" runat="server" Text='<%# Bind("pago") %>' />
                            <br />
                            <label class="col-form-label">Compatibilidad con estudios o facilidad horaria:</label>
                            <asp:CheckBox ID="compatibilidadCheckBox" runat="server" Checked='<%# Bind("compatibilidad") %>' Enabled="false" />
                            <br />
                            <label class="col-form-label">Fecha Publicacion :</label> <br />
                            <asp:Label ID="fecha_publicacionLabel" runat="server" Text='<%# Bind("fecha_publicacion") %>' />
                        </div>
                        <div class="card-footer d-flex flex-row-reverse">
                            <asp:Button runat="server" CssClass="btn botondetalle btn-primary" ID="postular" Text="Postular" OnClick="postular_Click"/>
                            <asp:Button runat="server" CssClass="btn botondetalle btn-danger" ID="cancelar" Text="Cancelar" OnClick="cancelar_Click"/>
                        </div>
                        <br />
                    </div>
                    </div>
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="Sqlform" runat="server" ConnectionString="<%$ ConnectionStrings:Conex %>" SelectCommand="SELECT [id_publicacion], [titulo_publicacion], [desc_publicacion], [requerimientos], [horas], [pago], [compatibilidad], [fecha_publicacion] FROM [Publicaciones] WHERE ([id_publicacion] = @id_publicacion)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="id_publicacion" QueryStringField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
