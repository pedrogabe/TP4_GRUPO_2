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
    public partial class Libros : System.Web.UI.Page
    {
        string connStringLibreria;
        protected void Page_Load(object sender, EventArgs e)
        {
            connStringLibreria = ConfigurationManager.ConnectionStrings["Libreria"].ToString();
            if (!IsPostBack)
            {
                string id=null;
                if (Request.QueryString["id"] != null)
                {
                    id = Request.QueryString["id"].ToString();
                }
                if (id!=null)
                {
                    DataSet ds = DB.Query(connStringLibreria, "SELECT * From Libros WHERE IdTema=" + id);
                    gvLibros.DataSource = ds;
                    gvLibros.DataBind();
                }
            }
        }
    }
}