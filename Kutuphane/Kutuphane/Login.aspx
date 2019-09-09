<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Kutuphane.Login" %>

<!DOCTYPE html>
<link href="Css/Css.css" rel="stylesheet" />

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Giriş Yap</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="box">
            <table class="table1">
                <tr>
                    <td>
                        <asp:Label Text="Kullanıcı Adı : " runat="server" class="labels" /></td>
                    <td>
                        <asp:TextBox ID="txtKullaniciAd" runat="server" class="textBoxes" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtKullaniciAd" ErrorMessage="*" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Parola : " runat="server" class="labels" /></td>
                    <td>
                        <asp:TextBox ID="txtParola" runat="server" class="textBoxes" TextMode="Password" /></td>
                </tr>
                
            </table>
            <asp:Button Text="Giriş" ID="btnGiris" runat="server" OnClick="btnGiris_Click" type="submit" class="buttons" /><br />

            <asp:Label ID="lblAciklama" runat="server" class="error" />
        </div>
    </form>
</body>
</html>
