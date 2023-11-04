<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdmKategori.aspx.cs" Inherits="Kategori" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            width: 274px;
        }
        .auto-style6 {
            width: 102%;
        }
        .auto-style7 {
            font-size: x-large;
        }
        .auto-style8 {
            width: 54px;
        }
        .auto-style9 {
            font-size: x-large;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <strong>
        <table class="auto-style3">
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" OnClick="Button1_Click" Text="+" Width="40px" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style7" OnClick="Button2_Click" Text="-" Width="40px" />
                </td>
                <td><strong>KATEGORİ LİSTESİ</strong></td>
            </tr>
        </table>
        </strong>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" CssClass="auto-style7" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style5" style="text-align: left">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <a href="AdmKategori.aspx?Kategoriid=<%# Eval("Kategoriid")   %>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="32px" ImageUrl="~/icons/Delete.png" Width="32px" /></a>
                        </td>
                        <td style="text-align: right">
                            <a href="AdmKategoriGuncelle.aspx?Kategoriid=<%# Eval("Kategoriid")  %>"><asp:Image ID="Image3" runat="server" Height="32px" ImageUrl="~/icons/Refresh.png" Width="32px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
         <strong>
        <table class="auto-style3">
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style7"  Text="+" Width="40px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style7"  Text="-" Width="40px" OnClick="Button4_Click" />
                </td>
                <td><strong>KATEGORİ EKLEME</strong></td>
            </tr>
        </table>
        </strong>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
         <table class="auto-style3">
        <tr>
            <td>Kategori Ad:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Kategori Resim:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="Button5" runat="server" CssClass="auto-style9" Height="40px" Text="Ekle" Width="128px" OnClick="Button5_Click" />
                </strong></td>
        </tr>
    </table>
    </asp:Panel>
   
</asp:Content>

