using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wsCtrlReservaciones
{
    public partial class PaginaMaestra : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // VALIDACION DE LA SEGURIDAD PARA EL ACCESO AUTORIZADO
            if (Session["nomUsuario"].ToString() == "")
            {
                Response.Write("<script language='javascript'>" +
                    "alert('Acceso NO autorizado ... iniciar sesión');" +
                    "document.location.href = 'AccesoReservaciones.aspx';" +
                    "</script>");
            }

        }

        protected void btnInicio_Click(object sender, EventArgs e)
        {

        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            // CERRAR SESION DEL USUARIO
            // (GESTION DE VARIABLES)
            Session["nomUsuario"] = "";
            Session["usuUsuario"] = "";
            Session["emailUsuario"] = "";
            Response.Write("<script language='javascript'>" +
                "alert('Sesión cerrada exitosamente!');" +
                "document.location.href = 'AccesoReservaciones.aspx';" +
                "</script>");

        }
    }
}