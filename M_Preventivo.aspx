﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="M_Preventivo.aspx.vb" Inherits="M_Preventivo" %>

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
                            <a href="javascript:history.back()">
                            <img alt="" src="Imagenes/icons/back_2.png" 
                                style="height: 64px; width: 64px;" /></a><center>Back</center></td>
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
                                            <a href="javascript:history.back()">
                                            <input id="Regresar" type="button" value="Regresar" />
                                            </a>
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
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataKeyNames="nombre_preventivo" DataSourceID="SqlDataSource1" 
                                ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="nombre_preventivo" HeaderText="nombre_preventivo" 
                                        ReadOnly="True" SortExpression="nombre_preventivo" />
                                    <asp:BoundField DataField="descripcion_0" HeaderText="descripcion_0" 
                                        SortExpression="descripcion_0" />
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:proyectoConnectionString %>" 
                                SelectCommand="SELECT [nombre_preventivo], [descripcion_0] FROM [mantenimiento_preventivo]">
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
    </p>
</asp:Content>

