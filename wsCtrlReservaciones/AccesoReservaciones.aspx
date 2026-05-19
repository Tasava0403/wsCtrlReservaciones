<%@ Page Async="true" Language="C#" AutoEventWireup="true" CodeBehind="AccesoReservaciones.aspx.cs" Inherits="wsCtrlReservaciones.AccesoReservaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<style>
    body {
        background-image: url("/Imagenes/fondoIS.jpg");
        background-size: cover; /* Ajusta la imagen */
        background-repeat: no-repeat; /* Evita repeticiones */
        background-position: center; /* Centra la imagen */
        height: 100vh;
        margin: 0;
    }

    .form-error {
        color: #dc3545;
        font-size: 13px;
        font-weight: 500;
        display: block;
        margin-top: 0px;
    }
</style>

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Inicio de Sesión</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="App_Themes/login.css" rel="stylesheet" />
    <!-- Estilos personalizados -->
</head>
<body>

    <form id="form1" runat="server">
        
        <div class="login-container">
            
            <div class="login-card shadow">

                <h2 class="text-center mb-4">Reservaciones</h2>

                <div class="mb-3">
                    <label for="txtUsuario" class="form-label">Usuario</label>
                    <asp:Label ID="Label1" runat="server" CssClass="form-error"></asp:Label>
                    <asp:TextBox 
                        ID="txtUsuario" 
                        runat="server" 
                        CssClass="form-control"
                        placeholder="Ingrese usuario">
                    </asp:TextBox>
                </div>
                
                <div class="mb-4">
                    <label for="txtPassword" class="form-label">
                    Contraseña</label>
                    <asp:Label ID="Label2" runat="server" CssClass="form-error"></asp:Label>
                    <asp:TextBox 
                        ID="txtPassword" 
                        runat="server" 
                        TextMode="Password"
                        CssClass="form-control"
                        placeholder="Ingrese contraseña">
                    </asp:TextBox>
                </div>
                
                <div class="d-grid">
                    <asp:Button 
                        ID="btnLogin" 
                        runat="server" 
                        Text="Iniciar Sesión"
                        CssClass="btn btn-login" OnClick="btnLogin_Click" />
                </div>

            </div>

        </div>

    </form>

</body>
</html>
