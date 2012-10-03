<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="laboratorio.aspx.vb" Inherits="laboratorio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
            width: 4px;
        }
        .style13
        {
            width: 201px;
            color: #CD7E30;
        }
        .style11
        {
            width: 201px;
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
        .style21
        {
            width: 251px;
        }
        .style22
        {
            width: 151px;
        }
        .style23
        {
            width: 250px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td bgcolor="#BB1818" class="style12">
                &nbsp;</td>
            <td bgcolor="White" class="style13">
                Laboratorios</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style11">
                <center><table style="width: 140px; margin-right: 0px;">
                    <tr>
                        <td>
                            <a href="javascript:history.back()">
                            <img alt="" src="Imagenes/icons/back_2.png" 
                                style="height: 64px; width: 64px;" /></a><center>Back</center></td>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/Imagenes/icons/64x64/add_home.png" />
                            <br />Agregar</td>
                        <td>
                            <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/Imagenes/icons/64x64/search_home.png" />
                            <br />Listado</td>
                    </tr>
                </table></center>
            </td>
        </tr>
        </table>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <table style="width:100%;">
                    <tr>
                        <td bgcolor="#BB1818" class="style12">
                            &nbsp;</td>
                        <td bgcolor="White" class="style13">
                            Agregar Laboratorio</td>
                    </tr>
                    <tr>
                        <td class="style12">
                            &nbsp;</td>
                        <td class="style11">
                            <center><table align="center" style="width: 300%;">
                                <tr>
                                    <td class="style18">
                                        Departamento de Laboratorio</td>
                                    <td class="style25">
                                        <asp:TextBox ID="TextBox5" runat="server" style="text-align: left"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ControlToValidate="TextBox5" ErrorMessage="*Requiere Nombre Completo" 
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style18">
                                        Nombre de Laboratorio</td>
                                    <td class="style25">
                                        <asp:TextBox ID="TextBox12" runat="server" style="text-align: left"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr class="style17">
                                    <td class="style24">
                                        &nbsp;</td>
                                    <td class="style25">
                                        <asp:Button ID="Button3" runat="server" Text="Agregar" />
                                        <a href="javascript:history.back()">
                                        <input id="Regresar" type="button" value="Regresar" />
                                        </a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table></center>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <table style="width:100%;">
                    <tr>
                        <td bgcolor="#BB1818" class="style12">
                            &nbsp;</td>
                        <td bgcolor="White" class="style13">
                            Lista de Laboratorios</td>
                    </tr>
                    <tr>
                        <td class="style12">
                            &nbsp;</td>
                        <td class="style11">
                            <center><table style="width: 832px; color: #FFFFFF;">
                                <tr>
                                    <td bgcolor="#FFCC00" class="style21">
                                        Nombre de Laboratorio</td>
                                    <td bgcolor="#FFCC00" class="style22">
                                        Departamento de Laboratorio</td>
                                    <td bgcolor="#FFCC00" class="style23">
                                        Encargado</td>
                                    <td bgcolor="#FFCC00">
                                        Accion</td>
                                </tr>
                                <tr>
                                    <td class="style21">
                                        &nbsp;</td>
                                    <td class="style22">
                                        &nbsp;</td>
                                    <td class="style23">
                                        &nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button9" runat="server" Text="Editar" />
                                        &nbsp;<asp:Button ID="Button10" runat="server" Text="Eliminar" />
                                    </td>
                                </tr>
                            </table>
                            </td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
    </asp:Content>

