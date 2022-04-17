using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TP4_GRUPO_2
{
    public partial class Ejercicio2 : System.Web.UI.Page
    {
        string connStringNeptuno;
        protected void Page_Load(object sender, EventArgs e)
        {
            connStringNeptuno = ConfigurationManager.ConnectionStrings["Neptuno"].ToString();
            if (!IsPostBack)
            {
                DataSet ds = DB.Query(
                        connStringNeptuno,
                        "SELECT IdProducto, NombreProducto, IdCategoría, CantidadPorUnidad, PrecioUnidad FROM Productos"
                    );
                gvProductos.DataSource = ds;
                gvProductos.DataBind();
            }
        }
    }
}