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
                // Query para provincia inicio
                DataSet ds = DB.Query(
                        "Data Source=(local)\\SQLEXPRESS;Initial Catalog=Viajes;Integrated Security=True",
                        "SELECT * FROM Provincias"
                    );
                ddlProvinciaInicio.DataSource = ds;
                ddlProvinciaInicio.DataTextField = "NombreProvincia";
                ddlProvinciaInicio.DataValueField = "IdProvincia";
                ddlProvinciaInicio.DataBind();

                // Query para provincia final
                ds = DB.Query(
                        "Data Source=(local)\\SQLEXPRESS;Initial Catalog=Viajes;Integrated Security=True",
                        "SELECT * FROM Provincias WHERE IdProvincia !=" + ddlProvinciaInicio.SelectedValue
                    );
                ddlProvinciaFinal.DataSource = ds;
                ddlProvinciaFinal.DataTextField = "NombreProvincia";
                ddlProvinciaFinal.DataValueField = "IdProvincia";
                ddlProvinciaFinal.DataBind();

                // Query para localidad inicio
                ds = DB.Query(
                        "Data Source=(local)\\SQLEXPRESS;Initial Catalog=Viajes;Integrated Security=True",
                        "SELECT * FROM Localidades WHERE IdProvincia="+ ddlProvinciaInicio.SelectedValue
                    );
                ddlLocalidadInicio.DataSource = ds;
                ddlLocalidadInicio.DataTextField = "NombreLocalidad";
                ddlLocalidadInicio.DataValueField = "IdLocalidad";
                ddlLocalidadInicio.DataBind();

                // Query para localidad final
                ds = DB.Query(
                        "Data Source=(local)\\SQLEXPRESS;Initial Catalog=Viajes;Integrated Security=True",
                        "SELECT * FROM Localidades WHERE IdProvincia=" + ddlProvinciaFinal.SelectedValue
                    );
                ddlLocalidadFinal.DataSource = ds;
                ddlLocalidadFinal.DataTextField = "NombreLocalidad";
                ddlLocalidadFinal.DataValueField = "IdLocalidad";
                ddlLocalidadFinal.DataBind();
            }
        }

        protected void ddlProvinciaInicio_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Query para provincia final
            DataSet ds = DB.Query(
                        "Data Source=(local)\\SQLEXPRESS;Initial Catalog=Viajes;Integrated Security=True",
                        "SELECT * FROM Provincias WHERE IdProvincia !=" + ddlProvinciaInicio.SelectedValue
                    );
            ddlProvinciaFinal.DataSource = ds;
            ddlProvinciaFinal.DataTextField = "NombreProvincia";
            ddlProvinciaFinal.DataValueField = "IdProvincia";
            ddlProvinciaFinal.DataBind();


            // Query para localidad inicio
            ds = DB.Query(
                        "Data Source=(local)\\SQLEXPRESS;Initial Catalog=Viajes;Integrated Security=True",
                        "SELECT * FROM Localidades WHERE IdProvincia=" + ddlProvinciaInicio.SelectedValue
                    );
            ddlLocalidadInicio.DataSource = ds;
            ddlLocalidadInicio.DataTextField = "NombreLocalidad";
            ddlLocalidadInicio.DataValueField = "IdLocalidad";
            ddlLocalidadInicio.DataBind();

            // Query para localidad final
            ds = DB.Query(
                    "Data Source=(local)\\SQLEXPRESS;Initial Catalog=Viajes;Integrated Security=True",
                    "SELECT * FROM Localidades WHERE IdProvincia=" + ddlProvinciaFinal.SelectedValue
                );
            ddlLocalidadFinal.DataSource = ds;
            ddlLocalidadFinal.DataTextField = "NombreLocalidad";
            ddlLocalidadFinal.DataValueField = "IdLocalidad";
            ddlLocalidadFinal.DataBind();
        }

        protected void ddlProvinciaFinal_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Query para localidad final
            DataSet ds = DB.Query(
                    "Data Source=(local)\\SQLEXPRESS;Initial Catalog=Viajes;Integrated Security=True",
                    "SELECT * FROM Localidades WHERE IdProvincia=" + ddlProvinciaFinal.SelectedValue
                );
            ddlLocalidadFinal.DataSource = ds;
            ddlLocalidadFinal.DataTextField = "NombreLocalidad";
            ddlLocalidadFinal.DataValueField = "IdLocalidad";
            ddlLocalidadFinal.DataBind();
        }
    }
}