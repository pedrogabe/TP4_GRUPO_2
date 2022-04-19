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
                DataSet ds = DB.Query(connStringNeptuno, "SELECT * From Productos");
                gvProductos.DataSource = ds;
                gvProductos.DataBind();
            }
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {

        }

        protected void btnQuitarFiltro_Click(object sender, EventArgs e)
        {
            DataSet ds = DB.Query(connStringNeptuno, "SELECT * From Productos");
            gvProductos.DataSource = ds;
            gvProductos.DataBind();
        }

        protected void btnFiltrar_Click1(object sender, EventArgs e)
        {
            string Inst = null, oP, oC;

            oP = ddlProductoComparador.SelectedValue.ToString();
            oC = ddlCategoriaComparador.SelectedValue.ToString();

            if (oP != null && oC != null)
            { 
                if (txtProducto.Text == "" || txtCategoria.Text == "")
                {
                    if (txtProducto.Text != "")
                    {
                    Inst = "SELECT * From Productos WHERE IdProducto" + oP + txtProducto.Text;
                    }
                    else
                    {
                        if (txtCategoria.Text != "")
                        {
                            Inst = "SELECT * From Productos WHERE IdCategoría" + oC + txtCategoria.Text;
                        }
                        else
                        {
                            Inst = "SELECT * From Productos";
                        }
                    }
                }
                else
                {
                    Inst = "SELECT * From Productos WHERE IdProducto" + oP + txtProducto.Text + "AND IdCategoría" + oC + txtCategoria.Text;
                }
                if (Inst != null)
                {
                    DataSet ds = DB.Query(connStringNeptuno, Inst);
                    gvProductos.DataSource = ds;
                    gvProductos.DataBind();
                }
            }
        }
    }
}