<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2.aspx.cs" Inherits="TP4_GRUPO_2.Ejercicio2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:50%;">
                <tr>
                    <td style="width:30%">
                        <asp:Label runat="server" ID="lblProducto">IdProducto:</asp:Label>
                    </td>
                    <td style="width:35%">
                        <asp:DropDownList runat="server" ID="ddlProductoComparador">
                            <asp:ListItem Value="=">Igual a:</asp:ListItem>
                            <asp:ListItem Value=">">Mayor a:</asp:ListItem>
                            <asp:ListItem Value="<">Menor a:</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtProducto"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width:30%">
                        <asp:Label runat="server" ID="lblCategoria">IdCategoría:</asp:Label>
                    </td>
                    <td style="width:35%">
                        <asp:DropDownList runat="server" ID="ddlCategoriaComparador">
                            <asp:ListItem Value="=">Igual a:</asp:ListItem>
                            <asp:ListItem Value=">">Mayor a:</asp:ListItem>
                            <asp:ListItem Value="<">Menor a:</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtCategoria"></asp:TextBox>
                    </td>
                </tr>
            </table>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <asp:Button runat="server" ID="btnFiltrar" Text="Filtrar" OnClick="btnFiltrar_Click1" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button runat="server" ID="btnQuitarFiltro" Text="Quitar Filtro" Width="98px" OnClick="btnQuitarFiltro_Click" />
        &nbsp;&nbsp;
        </div>
        <asp:GridView runat="server" ID="gvProductos"></asp:GridView>
    </form>
</body>
</html>
