<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Libros.aspx.cs" Inherits="TP4_GRUPO_2.Libros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <span class="auto-style1"><strong>Listado de libros:<br />
            </strong></span><br />
            <asp:GridView ID="gvLibros" runat="server">
            </asp:GridView>
            <br />
            <br />
            <asp:HyperLink ID="hlRedirect" runat="server" NavigateUrl="~/Ejercicio3.aspx">Consultar Otro Tema</asp:HyperLink>
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
