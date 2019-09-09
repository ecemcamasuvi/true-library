<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="Kutuphane.Giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <div>
            <table>
                <tr>
                    <td>
                            <asp:TextBox ID="txtKullaniciAd" runat="server"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td>
                    <asp:TextBox ID="txtParola" runat="server"></asp:TextBox>
                    </td>

                </tr>

                <tr><td>
                    <asp:Button ID="btnGiris" runat="server" Text="Giriş" OnClick="btnGiris_Click" /> <asp:Label ID="lblAciklama" runat="server" Text=""></asp:Label>

                    </td>

                </tr>
            </table>
        </div>
    </form>
</body>
</html>
