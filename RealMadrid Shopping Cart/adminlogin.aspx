<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" Title="Admin login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <td>
        <div style="aa: ;">
            
                <table style="width: 188px; position: static; height: 10px; margin-right: 0px;" align="left">
                    <tr>
                        <td align="left" colspan="2" class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Text="      Admin Login"></asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp; username&nbsp;<br />
                            &nbsp;<asp:TextBox ID="TextBox1" runat="server" Style="position: static" Height="37px" Width="163px"></asp:TextBox>
                        </td>
                        <td class="auto-style11"></td>
                    </tr>
                    <tr>
                        <td align="center" class="auto-style10">password&nbsp;<br />
&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" Style="position: static" TextMode="Password" Height="37px" Width="162px"></asp:TextBox>
                        </td>
                        <td class="auto-style11"></td>
                    </tr>
                    <tr>
                        <td align="left" colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="position: static"
                        Text="SignIn" Width="90px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                </table>
            </div>
        
    </td>
        </div>

</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style4 {
            height: 22px;
        }
        .auto-style5 {
            width: 389px;
        }
        .auto-style7 {
            height: 76px;
            width: 29px;
        }
        .auto-style8 {
            width: 193px;
        }
        .auto-style10 {
            height: 21px;
            width: 1453px;
        }
        .auto-style11 {
            height: 21px;
            width: 2160px;
        }
    </style>
</asp:Content>


