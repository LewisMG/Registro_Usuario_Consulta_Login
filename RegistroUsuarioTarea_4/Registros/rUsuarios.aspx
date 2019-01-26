<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="rUsuarios.aspx.cs" Inherits="RegistroUsuarioTarea_4.Registros.rUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Registro de usuarios</h2>
        <div class="form-horizontal col-md-12" role="form">
            <div class="form-group row">
                <label class="control-label col-sm-2" for="usarioid">Usuario ID:</label>
                <div class="col-sm-1 col-md-4 col-xs6">
                    <asp:TextBox type="Number" class="form-control" ID="usuarioidTextBox" Text="0" runat="server"></asp:TextBox>
                </div>
                <div class="col-sm-1 col-md-4 col-xs6">
                    <asp:Button ID="BuscarButton" runat="server" Text="Buscar" class="btn btn-primary btn-sm" />
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-sm-2" for="FechaTextBox">Fecha:</label>
                <div class="col-sm-1 col-md-5">
                    <asp:TextBox ID="FechaTextBox" class="form-control input-group" TextMode="Date" runat="server" />
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-sm-2" for="nombres">Nombres:</label>
                <div class="col-sm-1 col-md-5">
                    <asp:TextBox type="text" class="form-control" ID="nombresTextBox" placeholder="Ingrese Nombres" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-sm-2" for="nomUser">Usuario:</label>
                <div class="col-sm-1 col-md-5">
                    <asp:TextBox type="text" class="form-control" ID="nomUserTextBox" placeholder="Ingrese Usuario" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-sm-2" for="contraseña">Contraseña:</label>
                <div class="col-sm-1 col-md-5">
                    <asp:TextBox type="text" class="form-control" ID="contraseñaTextBox" placeholder="Ingrese Contraseña" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-sm-2" for="Vcontraseña">Verificar Contraseña:</label>
                <div class="col-sm-1 col-md-5">
                    <asp:TextBox type="text" class="form-control" ID="VcontraseñaTextBox" placeholder="Ingrese Contraseña" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-sm-2" for="EmailTextBox">Email:</label>
                <div class="col-sm-1 col-md-5">
                    <asp:TextBox type="text" class="form-control" ID="EmailTextBox" runat="server" placeholder="Ingrese Email"></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-sm-2" for="TelefonoTextBox">Telefono:</label>
                <div class="col-sm-1 col-md-5">
                    <asp:TextBox type="" class="form-control" ID="TelefonoTextBox" runat="server" placeholder=""></asp:TextBox>
                </div>
            </div>

            <div class="form-group row">
                <label class="control-label col-sm-2" for="CelularTextBox">Celular:</label>
                <div class="col-sm-1 col-md-5">
                    <asp:TextBox type="" class="form-control" ID="CelularTextBox" runat="server" placeholder=""></asp:TextBox>
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

            <div class="panel">
                <div class="text-center">
                    <div class="form-group">
                        <asp:Button ID="BtnNuevo" runat="server" Text="Nuevo" class="btn btn-warning btn-sm" />
                        <asp:Button ID="BtnGuardar" runat="server" Text="Guardar" class="btn btn-success btn-sm" />
                        <asp:Button ID="BtnEliminar" runat="server" Text="Eliminar" class="btn btn-danger btn-sm" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
