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
    public partial class Ejercicio3 : System.Web.UI.Page
    {
        string connStringLibreria;
        protected void Page_Load(object sender, EventArgs e)
        {
            connStringLibreria = ConfigurationManager.ConnectionStrings["Libreria"].ToString();
            if (!IsPostBack)
            {
                DataSet ds = DB.Query(connStringLibreria, "SELECT * FROM Temas");
                ddlTema.DataSource = ds;
                ddlTema.DataTextField = "Tema";
                ddlTema.DataValueField = "idTema";
                ddlTema.DataBind();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Libros.aspx?id=" + ddlTema.SelectedValue);
        }
    }
}