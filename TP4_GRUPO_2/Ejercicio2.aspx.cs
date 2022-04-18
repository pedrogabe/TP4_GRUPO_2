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
                DataSet ds = DB.Query( connStringNeptuno,"SELECT IdProducto From Productos");
                gvProductos.DataSource = ds;
                gvProductos.DataBind();
            }
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnQuitarFiltro_Click(object sender, EventArgs e)
        {
            DataSet ds = DB.Query(connStringNeptuno, "SELECT IdProducto From Productos");
            gvProductos.DataSource = ds;
            gvProductos.DataBind();
        }

        protected void btnFiltrar_Click1(object sender, EventArgs e)
        {
            if (ddlProductoComparador.SelectedItem.Text == "Igual a:")
            {
                if (txtProducto.Text != "" && txtCategoria.Text != "")
                {
                    DataSet ds = DB.Query(connStringNeptuno, "SELECT * From Productos WHERE IdProducto=" + txtProducto.Text + "AND IdCategoría=" + txtCategoria.Text);
                    gvProductos.DataSource = ds;
                    gvProductos.DataBind();
                }
                else
                {
                    if (txtProducto.Text != "")
                    {
                        DataSet ds = DB.Query(connStringNeptuno, "SELECT * From Productos WHERE IdProducto=" + txtProducto.Text);
                        gvProductos.DataSource = ds;
                        gvProductos.DataBind();
                    }
                    else
                    {
                        if (txtCategoria.Text != "")
                        {
                            DataSet ds = DB.Query(connStringNeptuno, "SELECT * From Productos WHERE IdCategoría=" + txtCategoria.Text);
                            gvProductos.DataSource = ds;
                            gvProductos.DataBind();
                        }
                        else
                        {
                            DataSet ds = DB.Query(connStringNeptuno, "SELECT * From Productos");
                            gvProductos.DataSource = ds;
                            gvProductos.DataBind();
                        }
                    }
                }
                
            }
            
        }
    }
}