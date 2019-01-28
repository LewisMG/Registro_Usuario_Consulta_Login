<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="cUsuario.aspx.cs" Inherits="RegistroUsuarioTarea_4.Consulta.cUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron" style="background-color: #006666">
        <hr>
        <h5 class="display-4" style="color: #0099FF; font-weight: bold;">Consulta de Usuarios</h5>
        <hr>
        <div class="form-row justify-content-center">
            <div class="form-group col-md-2">
                <asp:Label Text="Filtro" ForeColor="#0099FF" runat="server" />
                <asp:DropDownList ID="FiltroDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>UsuarioId</asp:ListItem>
                    <asp:ListItem>Nombre</asp:ListItem>
                    <asp:ListItem>Email</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group col-md-3">
                <asp:Label ID="Label1" runat="server" ForeColor="#0099FF">Criterio:</asp:Label>
                <asp:TextBox ID="CriterioTextBox" AutoCompleteType="Disabled" class="form-control input-group" runat="server"></asp:TextBox>
            </div>
            
            <div class="col-sm-2">
                <br>
                <asp:Button ID="BtnBuscar" class="form-control btn btn-primary btn-sm" runat="server" Text="Buscar" OnClick="BtnBuscar_Click" />
            </div>
        </div>
        <div class="form-row justify-content-center">
            <div class="form-group col-md-2">
                <asp:Label Text="Desde" ForeColor="#0099FF" runat="server" />
                <asp:TextBox ID="DesdeTextBox" class="form-control input-group" TextMode="Date" runat="server" />
            </div>
            <div class="form-group col-md-2">
                <asp:Label Text="Hasta" ForeColor="#0099FF" runat="server" />
                <asp:TextBox ID="HastaTextBox" class="form-control input-group" TextMode="Date" runat="server" />
            </div>
        </div>
        <hr>

        <div class="form-row justify-content-center">
            <asp:GridView ID="UsuarioGridView" runat="server" class="table table-condensed table-bordered table-responsive" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="LightSkyBlue" />
                <Columns>
                    <asp:BoundField DataField="UsuarioId" HeaderText="Usuario Id" />
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="NombreUser" HeaderText="Usuario" />
                    <asp:BoundField DataField="Contraseña" HeaderText="Contraseña" />
                    <asp:BoundField DataField="vContraseña" HeaderText="Verificación" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" />
                    <asp:BoundField DataField="Celular" HeaderText="Celular" />
                    <asp:BoundField DataField="Tipo" HeaderText="Tipo" />
                </Columns>
                <HeaderStyle BackColor="LightCyan" Font-Bold="True" />
            </asp:GridView>
        </div>
        <hr>
    </div>
</asp:Content>
