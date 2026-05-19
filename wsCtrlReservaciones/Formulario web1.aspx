<%@ Page Async="true" Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master"
    AutoEventWireup="true"
    CodeBehind="Formulario web1.aspx.cs"
    Inherits="wsCtrlReservaciones.Formulario_web1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="App_Themes/inicio.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="inicio-container">

        <!-- ===== DATOS DEL USUARIO ===== -->
        <div class="custom-card">

            <div class="card-title">
                Información del Usuario
            </div>

            <div class="user-info">

                <p>
                    <strong>Usuario:</strong>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                     
                </p>

                <p>
                    <strong>Nombre:</strong>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </p>

                <p>
                    <strong>Correo:</strong>
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </p>

            </div>

        </div>

        <div class="staff-grid" style="padding-top:10px">

        <asp:Repeater
            ID="rptMedicos"
            runat="server"
            OnItemCommand="rptMedicos_ItemCommand">

            <ItemTemplate>

                <div class="staff-card">

                    <img
                        src='<%# "http://3.220.145.46" + Eval("url_foto") %>'
                        class="staff-image" />

                    <div class="staff-info">

                        <div class="staff-name">
                            <%# Eval("nombre_completo") %>
                        </div>

                        <div class="staff-detail">
                            Especialidad:
                            <%# Eval("especialidad") %>
                        </div>

                        <div class="staff-detail">
                            Consultorio:
                            <%# Eval("consultorio") %>
                        </div>

                        <div class="staff-detail">
                            Tel:
                            <%# Eval("telefono") %>
                        </div>

                        <div class="staff-detail">
                            Estado:
                            <%# Convert.ToBoolean(Eval("activo"))
                                ? "Disponible"
                                : "No Disponible" %>
                        </div>

                        <br />

                        <asp:Button
                            ID="btnSeleccionar"
                            runat="server"
                            Text="Seleccionar"
                            CssClass="btn btn-primary"

                            CommandName="Seleccionar"

                            CommandArgument='<%# Eval("id_medico") %>' />

                    </div>

                </div>

            </ItemTemplate>

        </asp:Repeater>

    </div>

    </div>

</asp:Content>