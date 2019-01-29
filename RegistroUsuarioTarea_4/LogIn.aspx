<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="RegistroUsuarioTarea_4.LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
    <br>
    <div class="form-row justify-content-center">
        <aside class="col-sm-6">
            <div class="card">
                <article class="card-body">
                    <h4 class="card-title text-center mb-4 mt-1" style="color: #0099FF">Iniciar Sesión</h4>
                    <hr>
                    <a class="float-right text-primary" href="#">Registrarse</a>
                    <div class="form justify-content-center">
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-user"></i></span>
                                </div>
                                <asp:TextBox ID="EmailTextBox" class="form-control" placeholder="Email or User" type="Text" runat="server"></asp:TextBox>
                            </div>
                            <!-- input-group.// -->
                        </div>
                        <!-- form-group// -->
                        <div class="form-group">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa fa-lock"></i></span>
                                </div>
                                <asp:TextBox ID="ContraseñaTextBox" class="form-control" placeholder="******" type="password" runat="server"></asp:TextBox>
                            </div>
                            <!-- input-group.// -->
                        </div>
                        <!-- form-group// -->
                        <div class="form-group">
                        <asp:Button ID="LoginButton" runat="server" Text="Login" class="form-control btn btn-primary btn-lg" Font-Bold="True" Font-Overline="False" Font-Size="Medium"/>
                        </div>
                        <!-- form-group// -->
                        <a class="float-center" style="color: #0099FF" href="#">Olvidó Contraseña?</a>
                    </div>
                </article>
            </div>
            <!-- card.// -->
        </aside>
    </div>
</asp:Content>
