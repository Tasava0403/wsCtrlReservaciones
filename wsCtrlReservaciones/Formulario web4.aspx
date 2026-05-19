<%@ Page Async="true" Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Formulario web4.aspx.cs" Inherits="wsCtrlReservaciones.Formulario_web4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="App_Themes/Reservaciones.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid mt-4">

        <div class="card shadow-sm">

            <div class="card-header titulo-grid">
                <h3 class="mb-0">Disponibilidad</h3>
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
                        HeaderStyle-CssClass="table-dark" AllowPaging="True" PageSize="2">

                        <AlternatingRowStyle BackColor="Gray" />

                        <Columns>

                            <asp:BoundField DataField="nombre_completo" HeaderText="Medico" />

                            <asp:BoundField DataField="especialidad" HeaderText="Especialidad" />

                            <asp:BoundField DataField="consultorio" HeaderText="Consultorio" />

                            <asp:BoundField DataField="telefono" HeaderText="Telefono" />

                            <asp:BoundField DataField="email" HeaderText="Email" />
                        </Columns>

                        <HeaderStyle CssClass="table-dark"></HeaderStyle>
                        <PagerStyle CssClass="grid-pager" />

                    </asp:GridView>

                </div>

            </div>

        </div>

    </div>
</asp:Content>
