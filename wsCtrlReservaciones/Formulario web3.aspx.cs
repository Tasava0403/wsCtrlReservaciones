using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using wsCtrlReservaciones.models;

namespace wsCtrlReservaciones
{
    public partial class Formulario_web3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string idMedico = Request.QueryString["idMedico"];

                if (!IsPostBack)
                {
                    string id_Medico =
                        Request.QueryString["idMedico"];

                    string nombre =
                        Request.QueryString["nombre"];

                    string especialidad =
                        Request.QueryString["especialidad"];

                    string consultorio =
                        Request.QueryString["consultorio"];

                    string telefono =
                        Request.QueryString["telefono"];

                    // ID NO SE MUESTRA
                    ViewState["idMedico"] = idMedico;

                    nMedico.Text = nombre;
                    mEspecialidad.Text = especialidad;
                    mConsultorio.Text = consultorio;
                    mNumero.Text = telefono;
                }
            }

        }

        protected async void btnGuardar_Click(object sender, EventArgs e)
        {
            // LIMPIAR ERRORES
            errorFecha.Text = "";
            errorHInicio.Text = "";
            errorHFinal.Text = "";
            errorTipoConsulta.Text = "";
            errorMotivo.Text = "";
            errorNotas.Text = "";
            errorNombre.Text = "";
            errorTelefono.Text = "";
            errorEmail.Text = "";

            // OBTENER DATOS
            string nombrePaciente = txtNombrePaciente.Text.Trim();
            string telefono = txtTelefono.Text.Trim();
            string email = txtEmail.Text.Trim();
            string fecha = DropDownList1.Text;
            string horaInicio = DropDownList2.Text;
            string horaFinal = DropDownList3.Text;
            string tipoConsulta = ddlTipoConsulta.Text;
            string motivoConsulta = txtMotivoConsulta.Text;
            string notasExtra = txtNotasExtra.Text;

            bool hayErrores = false;

            if (String.IsNullOrWhiteSpace(nombrePaciente))
            {
                errorNombre.Text = "Ingresa el nombre del paciente";
                hayErrores = true;
            }

            if (String.IsNullOrWhiteSpace(telefono))
            {
                errorTelefono.Text = "Ingresa el teléfono";
                hayErrores = true;
            }

            if (String.IsNullOrWhiteSpace(email))
            {
                errorEmail.Text = "Ingresa el correo electrónico";
                hayErrores = true;
            }

            if (String.IsNullOrWhiteSpace(fecha))
            {
                errorFecha.Text = "Selecciona una fecha";
                hayErrores = true;
            }

            if (String.IsNullOrWhiteSpace(horaInicio))
            {
                errorHInicio.Text = "Selecciona una hora inicial";
                hayErrores = true;
            }

            if (String.IsNullOrWhiteSpace(horaFinal))
            {
                errorHFinal.Text = "Selecciona una hora final";
                hayErrores = true;
            }

            if (String.IsNullOrWhiteSpace(tipoConsulta))
            {
                errorTipoConsulta.Text = "Selecciona un tipo de consulta";
                hayErrores = true;
            }

            if (String.IsNullOrWhiteSpace(motivoConsulta))
            {
                errorMotivo.Text = "Ingresa el motivo de consulta";
                hayErrores = true;
            }

            if (String.IsNullOrWhiteSpace(notasExtra))
            {
                errorNotas.Text = "Ingresa notas adicionales";
                hayErrores = true;
            }

            if (hayErrores)
                return;

            // LLAMAR PROCEDIMIENTO API
            await CargarDatos();
        }

        private async Task CargarDatos()
        {
            try
            {
                using (HttpClient client = new HttpClient())
                {
                    var cita = new
                    {
                        id_medico = Convert.ToInt32(ViewState["idMedico"]),
                        nombre_paciente = txtNombrePaciente.Text,
                        telefono_paciente = txtTelefono.Text,
                        email_paciente = txtEmail.Text,
                        fecha_cita = DropDownList1.Text,
                        hora_inicio = DropDownList2.Text,
                        hora_fin = DropDownList3.Text,
                        motivo_consulta = txtMotivoConsulta.Text,
                        tipo_consulta = ddlTipoConsulta.Text
                    };

                    string json =
                        JsonConvert.SerializeObject(cita);

                    HttpContent contenido =
                        new StringContent(json,
                        Encoding.UTF8,
                        "application/json");

                    string apiUrl =
                        "Https://localhost:44362/api/citas/agendar";

                    HttpResponseMessage respuesta =
                        await client.PostAsync(apiUrl, contenido);

                    if (respuesta.IsSuccessStatusCode)
                    {
                        Response.Write(
                            "<script>alert('Cita registrada exitosamente');" +
                            "document.location.href='WebForm2.aspx';" +
                            "</script>");
                    }
                    else
                    {
                        Response.Write(
                            "<script>alert('Error de conexión con el servicio');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(
                    "<script>alert('Error en la aplicación, intentar nuevamente');</script>");
            }
        }
    }

}