using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Threading.Tasks;

namespace wsCtrlReservaciones
{
    public partial class Formulario_web4 : System.Web.UI.Page
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
            DataTable dt = new DataTable();

            dt.Columns.Add("nombre_completo");
            dt.Columns.Add("especialidad");
            dt.Columns.Add("consultorio");
            dt.Columns.Add("telefono");
            dt.Columns.Add("email");

            dt.Rows.Add("Dr. Juan Pérez", "Cardiología", "101", "4421234567", "juan.perez@gmail.com");
            dt.Rows.Add("Dra. María López", "Pediatría", "102", "4429876543", "maria.lopez@gmail.com");
            dt.Rows.Add("Dr. Carlos Ramírez", "Dermatología", "103", "4425557788", "carlos.ramirez@gmail.com");
            dt.Rows.Add("Dra. Ana Torres", "Neurología", "104", "4421112233", "ana.torres@gmail.com");

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}