<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="draftorcheck.aspx.cs" Inherits="user_draftorcheck" Title="through Drafts and cheques" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left">
        <table style="width: 606px; position: static; height: 100px" align="center">
            <head runat="server">
            <tr>
                <td style="width: 108px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 108px">
                    <asp:Label ID="Label7" runat="server" Style="position: static" Text="Your product will deliver to you between 4 to 7 business day"
                        Width="440px" Height="77px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 108px">
                    <asp:Label ID="Label8" runat="server" Style="position: static" Text="If you agree with our delivery condition please click on Agree button below"
                        Width="417px" Height="57px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="left" style="width: 108px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="position: static"
                        Text="Agree" Height="30px" Width="100px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Visible="False" Width="149px"></asp:TextBox>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" Visible="False" Width="151px"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="TextBox3" runat="server" Visible="False" Width="151px"></asp:TextBox>
                    <br />
                </td>
            </tr>
            </head>
        </table>
    </div>
</asp:Content>

