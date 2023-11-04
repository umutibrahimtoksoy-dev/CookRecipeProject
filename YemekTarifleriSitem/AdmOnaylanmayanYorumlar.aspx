<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdmOnaylanmayanYorumlar.aspx.cs" Inherits="AdmOnaylanmayanYorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            font-weight: bold;
        }
        .newStyle1 {
            font-family: "century gothic";
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style2">
        <strong class="newStyle1">Onaylanmayan Yorum</strong><table class="auto-style3">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Ad Soyad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Mail:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>İçerik:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="129px" TextMode="MultiLine" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Yemek:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Font-Names="Century Gothic" Font-Size="16px" Height="46px" Text="Onayla" Width="90px" OnClick="Button1_Click" />
                    </strong></td>
            </tr>
        </table>
    </p>
</asp:Content>

