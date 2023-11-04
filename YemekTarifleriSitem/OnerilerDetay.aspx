<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="OnerilerDetay.aspx.cs" Inherits="OnerilerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style4 {
        height: 23px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    Tarif Önerileri Detay<table class="auto-style3">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Ad: Soyad:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mail:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Tarif Ad:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Malzemeler:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="150px" TextMode="MultiLine" Width="249px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Yapılış:</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Height="207px" TextMode="MultiLine" Width="247px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Kategori:</td>
            <td class="auto-style4">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="180px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="16px" Height="41px" Text="Onayla" Width="107px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</p>
</asp:Content>

