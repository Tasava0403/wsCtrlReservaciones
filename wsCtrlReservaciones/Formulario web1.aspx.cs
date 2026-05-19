using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Data;
using System.Net.Http;
using System.Threading.Tasks;
using wsCtrlReservaciones.models;
using System.Text;
using System.IO;

namespace wsCtrlReservaciones
{
    public partial class Formulario_web1 : System.Web.UI.Page
    {
        protected async void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["usuUsuario"].ToString();
            Label3.Text = Session["nomUsuario"].ToString();
            Label4.Text = Session["emailUsuario"].ToString();

            if (!IsPostBack)
            {
                await CargarMedicos();
            }
        }

        private async Task CargarMedicos()
        {
            try
            {
                using (HttpClient client = new HttpClient())
                {
                    string apiUrl =
                    "Https://localhost:44362/api/medicos";

                    HttpResponseMessage respuesta =
                        await client.GetAsync(apiUrl);

                    if (respuesta.IsSuccessStatusCode)
                    {
                        string resultado =
                            await respuesta.Content.ReadAsStringAsync();

                        dynamic obj =
                            JsonConvert.DeserializeObject(resultado);

                        List<clsMedico> lista =
                            JsonConvert.DeserializeObject<List<clsMedico>>
                            (
                                obj.datos.vw_medicos_con_foto.ToString()
                            );

                        rptMedicos.DataSource = lista;

                        rptMedicos.DataBind();
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(
                "<script>alert('Error cargando médicos');</script>");
            }
        }
    }
}