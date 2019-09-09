<%@ Page Title="Profil" Language="C#" MasterPageFile="~/Yetkili.Master" AutoEventWireup="true" CodeBehind="Authorized.aspx.cs" Inherits="Kutuphane.Authorized" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Css/CssOther.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="header1">YETKİLİNİN BİLGİLERİ</h2>
    <div class="div1">
        <table class="table2">
            <tr>
                <td>
                    <asp:Label Text="İsim : " runat="server" class="label1" />
                </td>
                <td></td>
                <td>
                    <asp:Label ID="txtname" runat="server" class="label1" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="Telefon Numarası : " runat="server" class="label1" />
                </td>
                <td></td>
                <td>
                    <asp:Label ID="txtphoneNo" runat="server" class="label1" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="Adres : " runat="server" class="label1"/>
                </td>
                <td></td>
                <td>
                    <asp:Label ID="txtaddress" runat="server" class="label1" />
                </td>
            </tr>
          
        </table>
    </div>
</asp:Content>
