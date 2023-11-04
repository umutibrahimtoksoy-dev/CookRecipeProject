<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdmMesajDetay.aspx.cs" Inherits="AdmMesajDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        margin-left: 80px;
    }
    .auto-style5 {
        margin-left: 120px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    Mesaj Detay<table class="auto-style3">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Ad Soyad:</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mail:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Başlık:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>İçerik:</td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBox4" runat="server" Height="122px" TextMode="MultiLine" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Tarih:</td>
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</p>
</asp:Content>

