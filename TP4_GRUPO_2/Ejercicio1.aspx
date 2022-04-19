<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TP4_GRUPO_2.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 21%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblInicio" runat="server" Font-Underline="True" Text="DESTINO INICIO"></asp:Label>
            <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1"><strong>PROVINCIA:</strong></td>
                    <td>
                        <asp:DropDownList ID="ddlProvinciaInicio" runat="server" AutoPostBack ="true" OnSelectedIndexChanged="ddlProvinciaInicio_SelectedIndexChanged"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style1"><strong>LOCALIDAD:</strong></td>
                    <td><asp:DropDownList runat="server" ID="ddlLocalidadInicio">

                        </asp:DropDownList></td>
                </tr>
            </table>
        </div>
        <div>
            <br />
            <asp:Label ID="Label1" runat="server" Font-Underline="True" Text="DESTINO FINAL"></asp:Label>
            <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1"><strong>PROVINCIA:</strong></td>
                    <td>
                        <asp:DropDownList ID="ddlProvinciaFinal" runat="server" AutoPostBack ="true" OnSelectedIndexChanged="ddlProvinciaFinal_SelectedIndexChanged"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="auto-style1"><strong>LOCALIDAD:</strong></td>
                    <td><asp:DropDownList runat="server" ID="ddlLocalidadFinal"></asp:DropDownList></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
