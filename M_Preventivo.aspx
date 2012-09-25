<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="M_Preventivo.aspx.vb" Inherits="M_Preventivo" %>

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
        .style26
        {
            width: 70px;
        }
        .style28
        {
            height: 23px;
            color: #FFFFFF;
            width: 165px;
        }
        .style35
        {
            width: 314px;
        }
        .style17
        {
            color: #FFFFFF;
        }
        .style29
        {
            width: 165px;
        }
        .style32
        {
            width: 175px;
        }
        .style34
        {
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td bgcolor="#BB1818" class="style12">
                &nbsp;</td>
            <td bgcolor="White" class="style13">
                Mantenimiento Preventivo</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style11">
                <center>
                    <table style="width: 140px; margin-right: 0px;">
                        <tr>
                            <td class="style26">
                                <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/Imagenes/icons/64x64/add_to_database.png" />
                                <br />Agregar</td>
                            <td class="style26">
                                <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/Imagenes/icons/64x64/search_database.png" />
                                <br />Listado</td>
                        </tr>
                    </table>
                </center>
            </td>
        </tr>
    </table>
    <p>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <table style="width:100%;">
                    <tr>
                        <td bgcolor="#BB1818" class="style12">
                            &nbsp;</td>
                        <td bgcolor="White" class="style13">
                            Agregar Mantenimiento Preventivo</td>
                    </tr>
                    <tr>
                        <td class="style12">
                            &nbsp;</td>
                        <td class="style11">
                            <center>
                                <table align="center" style="width: 300%;">
                                    <tr>
                                        <td class="style28">
                                            Nombre de Tarea</td>
                                        <td class="style35">
                                            <asp:TextBox ID="TextBox5" runat="server" style="text-align: left" 
                                                Width="222px"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style28">
                                            Descripcion</td>
                                        <td class="style35">
                                            <asp:TextBox ID="TextBox6" runat="server" Height="48px" 
                                                style="text-align: left" TextMode="MultiLine" Width="224px"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr class="style17">
                                        <td class="style29">
                                        &nbsp;</td>
                                        <td class="style35">
                                            <asp:Button ID="Button3" runat="server" Text="Agregar" />
                                            <asp:Button ID="Button4" runat="server" Text="Regresar" />
                                        </td>
                                    </tr>
                                </table>
                        </td>
                    </tr>
                </table>
                </center>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <table style="width:100%;">
                    <tr>
                        <td bgcolor="#BB1818" class="style12">
                            &nbsp;</td>
                        <td bgcolor="White" class="style13">
                            Lista de Mantenimiento Preventivo</td>
                    </tr>
                    <tr>
                        <td class="style12">
                            &nbsp;</td>
                        <td class="style11">
                            <center>
                                <table style="width: 832px;">
                                    <tr>
                                        <td bgcolor="#FFCC00" class="style32">
                                        Nombre</td>
                                        <td bgcolor="#FFCC00" class="style25">
                                            DescripcionLaboratorio</td>
                                        <td bgcolor="#FFCC00" class="style34">
                                        Accion</td>
                                    </tr>
                                    <tr>
                                        <td class="style32">
                                        &nbsp;</td>
                                        <td class="style25">
                                        &nbsp;</td>
                                        <td class="style34">
                                            <asp:Button ID="Button9" runat="server" Text="Editar" />
                                        &nbsp;<asp:Button ID="Button10" runat="server" Text="Eliminar" />
                                        </td>
                                    </tr>
                                </table>
                            </center>
                        </td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
    </p>
</asp:Content>

