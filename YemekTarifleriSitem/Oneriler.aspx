<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Oneriler.aspx.cs" Inherits="Oneriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style8 {
            width: 54px;
        }
        .auto-style7 {
            font-size: x-large;
        }
        .auto-style9 {
            width: 202px;
        }
        .auto-style10 {
            width: 89px;
        }
        .auto-style11 {
        width: 206px;
    }
    .auto-style12 {
        width: 103px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <strong>
        <table class="auto-style3">
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Text="+" Width="40px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Text="-" Width="40px" OnClick="Button2_Click" />
                </td>
                <td>ONAYSIZ TARİF ÖNERİLERİ</td>
            </tr>
        </table>
        </strong>
    </asp:Panel>
<asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" CssClass="auto-style7"  Width="364px">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style11" style="text-align: left">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <a href="Oneriler.aspx?Tarifid=<%# Eval("Tarifid")  %>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="32px" ImageUrl="~/icons/Delete.png" Width="32px" /></a>
                        </td>
                        <td style="text-align: right" class="auto-style12">
                            <a href="OnerilerDetay.aspx?Tarifid=<%# Eval("Tarifid")  %>"><asp:Image ID="Image3" runat="server" Height="32px" ImageUrl="~/icons/Refresh.png" Width="32px" /></a>
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
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style7" Text="+" Width="40px" OnClick="Button3_Click"  />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style7" Text="-" Width="40px" OnClick="Button4_Click" />
                </td>
                <td>ONAYLI TARİF ÖNERİLERİ</td>
            </tr>
        </table>
        </strong>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" CssClass="auto-style7"  Width="364px">
            <ItemTemplate>
                <table class="auto-style6">
                    <tr>
                        <td class="auto-style9" style="text-align: left">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style4">
                            <a href="Oneriler.aspx?Tarifid=<%# Eval("Tarifid")  %>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="32px" ImageUrl="~/icons/Delete.png" Width="32px" /></a>
                        </td>
                        <td style="text-align: right" class="auto-style10">
                            <a href="OnerilerDetay.aspx?Tarifid=<%# Eval("Tarifid")  %>"><asp:Image ID="Image3" runat="server" Height="32px" ImageUrl="~/icons/Refresh.png" Width="32px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

