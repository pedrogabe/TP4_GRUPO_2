using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TP4_GRUPO_2
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataSet ds = DB.Query(
                        "Data Source=localhost;Initial Catalog=Viajes;Integrated Security=True",
                        "SELECT [IdProvincia], [NombreProvincia] FROM Provincias"
                    );
                ddlProvinciaInicio.DataSource = ds;
                ddlProvinciaInicio.DataTextField = "NombreProvincia";
                ddlProvinciaInicio.DataValueField = "IdProvincia";
                ddlProvinciaFinal.DataSource = ds;
                ddlProvinciaFinal.DataTextField = "NombreProvincia";
                ddlProvinciaFinal.DataValueField = "IdProvincia";
                ddlProvinciaInicio.DataBind();
                ddlProvinciaFinal.DataBind();
            }
        }


    }
}