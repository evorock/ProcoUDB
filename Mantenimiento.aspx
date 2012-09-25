<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Mantenimiento.aspx.vb" Inherits="Mantenimiento" %>

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
        .style27
        {
            height: 23px;
            width: 109px;
        }
        .style28
        {
            color: white;
        }
        .style29
        {
            height: 23px;
            color: white;
            width: 109px;
        }
        .style30
        {
            height: 23px;
            width: 208px;
        }
        .style31
        {
            width: 208px;
        }
        .style34
        {
            width: 109px;
        }
        .style35
        {
            height: 23px;
            width: 125px;
        }
        .style36
        {
            width: 125px;
        }
        .style37
        {
            width: 25px;
        }
        .style38
        {
            width: 11px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table style="width:100%;">
        <tr>
            <td bgcolor="#BB1818" class="style12">
                &nbsp;</td>
            <td bgcolor="White" class="style13">
                Mantenimiento</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style11">
               <center> <table style="width: 140px; margin-right: 0px;">
                    <tr>
                        <td class="style26">
                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/Imagenes/icons/64x64/add_to_database.png" />
                            <br />
                            Agregar</td>
                        <td class="style26">
                            <asp:ImageButton ID="ImageButton2" runat="server" 
                                ImageUrl="~/Imagenes/icons/64x64/search_database.png" />
                            <br />
                            Listado</td>
                    </tr>
                </table></center>
            </td>
        </tr>
        </table>
        
    <br />
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table style="width:100%;">
                <tr>
                    <td bgcolor="#BB1818" class="style37">
                        &nbsp;</td>
                    <td bgcolor="White" class="style13">
                        Programar Mantenimiento</td>
                </tr>
                <tr>
                    <td class="style37">
                        &nbsp;</td>
                    <td class="style11">
                        <table style="width:800px;">
                            <tr>
                                <td class="style29">
                                    nombre_departamento
                                </td>
                                <td class="style35">
                                    <asp:DropDownList ID="DropDownList6" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td class="style30">
                                    &nbsp;</td>
                            </tr>
                            <tr class="style28">
                                <td class="style27">
                                    &nbsp;nombre_laboratorio
                                </td>
                                <td class="style35">
                                    <asp:DropDownList ID="DropDownList7" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td class="style30">
                                    &nbsp;</td>
                            </tr>
                            <tr class="style28">
                                <td class="style34">
                                    Encargado</td>
                                <td class="style36">
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </td>
                                <td class="style31">
                                    &nbsp;</td>
                            </tr>
                            <tr class="style28">
                                <td class="style34">
                                    &nbsp;nombre_equipo
                                </td>
                                <td class="style36">
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                </td>
                                <td class="style31">
                                    &nbsp;</td>
                            </tr>
                            <tr class="style28">
                                <td class="style34">
                                    Tipo de Mantenimiento</td>
                                <td class="style36">
                                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                                        style="text-align: left">
                                        <asp:ListItem>Logico</asp:ListItem>
                                        <asp:ListItem>Preventivo</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                                <td class="style31">
                                    &nbsp;</td>
                            </tr>
                            <tr class="style28">
                                <td class="style34">
                                    nombre_logico</td>
                                <td class="style36">
                                    <asp:DropDownList ID="DropDownList8" runat="server" Height="16px">
                                    </asp:DropDownList>
                                </td>
                                <td class="style31">
                                    *Descripcion</td>
                            </tr>
                            <tr class="style28">
                                <td class="style34">
                                    &nbsp;nombre_preventivo
                                </td>
                                <td class="style36">
                                    <asp:DropDownList ID="DropDownList9" runat="server">
                                    </asp:DropDownList>
                                </td>
                                <td class="style31">
                                    *Descripcion</td>
                            </tr>
                            <tr class="style28">
                                <td class="style34">
                                    fecha</td>
                                <td class="style36">
                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                </td>
                                <td class="style31">
                                    <asp:ImageButton ID="ImageButton4" runat="server" Height="27px" 
                                        ImageUrl="~/Imagenes/icons/date.png" Width="29px" />
                                </td>
                            </tr>
                            <tr class="style28">
                                <td class="style34">
                                    estado</td>
                                <td class="style36">
                                    Pendiente</td>
                                <td class="style31">
                                    &nbsp;</td>
                            </tr>
                            <tr class="style28">
                                <td class="style34">
                                    &nbsp;</td>
                                <td class="style36">
                                    <asp:Button ID="Button3" runat="server" Text="Agregar" />
                                    <asp:Button ID="Button4" runat="server" Text="Regresar" />
                                </td>
                                <td class="style31">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <table style="width:800px;">
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table style="width:100%;">
                <tr>
                    <td bgcolor="#BB1818" class="style38">
                        &nbsp;</td>
                    <td bgcolor="White" class="style13">
                        Listado de Programacion
                    </td>
                </tr>
                <tr>
                    <td class="style38">
                        &nbsp;</td>
                    <td class="style11">
                        <table style="width: 932px;">
                            <tr>
                                <td>
                                    Lugar</td>
                                <td>
                                    Encargardo</td>
                                <td>
                                    Equipo</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    Estado</td>
                            </tr>
                            <tr>
                                <td>
                                    Departamenteo.Laboratorio</td>
                                <td>
                                    Nombre</td>
                                <td>
                                    PC/Laptoip</td>
                                <td>
                                    Ver mas detalles</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <br />
        </asp:View>
        <br />
        <br />
        <br />
        <br />
        <br />
    </asp:MultiView>
    <br />
    <br />

</asp:Content>

