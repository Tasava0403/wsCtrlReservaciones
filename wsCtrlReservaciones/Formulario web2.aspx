<%@ Page Async="true" Title="Listado de Reservaciones" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Formulario web2.aspx.cs" Inherits="wsCtrlReservaciones.Formulario_web2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <link href="App_Themes/Reservaciones.css" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid mt-4">

        <div class="card shadow-sm">

            <div class="card-header titulo-grid">
                <h3 class="mb-0">Listado de Reservaciones</h3>
            </div>

            <div class="card-body">
                <asp:Label ID="Label2" runat="server" Text="Busqueda:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Width="336px"></asp:TextBox>
                &nbsp;<asp:Button ID="Button2" runat="server" Height="30px" Text="Buscar" Width="108px" BackColor="#0D6EFD" />
                <br />

                <div class="table-responsive" style="padding-top: 10px">
                   
                    <asp:GridView 
                        ID="GridView1" 
                        runat="server"
                        AutoGenerateColumns="False"
                        CssClass="table table-bordered table-hover table-striped grid-reservaciones"
                        HeaderStyle-CssClass="table-dark" AllowPaging="True" PageSize="2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">

                        <AlternatingRowStyle BackColor="Gray" />

                        <Columns>

                            <asp:BoundField DataField="id_cita" HeaderText="ID Cita" />

                            <asp:BoundField DataField="medico" HeaderText="Medico" />

                            <asp:BoundField DataField="especialidad" HeaderText="Especialidad" />

                            <asp:BoundField DataField="consultorio" HeaderText="Consultorio" />

                            <asp:BoundField DataField="paciente" HeaderText="Paciente" />

                            <asp:BoundField DataField="telefono" HeaderText="Telefono" />

                            <asp:BoundField DataField="email" HeaderText="Email" />

                            <asp:BoundField DataField="fecha_cita" HeaderText="Fecha Cita" 
                                DataFormatString="{0:dd/MM/yyyy}" />

                            <asp:BoundField DataField="hora_inicio" HeaderText="Hora Inicio" />

                            <asp:BoundField DataField="hora_fin" HeaderText="Hora Final" />

                            <asp:BoundField DataField="tipo_consulta" HeaderText="Hora Final" />

                            <asp:BoundField DataField="estado" HeaderText="Hora Final" />

                            <asp:BoundField DataField="motivo_consulta" HeaderText="Hora Final" />

                        </Columns>

                        <HeaderStyle CssClass="table-dark"></HeaderStyle>
                        <PagerStyle CssClass="grid-pager" />

                    </asp:GridView>

                </div>

            </div>

        </div>

    </div>

</asp:Content>