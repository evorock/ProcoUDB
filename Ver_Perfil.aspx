<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Ver_Perfil.aspx.vb" Inherits="Ver_Perfil" %>

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
        .style18
        {
            height: 23px;
            color: #FFFFFF;
            width: 121px;
        }
        .style25
        {
            width: 150px;
        }
        .style17
        {
            color: #FFFFFF;
        }
        .style24
        {
            width: 121px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;" __designer:mapid="5e7">
        <tr __designer:mapid="5e8">
            <td bgcolor="#BB1818" class="style12" __designer:mapid="5e9">
                            &nbsp;</td>
            <td bgcolor="White" class="style13" __designer:mapid="5ea">
                            Agregar Usuario</td>
        </tr>
        <tr __designer:mapid="5eb">
            <td class="style12" __designer:mapid="5ec">
                            &nbsp;</td>
            <td class="style11" __designer:mapid="5ed">
                <center __designer:mapid="5ee">
                    <table align="center" style="width: 300%;" 
                                    __designer:mapid="5ef">
                        <tr __designer:mapid="5f0">
                            <td class="style18" __designer:mapid="5f1">
                                        Nombre</td>
                            <td class="style25" __designer:mapid="5f2">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr __designer:mapid="5f6">
                            <td class="style18" __designer:mapid="5f7">
                                        Direccion</td>
                            <td class="style25" __designer:mapid="5f8">
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr __designer:mapid="5fb">
                            <td class="style18" __designer:mapid="5fc">
                                        Telefono</td>
                            <td class="style25" __designer:mapid="5fd">
                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr class="style17" __designer:mapid="601">
                            <td class="style24" __designer:mapid="602">
                                        Cargo</td>
                            <td class="style25" __designer:mapid="603">
                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr class="style17" __designer:mapid="606">
                            <td class="style24" __designer:mapid="607">
                                        Departamento a Administrar</td>
                            <td class="style25" __designer:mapid="608">
                                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr class="style17" __designer:mapid="60c">
                            <td class="style24" __designer:mapid="60d">
                                        Usuario</td>
                            <td class="style25" __designer:mapid="60e">
                                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr class="style17" __designer:mapid="618">
                            <td class="style24" __designer:mapid="619">
                                        &nbsp;</td>
                            <td class="style25" __designer:mapid="61a">
                                <asp:Button ID="Button3" runat="server" Text="Editar" />
                            </td>
                        </tr>
                    </table>
            </td>
        </tr>
    </table>
</asp:Content>

