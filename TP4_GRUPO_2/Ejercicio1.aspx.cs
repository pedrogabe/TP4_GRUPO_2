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
                        "Data Source=(local)\\SQLEXPRESS;Initial Catalog=Viajes;Integrated Security=True",
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

                ddlProvinciaInicio.SelectedValue = ddlProvinciaInicio.SelectedItem.Value;

                ds = DB.Query(
                        "Data Source=(local)\\SQLEXPRESS;Initial Catalog=Viajes;Integrated Security=True",
                        "SELECT [IdLocalidad], [NombreLocalidad], [IdProvincia] FROM Localidades WHERE IdProvincia="+ ddlProvinciaInicio.SelectedValue
                    );

                ddlLocalidadInicio.DataSource = ds;
                ddlLocalidadInicio.DataTextField = "NombreLocalidad";
                ddlLocalidadInicio.DataValueField = "IdLocalidad";
                
                ddlLocalidadFinal.DataSource = ds;
                ddlLocalidadFinal.DataTextField = "NombreLocalidad";
                ddlLocalidadFinal.DataValueField = "IdLocalidad";

                ddlLocalidadInicio.DataBind();
                ddlLocalidadFinal.DataBind();
            }
        }

        protected void ddlProvinciaInicio_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlProvinciaInicio.SelectedValue = ddlProvinciaInicio.SelectedItem.Value;

            DataSet ds = DB.Query(
                    "Data Source=(local)\\SQLEXPRESS;Initial Catalog=Viajes;Integrated Security=True",
                    "SELECT [IdLocalidad], [NombreLocalidad], [IdProvincia] FROM Localidades WHERE IdProvincia=" + ddlProvinciaInicio.SelectedValue
                );

            ddlLocalidadInicio.DataSource = ds;
            ddlLocalidadInicio.DataTextField = "NombreLocalidad";
            ddlLocalidadInicio.DataValueField = "IdLocalidad";

            ddlLocalidadInicio.DataBind();
        }

        protected void ddlProvinciaFinal_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlProvinciaFinal.SelectedValue = ddlProvinciaFinal.SelectedItem.Value;

            DataSet ds = DB.Query(
                    "Data Source=(local)\\SQLEXPRESS;Initial Catalog=Viajes;Integrated Security=True",
                    "SELECT [IdLocalidad], [NombreLocalidad], [IdProvincia] FROM Localidades WHERE IdProvincia=" + ddlProvinciaFinal.SelectedValue
                );

            ddlLocalidadFinal.DataSource = ds;
            ddlLocalidadFinal.DataTextField = "NombreLocalidad";
            ddlLocalidadFinal.DataValueField = "IdLocalidad";

            ddlLocalidadFinal.DataBind();
        }
    }
}