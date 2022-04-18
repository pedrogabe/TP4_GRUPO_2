<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Libros.aspx.cs" Inherits="TP4_GRUPO_2.Libros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gvLibros" runat="server">
            </asp:GridView>
            <br />
            <asp:HyperLink ID="hlRedirect" runat="server" NavigateUrl="~/Ejercicio3.aspx">Colsultar Otro Tema</asp:HyperLink>
        </div>
    </form>
</body>
</html>
