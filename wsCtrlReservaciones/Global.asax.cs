using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace wsCtrlReservaciones
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Código que se ejecuta al iniciar la aplicación
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            // VARIABLES DE SESION (WEB LOCAL)
            Session["nomUsuario"] = "";
            Session["usuUsuario"] = "";
            Session["emailUsuario"] = "";
            Session["statusUsuario"] = "";
            Session["idUsuario"] = "";
        }
    }
}