<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Index.aspx.vb" Inherits="Index_" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style15
        {
            width: 311px;
        }
        .style16
        {
            width: 286px;
        }
    
        .style12
        {
            width: 286px;
            text-align: left;
        }
        .style14
        {
            background-color: #FF9933;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;" background="Imagenes/resources/Wall_2.png">
        <tr>
            <td>
                <center>
                    <br />
                    <table background="Imagenes/resources/Log.png" class="style15">
                        <tr>
                            <td class="style16">
                                <br />
                                <br />
                                <center><asp:Image ID="Image2" runat="server" Height="131px" 
                                ImageUrl="~/Imagenes/resources/Logo.png" Width="134px"/></center></td>
                        </tr>
                        <tr>
                            <td class="style12">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp; &nbsp; <strong>
                                <span class="style14">Username:</span></strong><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox1" runat="server" Width="190px"></asp:TextBox>
&nbsp;<br />
                                <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="style14">Password:</span></strong><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="191px"></asp:TextBox>
                                <br />
                                <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" />
                                <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton 
                                ID="ImageButton1" runat="server" Height="23px" 
                                ImageUrl="~/Imagenes/icons/loginbutton.png" Width="86px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style16">
                                <center>Lost your Password?</center>
                                <br />
                            </td>
                        </tr>
                    </table>
                </center>
            </td>
        </tr>
    </table>
</asp:Content>

