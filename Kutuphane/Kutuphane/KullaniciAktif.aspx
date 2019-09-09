<%@ Page Title="Kullanıcıyı Aktifleştir" Language="C#" MasterPageFile="~/Yetkili.Master" AutoEventWireup="true" CodeBehind="KullaniciAktif.aspx.cs" Inherits="Kutuphane.KullaniciAktif" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="search" runat="server" class="searchDuzen">

        <table class="tableSearch">
            <tr>
                <td>
                    <asp:TextBox type="text" placeholder="Kullanıcı adını ya da ID bilgisini giriniz.." name="search2" ID="txtsearchID" runat="server" />

                </td>
                <td>
                    <asp:Button Text="Arama" runat="server" OnClick="Search_Click" ID="Button1" class="butonForSearching" />

                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label Text="Aradığınız Kriterde Kullanıcı Bulunamadı." runat="server" ID="lblBulunamadi" Visible="false" />
                </td>
            </tr>
        </table>
    </div>


    <div class="mainDiv" id="list" runat="server" style="transform: translate(-30px,200px)">
        <asp:GridView ID="gridKullanici" runat="server" class="grid" AutoGenerateColumns="false">
            <HeaderStyle Font-Size="Large" ForeColor="#006600" Width="200" Height="30" />
            <Columns>
                <asp:TemplateField HeaderText="Kullanıcı ID">
                    <ItemTemplate>
                        <asp:HyperLink runat="server" class="butonKitap" Text='<%#Eval("ID") %>' NavigateUrl='<%#Eval("ID","~/KullaniciAktif.aspx?kullaniciID={0}") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Kullanıcı Adı">
                    <ItemTemplate>
                        <asp:HyperLink runat="server" class="butonKitap" Text='<%#Eval("KullaniciAd") %>' NavigateUrl='<%#Eval("ID","~/KullaniciAktif.aspx?kullaniciID={0}") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Ad" HeaderText="Kullanıcının Adı" />
                <asp:BoundField DataField="Soyad" HeaderText="Kullanıcının Soyadı" />
                <asp:BoundField DataField="Telefon" HeaderText="Telefon Numarası" />
                <asp:BoundField DataField="Adres" HeaderText="Adresi" />
                <asp:TemplateField HeaderText="Kullanıcıyı Aktifleştir">
                    <ItemTemplate>
                        <asp:CheckBox runat="server" ID="forActivate"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

            <RowStyle ForeColor="#336600" Width="200" />
        </asp:GridView>
    </div>

    <div id="delButon" runat="server" class="delBox">
        <asp:Button Text="Seçilen Kişileri Aktifleştir" runat="server" class="delButton" OnClick="MultipleDel_Click" />
    </div>

    <div id="add" runat="server" class="table1" visible="false">
        <table>

            <tr>
                <td>
                    <asp:Label Text="Adı : " runat="server" class="label1" />
                </td>
                <td>
                    <asp:TextBox ID="txtAd" runat="server" class="text1" ReadOnly="true" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="Soyadı : " runat="server" class="label1" />
                </td>
                <td>
                    <asp:TextBox ID="txtSoyad" runat="server" class="text1" ReadOnly="true" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="Telefon Numarası : " runat="server" class="label1" />
                </td>
                <td>
                    <asp:TextBox ID="txtNo" runat="server" class="text1" ReadOnly="true" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="Adresi : " runat="server" class="label1" />
                </td>

            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="txtAdres" runat="server" class="textMulti" TextMode="MultiLine" ReadOnly="true" />
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <asp:Button Text="Kullanıcıyı Aktfileştir" ID="btnRent" runat="server" OnClick="btnAktif_Click" type="submit" class="buttons" />
                </td>
            </tr>


        </table>
    </div>



    <div class="confirm" id="confirm" runat="server" visible="false">
        <asp:Label Text="Kullanıcı başarılı bir şekilde aktif edilmiştir." runat="server" class="confirmLabelDel" />
    </div>
    <div class="confirm2" id="confirm2" runat="server" visible="false">
        <asp:Button Text="Kullanıcı Bilgileri" ID="btnYenidenkaydet" runat="server" OnClick="btnKullaniciBilgi_Click" type="submit" class="buttons" />

    </div>

</asp:Content>
