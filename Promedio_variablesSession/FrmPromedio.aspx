<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmPromedio.aspx.cs" Inherits="Promedio_variablesSession.FrmPromedio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            font-weight: bold;
        }
        .auto-style3 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            font-weight: bold;
            width: 585px;
        }
        .auto-style4 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            font-weight: bold;
            width: 381px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Cantidad de numeros</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtN" runat="server" OnTextChanged="TxtN_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="Btncantidad" runat="server" Font-Bold="True" OnClick="Btncantidad_Click" Text="Cantidad de numero" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Digite numero</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="Txtnumero" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Btnpromedio" runat="server" Font-Bold="True" OnClick="Btnpromedio_Click" Text="Hallar Promedio" />
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="Lblpromedio" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Btnlimpiar" runat="server" Font-Bold="True" OnClick="Btnlimpiar_Click" Text="Limpiar" />
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="Lblmensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
