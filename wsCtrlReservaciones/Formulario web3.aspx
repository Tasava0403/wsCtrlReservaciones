<%@ Page Async="true" Title="Registrar Cita" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Formulario web3.aspx.cs" Inherits="wsCtrlReservaciones.Formulario_web3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <!-- CSS -->
    <link href="App_Themes/Reservaciones.css" rel="stylesheet" />
    <style>
        .form-label {
            font-weight: bold;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="card shadow-lg formulario-cita">

            <div class="card-header titulo-grid" style="text-align:center; justify-content:center">
                <h3 class="mb-0">Registrar Nueva Cita</h3>
            </div>

            <div class="card-body">

                        <div class="col-md-3">
                            <strong>Médico:</strong><br />
                            <asp:Label
                                ID="nMedico"
                                runat="server"
                                CssClass="text-danger">
                            </asp:Label>
                        </div>

                        <div class="col-md-3">
                            <strong>Consultorio:</strong><br />
                            <asp:Label
                                ID="mConsultorio"
                                runat="server"
                                CssClass="text-danger">
                            </asp:Label>
                        </div>

                        <div class="col-md-3">
                            <strong>Especialidad:</strong><br />
                            <asp:Label
                                ID="mEspecialidad"
                                runat="server"
                                CssClass="text-danger">
                            </asp:Label>
                        </div>

                        <div class="col-md-3">
                            <strong>Teléfono:</strong><br />
                            <asp:Label
                                ID="mNumero"
                                runat="server"
                                CssClass="text-danger">
                            </asp:Label>
                        </div>

                    </div>

                <div class="row">

                    <!-- NOMBRE PACIENTE -->
                    <div class="col-md-6 mb-3">
                        <label class="form-label">Nombre del Paciente</label>
                        <br />
                        <asp:Label
                            ID="errorNombre"
                            runat="server"
                            CssClass="text-danger">
                        </asp:Label>

                        <asp:TextBox
                            ID="txtNombrePaciente"
                            runat="server"
                            CssClass="form-control"
                            placeholder="Ingrese nombre completo">
                        </asp:TextBox>
                    </div>

                    <!-- TELEFONO -->
                    <div class="col-md-6 mb-3">
                        <label class="form-label">Teléfono</label>
                        <br />
                        <asp:Label
                            ID="errorTelefono"
                            runat="server"
                            CssClass="text-danger">
                        </asp:Label>

                        <asp:TextBox
                            ID="txtTelefono"
                            runat="server"
                            CssClass="form-control"
                            placeholder="5512345678">
                        </asp:TextBox>
                    </div>

                    <!-- EMAIL -->
                    <div class="col-12 mb-3">
                        <label class="form-label">Correo Electrónico</label>
                        <br />
                        <asp:Label
                            ID="errorEmail"
                            runat="server"
                            CssClass="text-danger">
                        </asp:Label>

                        <asp:TextBox
                            ID="txtEmail"
                            runat="server"
                            TextMode="Email"
                            CssClass="form-control"
                            placeholder="correo@dominio.com">
                        </asp:TextBox>
                    </div>
                    <!-- FECHA -->
                    <div class="col-md-6 mb-3">
                        <label class="form-label">Fecha</label>
                         <br />
                        <asp:Label 
                            ID="errorFecha" 
                            runat="server"
                            CssClass="text-danger">
                        </asp:Label>
                        <asp:DropDownList 
                            ID="DropDownList1" 
                            runat="server"
                            CssClass="form-select">

                            <asp:ListItem Text="Seleccione una fecha" Value="" />

                            <asp:ListItem Text="15/05/2026" Value="15/05/2026" />
                            <asp:ListItem Text="16/05/2026" Value="16/05/2026" />
                            <asp:ListItem Text="17/05/2026" Value="17/05/2026" />

                        </asp:DropDownList>

                    </div>

                    <!-- HORA INICIO -->
                    <div class="col-md-6 mb-3">
                        <label class="form-label">Hora Inicial</label>
                         <br />
                         <asp:Label 
                            ID="errorHInicio" 
                            runat="server"
                            CssClass="text-danger">
                        </asp:Label>
                        <asp:DropDownList 
                            ID="DropDownList2" 
                            runat="server"
                            CssClass="form-select">

                            <asp:ListItem Text="Seleccione hora" Value="" />

                            <asp:ListItem Text="09:00 AM" Value="09:00 AM" />
                            <asp:ListItem Text="10:00 AM" Value="10:00 AM" />
                            <asp:ListItem Text="11:00 AM" Value="11:00 AM" />

                        </asp:DropDownList>

                    </div>

                    <!-- HORA FINAL -->
                    <div class="col-md-6 mb-3">
                        <label class="form-label">Hora Final</label>
                         <br />
                        <asp:Label 
                            ID="errorHFinal" 
                            runat="server"
                            CssClass="text-danger">
                        </asp:Label>
                        <asp:DropDownList 
                            ID="DropDownList3" 
                            runat="server"
                            CssClass="form-select">

                            <asp:ListItem Text="Seleccione hora" Value="" />

                            <asp:ListItem Text="09:30 AM" Value="09:30 AM" />
                            <asp:ListItem Text="10:30 AM" Value="10:30 AM" />
                            <asp:ListItem Text="11:30 AM" Value="11:30 AM" />

                        </asp:DropDownList>

                    </div>

                    <!-- TIPO CONSULTA -->
                    <div class="col-md-6 mb-3">
                        <label class="form-label">Tipo de Consulta</label>
                         <br />
                        <asp:Label 
                            ID="errorTipoConsulta" 
                            runat="server"
                            CssClass="text-danger">
                        </asp:Label>
                        <asp:DropDownList 
                            ID="ddlTipoConsulta" 
                            runat="server"
                            CssClass="form-select">

                            <asp:ListItem Text="Seleccione una opción" Value="" />

                            <asp:ListItem Text="Consulta General" Value="General" />
                            <asp:ListItem Text="Seguimiento" Value="Seguimiento" />
                            <asp:ListItem Text="Urgencia" Value="Urgencia" />
                            <asp:ListItem Text="Especialidad" Value="Especialidad" />

                        </asp:DropDownList>

                    </div>

                    <!-- MOTIVO CONSULTA -->
                    <div class="col-12 mb-3">
                        <label class="form-label">Motivo de Consulta</label>
                         <br />
                        <asp:Label 
                            ID="errorMotivo" 
                            runat="server"
                            CssClass="text-danger">
                        </asp:Label>
                        <asp:TextBox 
                            ID="txtMotivoConsulta" 
                            runat="server"
                            TextMode="MultiLine"
                            Rows="3"
                            CssClass="form-control"
                            placeholder="Ingrese el motivo de consulta">
                        </asp:TextBox>

                    </div>

                    <!-- NOTAS EXTRA -->
                    <div class="col-12 mb-4">
                        <label class="form-label">Notas Extra</label>
                        <br />
                        <asp:Label 
                            ID="errorNotas" 
                            runat="server"
                            CssClass="text-danger">
                        </asp:Label>
                        <asp:TextBox 
                            ID="txtNotasExtra" 
                            runat="server"
                            TextMode="MultiLine"
                            Rows="4"
                            CssClass="form-control"
                            placeholder="Ingrese notas adicionales">
                        </asp:TextBox>

                    </div>

                    <!-- BOTON -->
                    <div class="col-12">
                        <div class="d-grid" style="justify-content:center">

                            <asp:Button 
                                ID="btnGuardar" 
                                runat="server"
                                Text="Guardar Cita"
                                style ="max-width: 300px; justify-content: center"
                                CssClass="btn btn-primary btn-lg" OnClick="btnGuardar_Click" />

                        </div>
                    </div>

                </div>

            </div>

        </div>

</asp:Content>