<%@ Page Title="" Language="C#" MasterPageFile="~/Real madrid/Admin/MasterPage3.master" AutoEventWireup="true" CodeFile="AddMatch.aspx.cs" Inherits="Real_madrid_Admin_AddMatch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 1198px; position: static; height: 548px; background-image: url('../extra%20images/kxZp7X.jpg');" align="center">
            
            <tr>
                <td colspan="3" class="auto-style54">
                    <strong>Add Match Details</strong></td>
            </tr>

            <tr>
                <td class="auto-style55" style="height: 26px">
                    Select Tournament type :</td>
                <td align="left" valign="top" class="auto-style45" style="height: 26px; width: 315px;">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        Style="position: static" Height="44px" Width="91px" DataSourceID="SqlDataSource1" DataTextField="tournament" DataValueField="tournament">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [tournament] FROM [tbl_tournament]"></asp:SqlDataSource>
                </td>
                <td class="auto-style45" style="height: 26px">
                </td>
            </tr>
            <tr>
                <td colspan="3" class="auto-style46">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style56">
                    Team:</td>
                <td align="left" valign="top" class="auto-style47" style="width: 315px">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                        Style="position: static" Height="44px" Width="91px" DataSourceID="SqlDataSource2" DataTextField="myteam" DataValueField="myteam">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [myteam] FROM [tbl_myteam]"></asp:SqlDataSource>
                </td>
                <td class="auto-style47">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style56" style="height: 73px">
                    Opposition Team:</td>
                <td align="left" valign="top" class="auto-style47" style="width: 315px; height: 73px;">
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="oppositionteam" DataValueField="oppositionteam">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [oppositionteam] FROM [tbl_oppositionteam]"></asp:SqlDataSource>
                </td>
                <td class="auto-style47" style="height: 73px">
                </td>
            </tr>
            <tr>
                <td class="auto-style55" style="height: 26px">
                     Result:</td>
                <td align="left" valign="top" class="auto-style45" style="width: 315px; height: 26px;">
                    <asp:DropDownList ID="DropDownList4" runat="server">
                        <asp:ListItem>Won</asp:ListItem>
                        <asp:ListItem>Draw</asp:ListItem>
                        <asp:ListItem>Lost</asp:ListItem>
                    </asp:DropDownList>
                    --</td>
                <td class="auto-style45" style="height: 26px">
                </td>
            </tr>
            <tr>
                <td class="auto-style55" style="height: 41px">
                     Match Date:</td>
                <td align="left" valign="top" class="auto-style45" style="width: 315px; height: 41px;">
                    <asp:DropDownList ID="DropDownList5" runat="server" >
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList6" runat="server">
                        <asp:ListItem>January</asp:ListItem>
                        <asp:ListItem>February</asp:ListItem>
                        <asp:ListItem>March</asp:ListItem>
                        <asp:ListItem>April</asp:ListItem>
                        <asp:ListItem>May</asp:ListItem>
                        <asp:ListItem>June</asp:ListItem>
                        <asp:ListItem>July</asp:ListItem>
                        <asp:ListItem>August</asp:ListItem>
                        <asp:ListItem>Septemder</asp:ListItem>
                        <asp:ListItem>October</asp:ListItem>
                        <asp:ListItem>November</asp:ListItem>
                        <asp:ListItem>December</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList7" runat="server">
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style45" style="height: 41px">
                    </td>
            </tr>
            <tr>
                <td class="auto-style58" style="height: 43px">
                    Score (RM - OT):</td>
                <td align="left" valign="top" class="auto-style52" style="width: 315px; height: 43px;">
                    <asp:DropDownList ID="DropDownList8" runat="server">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                    --<asp:DropDownList ID="DropDownList9" runat="server">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style52" style="height: 43px">
                </td>
            </tr>
            <tr>
                <td class="auto-style58" style="height: 41px">
                    Penalties&nbsp; (RM - OT):</td>
                <td align="left" valign="top" class="auto-style52" style="width: 315px; height: 41px;">
                    <asp:DropDownList ID="DropDownList10" runat="server">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    --<asp:DropDownList ID="DropDownList11" runat="server">
                        <asp:ListItem>0</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style52" style="height: 41px">
                </td>
            </tr>
            <tr>
                <td class="auto-style58" style="height: 44px">
                    City:</td>
                <td align="left" valign="top" class="auto-style52" style="width: 315px; height: 44px;">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox1" ErrorMessage="* City must be in Character" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style52" style="height: 44px">
                    </td>
            </tr>
             <tr>
                <td class="auto-style58" style="height: 52px" >
                    Referee:</td>
                <td align="left" valign="top" class="auto-style45" style="width: 315px; height: 52px;">
                    <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="132px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="TextBox2" ErrorMessage="* City must be in Character" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
                 </td>
                <td class="auto-style52" style="height: 52px">
                    </td>
            </tr>
             <tr>
                <td class="auto-style58" style="height: 44px">
                    Stadium:</td>
                <td align="left" valign="top" class="auto-style45" style="width: 315px; height: 44px;">
                    <asp:TextBox ID="TextBox3" runat="server" Height="28px" Width="134px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="TextBox3" ErrorMessage="* City must be in Character" ValidationExpression="[a-zA-Z ]*$"></asp:RegularExpressionValidator>
                 </td>
                <td class="auto-style52" style="height: 44px">
                    </td>
            </tr>
             <tr>
                <td class="auto-style58" style="height: 48px" >
                    Attendance:</td>
                <td align="left" valign="top" class="auto-style45" style="width: 315px; height: 48px;">
                    <asp:TextBox ID="TextBox4" runat="server" Height="26px" Width="138px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="TextBox4" ErrorMessage="* City must be integer" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                 </td>
                <td class="auto-style52" style="height: 48px">
                    </td>
            </tr>
             <tr>
                <td class="auto-style58" style="height: 40px" >
                    Goal Scorers (Real Madrid):</td>
                <td align="left" valign="top" class="auto-style45" style="width: 315px; height: 40px;">
                    <asp:TextBox ID="TextBox5" runat="server" Height="24px" Width="138px"></asp:TextBox>
                 </td>
                <td class="auto-style52" style="height: 40px">
                    </td>
            </tr>
             <tr>
                <td class="auto-style58" style="height: 47px" >
                    Goal Scorers(Opposition Team):</td>
                <td align="left" valign="top" class="auto-style45" style="width: 315px; height: 47px;">
                    <asp:TextBox ID="TextBox6" runat="server" Height="27px" Width="141px"></asp:TextBox>
                 </td>
                <td class="auto-style52" style="height: 47px">
                    </td>
            </tr>
             <tr>
                <td class="auto-style58" style="height: 52px" >
                    Yellow Card(Real Madrid):</td>
                <td align="left" valign="top" class="auto-style45" style="width: 315px; height: 52px;">
                    <asp:TextBox ID="TextBox7" runat="server" Height="27px" Width="140px"></asp:TextBox>
                 </td>
                <td class="auto-style52" style="height: 52px">
                    </td>
            </tr>
            <tr>
                <td align="left" valign="top" class="auto-style59" style="height: 54px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Yellow Card(Opposition Team):</td>
                <td align="left" valign="top" class="auto-style51" style="width: 315px; height: 54px;">
                    <asp:TextBox ID="TextBox8" runat="server" Height="27px" Width="132px"></asp:TextBox>
                </td>
                <td class="auto-style51" style="height: 54px">
                </td>
            </tr>
            <tr>
                <td align="left" valign="top" class="auto-style59" style="height: 50px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Red Card(Real Madrid)</td>
                <td align="left" valign="top" class="auto-style51" style="width: 315px; height: 50px;">
                    <asp:TextBox ID="TextBox9" runat="server" Height="29px" Width="134px"></asp:TextBox>
                </td>
                <td class="auto-style51" style="height: 50px">
                    </td>
            </tr>
            <tr>
                <td align="left" valign="top" class="auto-style59">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Red Card(Opposition Team)</td>
                <td align="left" valign="top" class="auto-style51" style="width: 315px">
                    <asp:TextBox ID="TextBox10" runat="server" Height="32px" Width="135px"></asp:TextBox>
                </td>
                <td class="auto-style51">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="left" valign="top" class="auto-style59">
                    &nbsp;</td>
                <td align="left" valign="top" class="auto-style51" style="width: 315px">
                    &nbsp;</td>
                <td class="auto-style51">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style60">
                    <asp:Label ID="Label1" runat="server" Style="position: static" Width="232px"></asp:Label>
                </td>
                <td align="left" style="width: 315px" valign="top">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Style="position: static"
                        Text="Add.." OnClick="Button1_Click" Height="38px" Width="103px" /></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    </td>
            </tr>
            <tr>
                <td colspan="3">
                </td>
            </tr>
            <tr>
                <td colspan="3">
                </td>
            </tr>
                        </table>
    </div>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style45 {
        width: 100px;
        height: 57px;
    }
    .auto-style46 {
        height: 42px;
    }
    .auto-style47 {
        width: 100px;
        height: 46px;
    }
    .auto-style51 {
        width: 100px;
        height: 72px;
    }
    .auto-style52 {
        width: 100px;
        height: 56px;
    }
    .auto-style53 {
        width: 100px;
        height: 55px;
    }
    .auto-style54 {
        height: 49px;
    }
    .auto-style55 {
        width: 129px;
        height: 57px;
    }
    .auto-style56 {
        width: 129px;
        height: 46px;
    }
    .auto-style57 {
        width: 129px;
        height: 55px;
    }
    .auto-style58 {
        width: 129px;
        height: 56px;
    }
    .auto-style59 {
        width: 129px;
        height: 72px;
    }
    .auto-style60 {
        width: 129px;
    }
</style>
</asp:Content>
