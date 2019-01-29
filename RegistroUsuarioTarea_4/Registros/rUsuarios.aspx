<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="rUsuarios.aspx.cs" Inherits="RegistroUsuarioTarea_4.Registros.rUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <hr>
        <h2 style="color: #3366FF">Registro de usuarios</h2>
        <hr>
        <div class="form-horizontal col-md-12" role="form">
            <div class="form-group row">
                <label class="control-label col-sm-2" for="usarioid">Usuario ID:</label>
                <div class="col-sm-1 col-md-4 col-xs6">
                    <asp:TextBox type="Number" class="form-control" ID="usuarioidTextBox" Text="0" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="UsuarioIdRequiredFieldValidator" runat="server" ErrorMessage="Ingrese solo numero!" ControlToValidate="usuarioidTextBox"  ValidationGroup="Buscar" Display="Dynamic" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" ErrorMessage="Ingrese solo numeros!" ControlToValidate="usuarioidTextBox" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                </div>
                <div class="col-sm-1 col-md-4 col-xs6">
                    <asp:Button ID="BuscarButton" runat="server" Text="Buscar" class="btn btn-primary btn-sm" ValidationGroup="Buscar" OnClick="BuscarButton_Click" />
                </div>
            </div>
            
            <div class="form-group row">
                <label class="control-label col-sm-2" for="FechaTextBox">Fecha:</label>
                <div class="col-sm-1 col-md-5">
                    <asp:TextBox ID="FechaTextBox" class="form-control input-group" TextMode="Date" runat="server" Enabled="true" ReadOnly="True" />
                </div>
            </div>
            <br>
            <div class="form-group row">
                <label class="control-label col-sm-2" for="nombres">Nombres:</label>
                <div class="col-sm-1 col-md-5">
                    <asp:TextBox type="text" class="form-control" ID="nombresTextBox" placeholder="Ingrese Nombres" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="NombreRequiredFieldValidator" runat="server" ErrorMessage="Ingrese algun nombre!" ControlToValidate="nombresTextBox" Display="Dynamic" Font-Bold="True" ForeColor="Red" SetFocusOnError="True" ToolTip="Campo Descripcion obligatorio&quot;&gt;Por favor llenar el campo Nombre">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="NombreRegularExpressionValidator" runat="server" ErrorMessage="Ingrese algun nombre!" ControlToValidate="nombresTextBox" ValidationExpression="(^[a-zA-Z'.\s]{1,20}$)" SetFocusOnError="True"></asp:RegularExpressionValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-sm-2" for="nomUser">Usuario:</label>
                <div class="col-sm-1 col-md-5">
                    <asp:TextBox type="text" class="form-control" ID="nomUserTextBox" placeholder="Ingrese Usuario" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="UserRequiredFieldValidator" runat="server" ErrorMessage="Ingrese algun nombre!" ControlToValidate="nomUserTextBox" Display="Dynamic" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="UserRegularExpressionValidator" runat="server" ErrorMessage="Ingrese algun nombre!" ControlToValidate="nomUserTextBox" ValidationExpression="^[a-z & A-Z]*$"></asp:RegularExpressionValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-sm-2" for="EmailTextBox">Email:</label>
                <div class="col-sm-1 col-md-5">
                    <asp:TextBox type="email" class="form-control" ID="EmailTextBox" runat="server" placeholder="Ingrese Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EmailRequiredFieldValidator" runat="server" ErrorMessage="No puede estar vacío" ControlToValidate="EmailTextBox" Display="Dynamic" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <br>
            <div class="form-group row">
                <label class="control-label col-sm-2" for="contraseña">Contraseña:</label>
                <div class="col-sm-1 col-md-5">
                    <asp:TextBox type="password" class="form-control" ID="contraseñaTextBox" placeholder="Ingrese Contraseña" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ContraseñaRequiredFieldValidator" runat="server" ErrorMessage="No puede estar vacío" ControlToValidate="contraseñaTextBox" Display="Dynamic" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="ContraseñaCompareValidator" runat="server" ErrorMessage="Las contraseñas no coinciden" ControlToCompare="VcontraseñaTextBox" ControlToValidate="contraseñaTextBox" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                </div>
            </div>
            <br>
            <div class="form-group row">
                <label class="control-label col-sm-2" for="Vcontraseña">Verificar Contraseña:</label>
                <div class="col-sm-1 col-md-5">
                    <asp:TextBox type="password" class="form-control" ID="VcontraseñaTextBox" placeholder="Ingrese Contraseña" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="VcontraseñaRequiredFieldValidator" runat="server" ErrorMessage="No puede estar vacío" ControlToValidate="VcontraseñaTextBox" Display="Dynamic" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="VcontraseñaCompareValidator" runat="server" ErrorMessage="Las contraseñas no coinciden" ControlToCompare="contraseñaTextBox" ControlToValidate="VcontraseñaTextBox" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                </div>
            </div>
            <br>
            <div class="form-group row">
                <label class="control-label col-sm-2" for="TelefonoTextBox">Telefono:</label>
                <div class="col-sm-1 col-md-5">
                    <asp:TextBox type="" class="form-control" ID="TelefonoTextBox" runat="server" placeholder="###-###-####" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="TelRequiredFieldValidator" runat="server" ErrorMessage="Ingrese solo Numero!" ControlToValidate="TelefonoTextBox" Display="Dynamic" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="TelRegularExpressionValidator1" runat="server" ErrorMessage="Ingrese solo Numero!" ControlToValidate="TelefonoTextBox" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-sm-2" for="CelularTextBox">Celular:</label>
                <div class="col-sm-1 col-md-5">
                    <asp:TextBox type="" class="form-control" ID="CelularTextBox" runat="server" placeholder="###-###-####" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="celRequiredFieldValidator" runat="server" ErrorMessage="Ingrese solo Numero!" ControlToValidate="CelularTextBox" Display="Dynamic" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="celRegularExpressionValidator" runat="server" ErrorMessage="Ingrese solo Numero!" ControlToValidate="CelularTextBox" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-sm-2" for="DropDownListUsuario">Tipo:</label>
                <div class="col-sm-1 col-md-5">
                    <asp:DropDownList ID="DropDownListUsuario" class="form-control" runat="server">
                        <asp:ListItem>Administrador</asp:ListItem>
                        <asp:ListItem>Usuario</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <hr>
            <div class="panel">
                <div class="text-center">
                    <div class="form-group">
                        <asp:Button ID="BtnNuevo" runat="server" Text="Nuevo" class="btn btn-warning btn-sm" OnClick="BtnNuevo_Click" />
                        <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" class="btn btn-success btn-sm" OnClick="BtnGuardar_Click" />
                        <asp:Button ID="BtnEliminar" runat="server" Text="Eliminar" class="btn btn-danger btn-sm" OnClick="BtnEliminar_Click" />
                    </div>
                </div>
            </div>
            <hr>
        </div>
    </div>
</asp:Content>
