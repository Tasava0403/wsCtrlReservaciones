using System;
using System.Collections.Generic;
using System.Linq;
using Newtonsoft.Json.Linq;
using System.Web;

namespace wsCtrlReservaciones.models
{
    public class clsApiStatus
    {
        // Estado de ejecución del endpoint (método)
        public bool statusExec { get; set; }
        // Descripción del resultado
        public string msg { get; set; }
        // Código de ejecución del endpoint (método)
        public int ban { get; set; }
        // Objeto Json para envío de datos
        public JObject datos { get; set; }
    }

    public class clsMedico
    {
        public int id_medico { get; set; }

        public string nombre_completo { get; set; }

        public string especialidad { get; set; }

        public string consultorio { get; set; }

        public string telefono { get; set; }

        public string url_foto { get; set; }

        public bool activo { get; set; }
    }
}