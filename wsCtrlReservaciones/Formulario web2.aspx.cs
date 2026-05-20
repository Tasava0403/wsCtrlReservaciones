using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using wsCtrlReservaciones.models;

namespace wsCtrlReservaciones
{
    public partial class Formulario_web2 : System.Web.UI.Page
    {
        protected async void Page_Load(object sender, EventArgs e)
        {
            
            GridView1.PageIndexChanging += GridView1_PageIndexChanging;

            await CargarDatos();
            
        }

        private void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
            //throw new NotImplementedException();
        }

        private async Task CargarDatos()
        {
            try
            {
                using (HttpClient client = new HttpClient())
                {
                    // Ejecución de la petición de un endpoint a una webApi
                    string apiUrl = "Https://localhost:44362/api/reservas?nombre=" + TextBox1.Text;
                    HttpResponseMessage respuesta =
                                    await client.GetAsync(apiUrl);
                    // ---------------------------------------------------
                    // Validación de recepción de respuesta Json
                    clsApiStatus objRespuesta = new clsApiStatus();

                    // Validación de estado de ejecución
                    if (respuesta.IsSuccessStatusCode)
                    {
                        string resultado = await respuesta.Content.ReadAsStringAsync();
                        objRespuesta = JsonConvert.DeserializeObject<clsApiStatus>(resultado);
                        // ------------------------------------------
                        JArray jsonArray = (JArray)objRespuesta.datos["vw_agenda_citas"];
                        // Convertir JArray a DataTable
                        DataTable dt = JsonConvert.DeserializeObject<DataTable>(jsonArray.ToString());
                        // -------------------------------------------
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                    }
                    else
                    {
                        Response.Write("<script language='javascript'>alert('Error de conexión con webapi');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script language='javascript'>alert('Error inesperado ...');</script>");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}