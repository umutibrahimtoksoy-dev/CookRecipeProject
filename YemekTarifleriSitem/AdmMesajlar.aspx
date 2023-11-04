<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdmMesajlar.aspx.cs" Inherits="AdmMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 164px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            width: 173px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style4">
                    <strong class="newStyle2">Mesajlar</strong></td>
                <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style2" Font-Bold="True" Height="38px" Text="+" Width="48px" OnClick="Button1_Click" Font-Size="16px" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style5" Font-Bold="True" Height="38px" Text="-" Width="48px" OnClick="Button2_Click" Font-Size="16px" />
                </td>
            </tr>
        </table>
    </div>
     <asp:Panel ID="Panel1" runat="server">
         <div class="auto-style7">
             <table class="auto-style3">
                 <tr>
                     <td class="auto-style5" style="width: 180px">Konu</td>
                     <td class="auto-style5" style="width: 100px">Sil</td>
                     <td class="auto-style5">Detay</td>
                 </tr>
             </table>
         </div>
         <asp:DataList ID="DataList1" runat="server" Width="394px">
                 <ItemTemplate>
                     <table class="auto-style3">
                         <tr>
                             <td class="auto-style6">
                                 <asp:Label ID="Label1" runat="server" Text='<%# Eval("MesajBaslik") %>'></asp:Label>
                             </td>
                             <td class="auto-style8"><a href='AdmMesajDetay.aspx?Mesajid=<%# Eval("Mesajid")  %>&amp;islem=sil'>
                                 <asp:Image ID="Image2" runat="server" Height="32px" ImageUrl="~/icons/Delete.png" Width="32px" />
                                 </a></td>
                             <td class="auto-style8"><a href='AdmMesajDetay.aspx?Mesajid=<%# Eval("Mesajid")  %>'>
                                 <asp:Image ID="Image3" runat="server" Height="32px" ImageUrl="~/icons/Zoom.png" Width="32px" />
                                 </a></td>
                         </tr>
                     </table>
                 </ItemTemplate>
             </asp:DataList>
    <br />
</asp:Panel>
             
</asp:Content>

