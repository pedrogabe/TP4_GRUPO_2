<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TP4_GRUPO_2.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblInicio" runat="server" Font-Underline="True" Text="DESTINO INICIO"></asp:Label>
            <br />
            <table style="width:100%;">
                <tr>
                    <td style="width:50%;">PROVINCIA:</td>
                    <td><asp:DropDownList ID="ddlProvinciaInicio" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td>LOCALIDAD:</td>
                    <td><asp:DropDownList runat="server" ID="ddlLocalidadInicio"></asp:DropDownList></td>
                </tr>
            </table>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Font-Underline="True" Text="DESTINO INICIO"></asp:Label>
            <br />
            <table style="width:100%;">
                <tr>
                    <td style="width:50%;">PROVINCIA:</td>
                    <td><asp:DropDownList ID="ddlProvinciaFinal" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td>LOCALIDAD:</td>
                    <td><asp:DropDownList runat="server" ID="ddlLocalidadFinal"></asp:DropDownList></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
