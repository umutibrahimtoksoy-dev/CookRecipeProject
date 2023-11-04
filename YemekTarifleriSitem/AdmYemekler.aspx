<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdmYemekler.aspx.cs" Inherits="AdmYemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style7 {
            font-size: x-large;
            margin-left: 0px;
        }
        .auto-style9 {
            text-align: right;
        }
        .auto-style10 {
            width: 185px;
        }
        .auto-style11 {
            font-size: medium;
        }
    .auto-style12 {
        font-size: x-large;
        width: 240px;
    }
    .auto-style13 {
        width: 60px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style12">
                    <strong>Yemek Listesi</strong></td>
                <td class="auto-style13">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Font-Bold="True" Height="38px" Text="+" Width="48px" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style5" Font-Bold="True" Height="38px" Text="-" Width="48px" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
    </div>
    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="394px">
            <ItemTemplate>
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style9"><a href='AdmYemekler.aspx?Yemekid=<%# Eval("Yemekid")  %>&amp;islem=sil'>
                            <asp:Image ID="Image2" runat="server" Height="32px" ImageUrl="~/icons/Delete.png" Width="32px" />
                            </a></td>
                        <td class="auto-style9"><a href='AdmYemekDetay.aspx?Yemekid=<%# Eval("Yemekid")  %>'>
                            <asp:Image ID="Image3" runat="server" Height="32px" ImageUrl="~/icons/Refresh.png" Width="32px" />
                            </a></td>
                        <td class="auto-style9"><a href='AdmYemekler.aspx?Yemekid=<%# Eval("Yemekid")  %>&islem=asdf'>
                            <asp:Image ID="Image4" runat="server" Height="32px" ImageUrl="~/icons/Favourites.png" Width="32px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
   <div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style12">
                    <strong>Yemek Ekle</strong></td>
                <td class="auto-style13">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style5" Font-Bold="True" Height="38px" Text="+" Width="48px" OnClick="Button3_Click"  />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style5" Font-Bold="True" Height="38px" Text="-" Width="48px" OnClick="Button4_Click" />
                </td>
            </tr>
        </table>
    </div>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style3">
            <tr>
                <td class="auto-style11">Yemek Adı:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Malzemesi:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Tarifi:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Resimi:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="25px" Width="250px" />
                </td>
            </tr>
            <tr>
                <td>Kategorisi:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="250px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <div style="float:left;">  <asp:Button ID="Button6" runat="server" Font-Bold="True" Font-Names="Century Gothic" Font-Size="18px" Height="50px" Text="Ekle" Width="100px" OnClick="Button6_Click" /></div>
                   
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

