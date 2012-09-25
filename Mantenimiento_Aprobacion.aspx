<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style12
        {
            width: 2px;
        }
        .style13
        {
            width: 201px;
            color: #CD7E30;
        }
        .style11
        {
            width: 201px;
            color: #FFFFFF;
        }
        .style27
        {
            width: 304px;
        }
        .style28
        {
            width: 138px;
        }
        .style29
        {
            width: 91px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td bgcolor="#BB1818" class="style12">
                &nbsp;</td>
            <td bgcolor="White" class="style13">
                Aprobacion de Mantenimiento</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style11">
                        <table style="width: 932px;" __designer:mapid="52a">
                            <tr __designer:mapid="52b">
                                <td __designer:mapid="52c" class="style27">
                                    Lugar</td>
                                <td __designer:mapid="52d">
                                    Encargardo</td>
                                <td __designer:mapid="52e" class="style28">
                                    Equipo</td>
                                <td __designer:mapid="52f" class="style29">
                                    Detalles</td>
                                <td __designer:mapid="530">
                                    Estado</td>
                            </tr>
                            <tr __designer:mapid="531">
                                <td __designer:mapid="532" class="style27">
                                    Departamenteo.Laboratorio</td>
                                <td __designer:mapid="533">
                                    Nombre</td>
                                <td __designer:mapid="534" class="style28">
                                    PC/Laptoip</td>
                                <td __designer:mapid="535" class="style29">
                                    Ver </td>
                                <td __designer:mapid="536">
                                    <asp:Button ID="Button1" runat="server" Text="Aprobar" />
                                    <asp:Button ID="Button2" runat="server" Text="Denegar" />
                                </td>
                            </tr>
                            </table>
                    </td>
        </tr>
    </table>
</asp:Content>

