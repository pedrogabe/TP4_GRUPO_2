<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio3.aspx.cs" Inherits="TP4_GRUPO_2.Ejercicio3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <label>Seleccionar tema</label>
                <asp:DropDownList ID="ddlTema" runat="server">
                    <asp:ListItem Value="1">Tema 1</asp:ListItem>
                    <asp:ListItem Value="2">Tema 2</asp:ListItem>
                    <asp:ListItem Value="3">Tema 3</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Ver Libros</asp:LinkButton>
            </div>
        </div>
    </form>
</body>
</html>
