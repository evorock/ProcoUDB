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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table style="width:100%;">
        <tr>
            <td bgcolor="#BB1818" class="style12">
                &nbsp;</td>
            <td bgcolor="White" class="style13">
                Equipos</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style11">
               <center> <table style="width: 140px; margin-right: 0px;">
                    <tr>
                        <td class="style26">
                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/Imagenes/icons/64x64/add_to_database.png" 
                                PostBackUrl="View1" />
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
            <table style="width:800px;">
                <tr>
                    <td class="style29">
                        nombre_departamento </td>
                    <td class="style35">
                    </td>
                    <td class="style30">
                    </td>
                </tr>
                <tr class="style28">
                    <td class="style27">
                        &nbsp;nombre_laboratorio </td>
                    <td class="style35">
                        </td>
                    <td class="style30">
                        </td>
                </tr>
                <tr class="style28">
                    <td class="style34">
                        &nbsp;nombre </td>
                    <td class="style36">
                        &nbsp;</td>
                    <td class="style31">
                        &nbsp;</td>
                </tr>
                <tr class="style28">
                    <td class="style34">
                        &nbsp;nombre_equipo </td>
                    <td class="style36">
                        &nbsp;</td>
                    <td class="style31">
                        &nbsp;</td>
                </tr>
                <tr class="style28">
                    <td class="style34">
                        nombre_logico</td>
                    <td class="style36">
                        &nbsp;</td>
                    <td class="style31">
                        &nbsp;</td>
                </tr>
                <tr class="style28">
                    <td class="style34">
                        &nbsp;nombre_preventivo </td>
                    <td class="style36">
                        &nbsp;</td>
                    <td class="style31">
                        &nbsp;</td>
                </tr>
                <tr class="style28">
                    <td class="style27">
                        &nbsp;tipo
                    </td>
                    <td class="style35">
                    </td>
                    <td class="style30">
                    </td>
                </tr>
                <tr class="style28">
                    <td class="style34">
                        &nbsp;</td>
                    <td class="style36">
                        &nbsp;</td>
                    <td class="style31">
                        &nbsp;</td>
                </tr>
                <tr class="style28">
                    <td class="style34">
                        &nbsp;</td>
                    <td class="style36">
                        &nbsp;</td>
                    <td class="style31">
                        &nbsp;</td>
                </tr>
                <tr class="style28">
                    <td class="style34">
                        &nbsp;</td>
                    <td class="style36">
                        &nbsp;</td>
                    <td class="style31">
                        &nbsp;</td>
                </tr>
                <tr class="style28">
                    <td class="style34">
                        &nbsp;</td>
                    <td class="style36">
                        &nbsp;</td>
                    <td class="style31">
                        &nbsp;</td>
                </tr>
                <tr class="style28">
                    <td class="style34">
                        &nbsp;</td>
                    <td class="style36">
                        &nbsp;</td>
                    <td class="style31">
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
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

