<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdmHakkimizda.aspx.cs" Inherits="AdmHakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            font-size: large;
            width: 118px;
        }
        .auto-style5 {
            margin-bottom: 0px;
        }
        .auto-style6 {
            margin-left: 7px;
        }
        .auto-style7 {
            width: 91px;
        }
        .auto-style8 {
            width: 95px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style4"><strong>Hakkımızda</strong></td>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Font-Bold="True" Font-Size="16px" Height="38px" Text="+" Width="48px" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style5" Font-Bold="True" Font-Size="16px" Height="38px" Text="-" Width="48px" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
    </div>
   
    <asp:Panel ID="Panel1" runat="server">
         <table class="auto-style3">
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">Metin:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style6" Height="271px" TextMode="MultiLine" Width="283px"></asp:TextBox>
            </td>
        </tr>
             <tr>
                 <td class="auto-style8">&nbsp;</td>
                 <td>
                     <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Size="16px" Height="45px" OnClick="Button3_Click" Text="Güncelle" Width="133px" />
                 </td>
             </tr>
    </table>
    </asp:Panel>
</asp:Content>

