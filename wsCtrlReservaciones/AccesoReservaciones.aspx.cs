using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
// -----------------------------------
using wsCtrlReservaciones.models;

namespace wsCtrlReservaciones
{
    public partial class AccesoReservaciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected async void btnLogin_Click(object sender, EventArgs e)
        {
            string usuario = txtUsuario.Text.Trim();
            string contraseña = txtPassword.Text.Trim();

            // VALIDACIONES
            if (string.IsNullOrWhiteSpace(usuario))
            {
                Label1.Text = "Ingresa un usuario";
            }
            else
            {
                Label1.Text = "";
            }

            if (string.IsNullOrWhiteSpace(contraseña))
            {
                Label2.Text = "Ingresa una contraseña";
            }
            else
            {
                Label2.Text = "";
            }

            // Si hay errores, detener ejecución
            if (string.IsNullOrWhiteSpace(usuario) || string.IsNullOrWhiteSpace(contraseña))
                return;

            try
            {
                using (HttpClient client = new HttpClient())
                {
                    // JSON para enviar a la API
                    string datos = @"{
                ""usuario"":""" + usuario + @""",
                ""contrasena"":""" + contraseña + @"""
            }";

                    HttpContent contenido =
                        new StringContent(datos, Encoding.UTF8, "application/json");

                    string urlApi = "Https://localHost:44362/api/acceso/login";

                    HttpResponseMessage respuesta =
                        await client.PostAsync(urlApi, contenido);

                    if (respuesta.IsSuccessStatusCode)
                    {
                        string resultado =
                            await respuesta.Content.ReadAsStringAsync();

                        clsApiStatus objRespuesta =
                            JsonConvert.DeserializeObject<clsApiStatus>(resultado);

                        if (objRespuesta.ban == 1)
                        {
                            // CREAR SESIONES
                            Session["nomUsuario"] =
                                objRespuesta.datos["nombre_completo"].ToString();

                            Session["usuUsuario"] =
                                objRespuesta.datos["usuario"].ToString();

                            Session["emailUsuario"] =
                                objRespuesta.datos["correo"].ToString();

                            Session["statusUsuario"] =
                                objRespuesta.datos["activo"].ToString();

                            Session["idUsuario"] =
                                objRespuesta.datos["id_usuario"].ToString();

                            Response.Write("<script>" +
                                "window.location='Formulario web1.aspx';" +
                                "</script>");
                        }
                        else
                        {
                            Session.Clear();

                            Response.Write("<script>" +
                                "alert('Acceso denegado');" +
                                "</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>" +
                            "alert('El servicio no responde, intenta más tarde');" +
                            "</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>" +
                    "alert('Ha ocurrido un error en la aplicación');" +
                    "</script>");
            }
        }
    }
}