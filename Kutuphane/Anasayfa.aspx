<%@ Page Title="" Language="C#" MasterPageFile="~/Kutuphane.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="Kutuphane.Anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css/Kutuphane.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="navbar">
                    <a href="Anasayfa.aspx">Anasayfa</a>
                    <div class="subnav">
                        <button class="subnavbtn">About <i class="fa fa-caret-down"></i></button>
                        <div class="subnav-content">
                            <a href="#company">Company</a>
                            <a href="#team">Team</a>
                            <a href="#careers">Careers</a>
                        </div>
                    </div>
                    <div class="subnav">
                        <button class="subnavbtn">Services <i class="fa fa-caret-down"></i></button>
                        <div class="subnav-content">
                            <a href="#bring">Bring</a>
                            <a href="#deliver">Deliver</a>
                            <a href="#package">Package</a>
                            <a href="#express">Express</a>
                        </div>
                    </div>
                    <div class="subnav">
                        <button class="subnavbtn">Partners <i class="fa fa-caret-down"></i></button>
                        <div class="subnav-content">
                            <a href="#link1">Link 1</a>
                            <a href="#link2">Link 2</a>
                            <a href="#link3">Link 3</a>
                            <a href="#link4">Link 4</a>
                        </div>
                    </div>
                    <a href="#contact">Contact</a>
                </div>



    <table>
        <tr><td>Kitap Adı</td><td>
            <asp:TextBox ID="txtKitapAd" runat="server"></asp:TextBox></td><td></td></tr>
        <tr><td>Yazar Adı</td><td> <asp:TextBox ID="txtYazar" runat="server"></asp:TextBox></td><td></td></tr>
        <tr><td></td><td> </td> <td>
            <asp:Image ID="imgKitap" runat="server" Height="135px" Width="230px" /></td></tr>
        <tr><td></td><td></td> <td>
            <asp:FileUpload ID="fuYukle" runat="server" />
            </td></tr>
        <tr><td>
            <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" OnClick="btnKaydet_Click" /></td><td>
            </td><td>
                <asp:Label ID="lblNot" runat="server" Text=""></asp:Label>
            </td></tr>
    </table>


    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
</asp:Content>
